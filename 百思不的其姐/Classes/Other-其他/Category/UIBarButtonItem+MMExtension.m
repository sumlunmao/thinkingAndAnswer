//
//  UIBarButtonItem+MMExtension.m
//  百思不的其姐
//
//  Created by tusm on 16/7/17.
//  Copyright © 2016年 tusm. All rights reserved.
//

#import "UIBarButtonItem+MMExtension.h"

@implementation UIBarButtonItem (MMExtension)

+ (instancetype)itemWithImage:(NSString *)image highImage:(NSString *)highImage target:(id)target action:(SEL)action{
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setBackgroundImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [button setBackgroundImage:[UIImage imageNamed:highImage] forState:UIControlStateHighlighted];
    button.size = button.currentBackgroundImage.size;
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    
    return [[self alloc]initWithCustomView:button];
}

@end
