//
//  MMNavigationController.m
//  百思不的其姐
//
//  Created by tusm on 16/7/17.
//  Copyright © 2016年 tusm. All rights reserved.
//

#import "MMNavigationController.h"

@interface MMNavigationController ()

@end

@implementation MMNavigationController

// 当一次使用这个类的时候才会调用
+ (void)initialize{
    // 当导航栏用在MMNavigationController中，appearance设置才会生效
    UINavigationBar *bar = [UINavigationBar appearance];
    [bar setBackgroundImage:[UIImage imageNamed:@"navigationbarBackgroundWhite"] forBarMetrics:UIBarMetricsDefault];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

// 可以在这个方法中拦截所有push尽量的控制器
- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
    
    // 如果push进来的不是第一个控制器
    if (self.childViewControllers.count > 0) {
        
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        
        [button setTitle:@"返回" forState:UIControlStateNormal];
        
        [button setImage:[UIImage imageNamed:@"navigationButtonReturn"] forState:UIControlStateNormal];
        
        [button setImage:[UIImage imageNamed:@"navigationButtonReturnClick"] forState:UIControlStateHighlighted];
        
        button.size = CGSizeMake(70, 30);
        
        // 让按钮内部的所有内容左对齐
        button.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        
        // 让按钮的内容往左边偏移10
        button.contentEdgeInsets = UIEdgeInsetsMake(0, -10, 0, 0);
        
        [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        
        [button setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
        
        [button addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
        
        // 修改导航栏左边的item
        viewController.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:button];
        
        // push的时候隐藏tabbar
        viewController.hidesBottomBarWhenPushed = YES;
        
        // 这句super的push要放后面，让viewController可以覆盖上面设置的leftBarButtonItem
        [super pushViewController:viewController animated:animated];
    }
    
}

- (void)back{
    [self popViewControllerAnimated:YES];
}



@end
