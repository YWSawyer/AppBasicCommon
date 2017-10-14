//
//  YWCommonUtils.m
//  ShiShiTong
//
//  Created by wei.yuan on 14/10/2017.
//  Copyright © 2017 dahuoshi. All rights reserved.
//

#import "YWCommonUtils.h"

@implementation YWCommonUtils


/**
 屏幕适配宽度比例

 @return 宽度比例因子
 */
+ (CGFloat)widthScale {
    
    if (kScreen_width != kUIDesignWidth) {
        return kScreen_width / kUIDesignWidth;
    }
    else
    {
        return 1;
    }
}

//是否为测试环境
+ (BOOL)isTestEnvironment
{
#if DEBUG
    return YES;
#else
    return NO;
#endif
}


//获取网络请求的地址
+ (NSString *)domainName
{
    NSString *host = nil;
    //测试环境
    if ([self isTestEnvironment]) {
        host = GetUserDefault(kDebugModeHost);
        if (host == nil) {
            host = PATH_FOR_ONLINE_DEV_TEST;
            SetUserDefault(PATH_FOR_ONLINE_DEV_TEST, kDebugModeHost);
        }
    }else
    {
        host = GetUserDefault(kProductionModeHost);
        if (host == nil) {
            if ([HTTP_PATH_FOR_PRODUCTION isEqualToString:@"APPSTORE"]) {
                host = PATH_FOR_ONLINE_RELEASE;
                SetUserDefault(PATH_FOR_ONLINE_RELEASE, kProductionModeHost);
            }else if([HTTP_PATH_FOR_PRODUCTION isEqualToString:@"DEV_TEST"]){
                host = PATH_FOR_ONLINE_DEV_TEST;
                SetUserDefault(PATH_FOR_ONLINE_DEV_TEST, kProductionModeHost);
            }else if([HTTP_PATH_FOR_PRODUCTION isEqualToString:@"INTERNAL_TEST"]){
                host = PATH_FOR_ONLINE_INTERNAL_TEST;
                SetUserDefault(PATH_FOR_ONLINE_INTERNAL_TEST, kProductionModeHost);
            }else{
                host = PATH_FOR_ONLINE_RELEASE;
                SetUserDefault(PATH_FOR_ONLINE_RELEASE, kProductionModeHost);
            }
            [[NSUserDefaults standardUserDefaults]synchronize];
        }
    }
    return host;
    
}


/**
 获取网络请求lu'jing地址

 @return 子地址
 */
+ (NSString *)apiPath {
    return HOST_SUBPATH;
}
@end
