//
//  UIView+MBExpandFram.m
//  WorldElectronic
//
//  Created by 马波 on 16/6/12.
//  Copyright © 2016年 MB. All rights reserved.
//

#import "UIView+MBExpandFram.h"

@implementation UIView (MBExpandFram)

- (void)setMb_size:(CGSize)mb_size{
    CGRect frame = self.frame;
    frame.size = mb_size;
    self.frame = frame;
}

- (CGSize)mb_size
{
    return self.frame.size;
}


- (void)setMb_centerX:(CGFloat)mb_centerX{
    CGPoint center = self.center;
    center.x = mb_centerX;
    self.center = center;
}

- (CGFloat)mb_centerX{
    return self.center.x;
}


- (void)setMb_centerY:(CGFloat)mb_centerY{
    CGPoint center = self.center;
    center.y = mb_centerY;
    self.center = center;
}

- (CGFloat)mb_centerY{
    return self.center.y;
}



- (void)setMb_width:(CGFloat)mb_width{
    CGRect frame = self.frame;
    frame.size.width =mb_width;
    self.frame = frame;
}


- (void)setMb_height:(CGFloat)mb_height{
    CGRect frame = self.frame;
    frame.size.height = mb_height;
    self.frame = frame;
}


- (void)setMb_x:(CGFloat)mb_x{
    CGRect frame = self.frame;
    frame.origin.x = mb_x;
    self.frame = frame;
}


- (void)setMb_y:(CGFloat)mb_y{
    CGRect frame = self.frame;
    frame.origin.y = mb_y;
    self.frame = frame;
}



- (CGFloat)mb_width
{
    return self.frame.size.width;
}

- (CGFloat)mb_height
{
    return self.frame.size.height;
}

- (CGFloat)mb_x
{
    return self.frame.origin.x;
}

- (CGFloat)mb_y
{
    return self.frame.origin.y;
}

@end
