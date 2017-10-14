//
//  YWNavBaseController.m
//  ShiShiTong
//
//  Created by dahuoshi on 13/10/2017.
//  Copyright © 2017 dahuoshi. All rights reserved.
//

#import "YWNavBaseController.h"

@interface YWNavBaseController ()

@end

@implementation YWNavBaseController


/**
 *  第一次使用这个类的时候会调用(1个类只会调用1次)
 */
+ (void)initialize {
    
    // 1.设置导航栏主题
//    [self setupNavBarTheme];
    
    // 2.设置导航栏按钮主题
//    [self setupBarButtonItemTheme];
    
}

/**
 *  设置导航栏主题
 */
+ (void)setupNavBarTheme
{

    //.在Info.plist里面添加一行View controller-based status bar appearance ＝ NO 所以下行代码无用了。
    // [UIApplication sharedApplication].statusBarStyle = UIStatusBarStyleLightContent;
    
    // 1.appearance方法返回一个导航栏的外观对象
    // 修改了这个外观对象，相当于修改了整个项目中的外观
    UINavigationBar *bar = [UINavigationBar appearance];
    // 2.设置导航栏的背景图片
    //2.1修改导航栏系统返回箭头图片
    bar.backIndicatorImage = [UIImage imageNamed:@"nav_backItem_white"];
    bar.backIndicatorTransitionMaskImage = [UIImage imageNamed:@"nav_backItem_white"];
    //2.2设置shadowImage
    [bar setBarStyle:UIBarStyleBlackTranslucent];
    bar.shadowImage = [[UIImage alloc] init];
    //2.3设置导航栏颜色
    [bar setTintColor:[UIColor whiteColor]];
    [bar setBarTintColor:[UIColor whiteColor]];
    // 3.设置导航栏文字的主题
    [bar setTitleTextAttributes:@{
                                  NSFontAttributeName : @"",
                                  NSForegroundColorAttributeName : [UIColor whiteColor]
                                  }];
    //4.设置背景图片
    [bar setBackgroundImage:[UIImage imageNamed:@"nav_backItem_white"] forBarMetrics:UIBarMetricsDefault];
    
}

/**
 *  设置导航栏按钮主题
 */
+ (void)setupBarButtonItemTheme
{
    UIBarButtonItem *item = [UIBarButtonItem appearance];
    
    // 设置文字属性
    NSMutableDictionary *textAttrs = [NSMutableDictionary dictionary];
    textAttrs[NSForegroundColorAttributeName] = [UIColor whiteColor];
    textAttrs[NSFontAttributeName] = [UIFont systemFontOfSize: 15];
    [item setTitleTextAttributes:textAttrs forState:UIControlStateNormal];
    [item setTitleTextAttributes:textAttrs forState:UIControlStateHighlighted];
    
    NSMutableDictionary *disableTextAttrs = [NSMutableDictionary dictionary];
    disableTextAttrs[NSForegroundColorAttributeName] =  [UIColor whiteColor];
    [item setTitleTextAttributes:disableTextAttrs forState:UIControlStateDisabled];
}

- (void)viewDidLoad {
    [super viewDidLoad];
   
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    [viewController.navigationItem.backBarButtonItem setTitleTextAttributes:@{NSFontAttributeName : [UIFont systemFontOfSize:10]} forState:UIControlStateNormal];
    if (self.childViewControllers.count > 0) {
        viewController.hidesBottomBarWhenPushed = YES;
    }
    [super pushViewController:viewController animated:YES];
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
