//
//  YWCommonDefine.h
//  ShiShiTong
//
//  Created by wei.yuan on 14/10/2017.
//  Copyright © 2017 dahuoshi. All rights reserved.
//

#ifndef YWCommonDefine_h
#define YWCommonDefine_h


#define GetUserDefault(key) [[NSUserDefaults standardUserDefaults] objectForKey:key]

#define SetUserDefault(value,key) [[NSUserDefaults standardUserDefaults] setObject:value forKey:key];\
[[NSUserDefaults standardUserDefaults] synchronize]

#define URLWithStr(urlStr) [NSURL URLWithString:urlStr]

#define kDebugModeHost                             @"debug_mode_host"

#define kProductionModeHost                        @"production_mode_host"

#define isDebugEnvironment                         [YWCommonUtils isTestEnvironment]

#endif /* YWCommonDefine_h */
