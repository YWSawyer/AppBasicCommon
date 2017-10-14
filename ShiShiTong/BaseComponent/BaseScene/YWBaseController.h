//
//  YWBaseController.h
//  ShiShiTong
//
//  Created by dahuoshi on 13/10/2017.
//  Copyright © 2017 dahuoshi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface YWBaseController : HYBHelperKitBaseController

/**
 场景中的模块配置
 */
- (void)configuration;

/**
 将模块中的view添加到场景
 */
- (void)addUI;

/**
 获取场景中需要的数据
 */
- (void)fetchData;

@end
