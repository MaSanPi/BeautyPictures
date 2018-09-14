//
//  UIView+MBExpandFram.h
//  WorldElectronic
//
//  Created by 马波 on 16/6/12.
//  Copyright © 2016年 MB. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (MBExpandFram)
@property (nonatomic, assign) CGSize  mb_size;
@property (nonatomic, assign) CGFloat mb_width;
@property (nonatomic, assign) CGFloat mb_height;
@property (nonatomic, assign) CGFloat mb_x;
@property (nonatomic, assign) CGFloat mb_y;

@property (nonatomic, assign) CGFloat mb_centerY;
@property (nonatomic, assign) CGFloat mb_centerX;

/** 在分类中声明@property, 只会生成方法的声明, 不会生成方法的实现和带有_下划线的成员变量*/
//- (CGFloat)x;
//- (void)setX:(CGFloat)x;（也就是对其的声明并没有实现）


@end
