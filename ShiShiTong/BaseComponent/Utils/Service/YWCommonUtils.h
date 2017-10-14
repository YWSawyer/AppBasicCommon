//
//  YWCommonUtils.h
//  ShiShiTong
//
//  Created by wei.yuan on 14/10/2017.
//  Copyright © 2017 dahuoshi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface YWCommonUtils : NSObject


/**
 屏幕适配宽度比例
 
 @return 宽度比例因子
 */
+ (CGFloat)widthScale;


//是否为测试环境
+ (BOOL)isTestEnvironment;

//获取网络请求的地址
+ (NSString *)domainName;

/**
 获取网络请求路径地址
 
 @return 子地址
 */
+(NSString *)apiPath;
@end
