//
//  randomcolor.m
//  lab3ios
//
//  Created by YuanZhengyu on 7/09/2014.
//  Copyright (c) 2014 UOW. All rights reserved.
//

#import "randomcolor.h"

@implementation UIColor (RandomUIColor)
+(UIColor*) randomColor {
    CGFloat hue = ( arc4random() % 256 / 256.0 );
    CGFloat saturation = ( arc4random() % 128 / 256.0 ) + 0.5;
    CGFloat brightness = ( arc4random() % 128 / 256.0 ) + 0.5;
    UIColor *color = [UIColor colorWithHue:hue saturation:saturation brightness:brightness alpha:1];
    return color;
}
@end
