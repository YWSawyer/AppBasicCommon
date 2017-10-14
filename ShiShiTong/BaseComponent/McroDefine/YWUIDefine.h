//
//  YWUIDefine.h
//  ShiShiTong
//
//  Created by wei.yuan on 14/10/2017.
//  Copyright © 2017 dahuoshi. All rights reserved.
//

#ifndef YWUIDefine_h
#define YWUIDefine_h

#pragma mark- Screen
/************************屏幕尺寸相关****************************/
#define kScreen_width   ([UIScreen mainScreen].bounds.size.width)
#define kScreen_height  ([UIScreen mainScreen].bounds.size.height)

//tabBar 高度
#define kTabBarHeight (kScreen_height>736?83:49.0)

//navBar 高度
#define kNavBarHeight (kScreen_height>736?88.0:64.0)

//为当前UI参照设备的宽
#define kUIDesignWidth   375.0

//当前屏幕宽度适配因子
#define kAutoSizeScaleX ([AppUtil widthScale])

#pragma mark- Color
/************************颜色相关****************************/
#define Color333333 [UIColor colorWithHexString:@"333333"]
#define Color666666 [UIColor colorWithHexString:@"666666"]
#define Color999999 [UIColor colorWithHexString:@"999999"]
#define Colore6e6e6 [UIColor colorWithHexString:@"e6e6e6"]
#define Color303030 [UIColor colorWithHexString:@"303030"]
#define Colordddddd [UIColor colorWithHexString:@"dddddd"]
#define Colorf1f1f1 [UIColor colorWithHexString:@"f1f1f1"]
#define Colorf2f2f2 [UIColor colorWithHexString:@"f2f2f2"]
#define Colorf3f3f3 [UIColor colorWithHexString:@"f3f3f3"]
#define Color4875dc [UIColor colorWithHexString:@"4875dc"]
#define Colorffffff [UIColor colorWithHexString:@"ffffff"]
#define Colorbbbbbb [UIColor colorWithHexString:@"bbbbbb"]
//主题颜色
#define THEME_COLOR [UIColor colorWithHexString:@"55a0ff"]
#define TABVIEW_BG_COLOR [UIColor colorWithHexString:@"efeff4"]
#define LINECOLOR [UIColor colorWithHexString:@"b9c1cc"]

#pragma mark- Font
/************************字体相关****************************/
#define Font8  [UIFont systemFontOfSize:8]
#define Font9  [UIFont systemFontOfSize:9]
#define Font10  [UIFont systemFontOfSize:10]
#define Font11  [UIFont systemFontOfSize:11]
#define Font12  [UIFont systemFontOfSize:12]
#define Font13  [UIFont systemFontOfSize:13]
#define Font14  [UIFont systemFontOfSize:14]
#define Font15  [UIFont systemFontOfSize:15]
#define Font16  [UIFont systemFontOfSize:16]
#define Font17  [UIFont systemFontOfSize:17]
#define Font18  [UIFont systemFontOfSize:18]
#define Font22  [UIFont systemFontOfSize:22]
#define Font23  [UIFont systemFontOfSize:23]
#define Font24  [UIFont systemFontOfSize:24]
#define Font40  [UIFont systemFontOfSize:40]

#define Font8_S   [UIFont systemFontOfSize:8*kAutoSizeScaleX]
#define Font9_S   [UIFont systemFontOfSize:9*kAutoSizeScaleX]
#define Font10_S  [UIFont systemFontOfSize:10*kAutoSizeScaleX]
#define Font11_S  [UIFont systemFontOfSize:11*kAutoSizeScaleX]
#define Font12_S  [UIFont systemFontOfSize:12*kAutoSizeScaleX]
#define Font13_S  [UIFont systemFontOfSize:13*kAutoSizeScaleX]
#define Font14_S  [UIFont systemFontOfSize:14*kAutoSizeScaleX]
#define Font15_S  [UIFont systemFontOfSize:15*kAutoSizeScaleX]
#define Font16_S  [UIFont systemFontOfSize:16*kAutoSizeScaleX]
#define Font17_S  [UIFont systemFontOfSize:17*kAutoSizeScaleX]
#define Font18_S  [UIFont systemFontOfSize:18*kAutoSizeScaleX]
#define Font22_S  [UIFont systemFontOfSize:22*kAutoSizeScaleX]
#define Font23_S  [UIFont systemFontOfSize:23*kAutoSizeScaleX]
#define Font24_S  [UIFont systemFontOfSize:24*kAutoSizeScaleX]
#define Font40_S  [UIFont systemFontOfSize:40*kAutoSizeScaleX]
#define Font43_S  [UIFont systemFontOfSize:43*kAutoSizeScaleX]

#pragma mark- Image
/************************图片相关****************************/
//图片尺寸拉伸
#define kStretchImage(name)   [UIImage resizedImageWithName:name left:0.5 top:0]

#endif /* YWUIDefine_h */
