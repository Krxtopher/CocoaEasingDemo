//
//  EasingFunctions.m
//  EasingDemo
//
//  Created by Kristopher Schultz on 11/16/12.
//  Copyright (c) 2012 Kristopher Schultz. All rights reserved.
//

#import "QuadraticEasing.h"

@implementation QuadraticEasing

+ (CGFloat)easeInOutValueAtPercent:(CGFloat)percent
{
    if (percent < .5) {
        return 2 * powf(percent, 2);
    } else {
        return 1 - 2 * powf(1 - percent, 2);
    }
}

+ (CGFloat)easeInOutValueAtPercent:(CGFloat)percent from:(CGFloat)fromValue to:(CGFloat)toValue
{
    float totalChange = toValue - fromValue;
	
    CGFloat easeValue = [QuadraticEasing easeInOutValueAtPercent:percent];
    return fromValue + totalChange * easeValue;
}

@end
