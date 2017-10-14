//
//  YWBaseController.m
//  ShiShiTong
//
//  Created by dahuoshi on 13/10/2017.
//  Copyright © 2017 dahuoshi. All rights reserved.
//

#import "YWBaseController.h"

@interface YWBaseController ()

@end

@implementation YWBaseController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationController.navigationBar.translucent = NO;
    
    [self configuration];
    
    [self addUI];
    
    [self fetchData];
}

/**
 场景中的模块配置
 */
- (void)configuration {
    
}

/**
 将模块中的view添加到场景
 */
- (void)addUI {
    
}


/**
 获取场景中需要的数据
 */
- (void)fetchData {
    
}

- (CGFloat)viewOffsetY
{
    if (self.navigationController.navigationBar.translucent) {
        CGSize statusBarSize = [UIApplication sharedApplication].statusBarFrame.size;
        return MIN(statusBarSize.width, statusBarSize.height) + self.navigationController.navigationBar.frame.size.height;
    }
    return 0.f;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
