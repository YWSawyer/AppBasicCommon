//
//  AppDelegate+YWConfig.m
//  ShiShiTong
//
//  Created by wei.yuan on 14/10/2017.
//  Copyright © 2017 dahuoshi. All rights reserved.
//

#import "AppDelegate+YWConfig.h"
#import "YWDDLogFormatter.h"

@implementation AppDelegate (YWConfig)

- (void)configDDLog {
    
    [DDLog addLogger:[DDTTYLogger sharedInstance]];// 初始化DDLog日志输出
    [[DDTTYLogger sharedInstance] setColorsEnabled:YES];// 启用颜色区分
    [DDTTYLogger sharedInstance].logFormatter = [YWDDLogFormatter sharedInstance];
    
    [[DDTTYLogger sharedInstance] setForegroundColor:[UIColor grayColor] backgroundColor:nil forFlag:DDLogFlagVerbose];
    
    [[DDTTYLogger sharedInstance] setForegroundColor:[UIColor greenColor] backgroundColor:nil forFlag:DDLogFlagDebug];
    
    DDLogError(@"DDLogError");      // red
    DDLogWarn(@"DDLogWarn");        // orange
    DDLogDebug(@"DDLogDebug");      // green
    DDLogInfo(@"DDLogInfo");        // pink
    DDLogVerbose(@"DDLogVerbose");  // gray
    
}

@end
