//
//  MDYProgressHud.m
//  MDYProgressHudTest
//
//  Created by 郑敏 on 15/10/25.
//  Copyright (c) 2015年 郑敏. All rights reserved.
//

#import "MDYProgressHud.h"
#import "UIImage+ColorChange.h"

@implementation MDYProgressHud {
    
    UIImageView *_imageView;
}

- (instancetype)initWithFrame:(CGRect)frame color:(UIColor *)color {
    self = [super initWithFrame:frame];
    if (self) {
        _imageView = [[UIImageView alloc] initWithFrame:self.bounds];
        [self addSubview:_imageView];
        
        self.color = color;
        
    }
    return self;
}

- (UIColor *)color {
    if (!_color) {
        _color = [UIColor blackColor];
    }
    return _color;
}


- (void)showWithView:(UIView *)view {
    
    NSMutableArray *imageArr = [NSMutableArray arrayWithCapacity:90];
    for (int i = 1; i <= 46; i++) {
        
        [imageArr addObject:[UIImage imageNamed:[NSString stringWithFormat:@"MDYHud%02d", i] color:self.color]];
    }
    _imageView.animationImages = imageArr;
    _imageView.animationDuration = 2.0f;
    [_imageView startAnimating];
    
    self.center = CGPointMake(view.bounds.size.width /2.0f, view.bounds.size.height / 2.0f);
    [view addSubview:self];
}

- (void)hide {
    [UIView animateWithDuration:0.3f animations:^{
        self.alpha = 0;
    } completion:^(BOOL finished) {
        [_imageView stopAnimating];
        _imageView.animationImages = nil;
        [self removeFromSuperview];
    }];
}


@end
