//
//  NSObject+UIImage_ColorChange.m
//  imageTest
//
//  Created by 郑敏 on 15/10/25.
//  Copyright (c) 2015年 郑敏. All rights reserved.
//



#import "UIImage+ColorChange.h"


@implementation UIImage (UIImage_ColorChange)

+ (UIImage*)imageNamed:(NSString *)name color:(UIColor *)color
{
    UIImage *image = [UIImage imageNamed:name];
    UIGraphicsBeginImageContextWithOptions(image.size, NO, image.scale);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextTranslateCTM(context, 0, image.size.height);
    CGContextScaleCTM(context, 1.0, -1.0);
    CGContextSetBlendMode(context, kCGBlendModeNormal);
    CGRect rect = CGRectMake(0, 0, image.size.width, image.size.height);
    CGContextClipToMask(context, rect, image.CGImage);
    [color setFill];
    CGContextFillRect(context, rect);
    image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

@end
