//
//  MDYProgressHud.h
//  MDYProgressHudTest
//
//  Created by 郑敏 on 15/10/25.
//  Copyright (c) 2015年 郑敏. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MDYProgressHud : UIView

@property (nonatomic, copy)UIColor *color;


- (instancetype)initWithFrame:(CGRect)frame color:(UIColor *)color;


- (void)showWithView:(UIView *)view;

- (void)hide;

@end
