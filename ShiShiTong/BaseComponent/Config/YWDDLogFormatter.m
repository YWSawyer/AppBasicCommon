//
//  YWDDLogFormatter.m
//  ShiShiTong
//
//  Created by wei.yuan on 14/10/2017.
//  Copyright © 2017 dahuoshi. All rights reserved.
//

#import "YWDDLogFormatter.h"

#define DATE_STRING @"HH:mm:ss:SS"

#import <libkern/OSAtomic.h>
@interface YWDDLogFormatter(){
    int atomicLoggerCount;
    NSDateFormatter *threadUnsafeDateFormatter;
}
@end

@implementation YWDDLogFormatter
+(instancetype)sharedInstance{
    static YWDDLogFormatter *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}


- (id)init {
    if((self = [super init])) {
        threadUnsafeDateFormatter = [[NSDateFormatter alloc] init];
        [threadUnsafeDateFormatter setDateFormat:DATE_STRING];
    }
    return self;
}


- (NSString *)formatLogMessage:(DDLogMessage *)logMessage {
    NSString *logLevel;
    switch (logMessage->_flag) {
        case DDLogFlagError    : logLevel = @"E"; break;
        case DDLogFlagWarning  : logLevel = @"W"; break;
        case DDLogFlagInfo     : logLevel = @"I"; break;
        case DDLogFlagDebug    : logLevel = @"D"; break;
        default                : logLevel = @"V"; break;
    }
    
    NSString *dateAndTime = [threadUnsafeDateFormatter stringFromDate:(logMessage->_timestamp)];
    NSString *logMsg = logMessage->_message;
    
    return [NSString stringWithFormat:@"%@ %@ | %@", logLevel, dateAndTime, logMsg];
}

- (NSString *)stringFromDate:(NSDate *)date {
    int32_t loggerCount = OSAtomicAdd32(0, &atomicLoggerCount);
    
    if (loggerCount <= 1) {
        // Single-threaded mode.
        if (threadUnsafeDateFormatter == nil) {
            threadUnsafeDateFormatter = [[NSDateFormatter alloc] init];
            [threadUnsafeDateFormatter setDateFormat:DATE_STRING];
        }
        
        return [threadUnsafeDateFormatter stringFromDate:date];
    } else {
        // Multi-threaded mode.
        // NSDateFormatter is NOT thread-safe.
        
        NSString *key = @"MyCustomFormatter_NSDateFormatter";
        
        NSMutableDictionary *threadDictionary = [[NSThread currentThread] threadDictionary];
        NSDateFormatter *dateFormatter = [threadDictionary objectForKey:key];
        
        if (dateFormatter == nil) {
            dateFormatter = [[NSDateFormatter alloc] init];
            [dateFormatter setDateFormat:DATE_STRING];
            [threadDictionary setObject:dateFormatter forKey:key];
        }
        
        return [dateFormatter stringFromDate:date];
    }
}

- (void)didAddToLogger:(id <DDLogger>)logger {
    OSAtomicIncrement32(&atomicLoggerCount);
}

- (void)willRemoveFromLogger:(id <DDLogger>)logger {
    OSAtomicDecrement32(&atomicLoggerCount);
}

@end
