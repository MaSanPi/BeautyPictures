//
//  UIColor+MB.h
//  BeautyPictures
//
//  Created by 马波 on 2018/9/14.
//  Copyright © 2018年 MB. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (MB)
/** 主颜色（蓝色）*/
+ (instancetype)mb_mainColor;

+ (instancetype)mb_colorWithRed:(CGFloat)red green:(CGFloat)green blue:(CGFloat)blue alpha:(CGFloat)alpha;

+ (instancetype)mb_colorWithHexString:(NSString *)color;
@end
