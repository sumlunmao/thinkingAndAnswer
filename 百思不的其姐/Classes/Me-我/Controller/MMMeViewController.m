//
//  MMMeViewController.m
//  百思不的其姐
//
//  Created by tusm on 16/7/16.
//  Copyright © 2016年 tusm. All rights reserved.
//

#import "MMMeViewController.h"

@interface MMMeViewController ()

@end

@implementation MMMeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 设置导航栏标题
    self.navigationItem.title = @"我的";
    
    // 设置导航栏右边的按钮
    UIBarButtonItem *settingItem = [UIBarButtonItem itemWithImage:@"mine-setting-icon" highImage:@"mine-setting-icon-click" target:self action:@selector(settingClick)];
    
    UIBarButtonItem *moonItem = [UIBarButtonItem itemWithImage:@"mine-moon-icon" highImage:@"min-moon-icon-click" target:self action:@selector(moonClick)];
    
    self.navigationItem.rightBarButtonItems = @[settingItem,moonItem];
    
    // 设置背景颜色
    self.view.backgroundColor = MMGlobalBg;
    
}

- (void)settingClick{
    MMLogFunc;
}

- (void)moonClick{
    MMLogFunc;
}




@end
