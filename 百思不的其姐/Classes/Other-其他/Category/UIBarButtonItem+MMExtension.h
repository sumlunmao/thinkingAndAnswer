//
//  UIBarButtonItem+MMExtension.h
//  百思不的其姐
//
//  Created by tusm on 16/7/17.
//  Copyright © 2016年 tusm. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (MMExtension)
+ (instancetype)itemWithImage:(NSString *)image highImage:(NSString *)highImage target:(id)target action:(SEL)action;
@end
