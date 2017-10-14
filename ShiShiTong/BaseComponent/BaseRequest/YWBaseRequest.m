//
//  YWBaseRequest.m
//  ShiShiTong
//
//  Created by wei.yuan on 14/10/2017.
//  Copyright © 2017 dahuoshi. All rights reserved.
//

#import "YWBaseRequest.h"

@implementation YWBaseRequest

+ (void)initialize {
    [super initialize];
    [self configNetwork];
}

+ (void)configNetwork {
    
    [YTKNetworkConfig sharedConfig].baseUrl = API_HOST_APP;
}
@end
