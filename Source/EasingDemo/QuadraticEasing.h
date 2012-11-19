//
//  EasingFunctions.h
//  EasingDemo
//
//  Created by Kristopher Schultz on 11/16/12.
//  Copyright (c) 2012 Kristopher Schultz. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QuadraticEasing : NSObject

/**
 Calculates the value that correlates to the specified percentage along an ease in/out curve. Returns the value as a percentage.
 */
+ (CGFloat)easeInOutValueAtPercent:(CGFloat)percent;

/**
 Calculates the value that correlates to the specified percentage along an ease in/out curve. Returns the value as a number between fromValue and toValue.
 */
+ (CGFloat)easeInOutValueAtPercent:(CGFloat)percent from:(CGFloat)fromValue to:(CGFloat)toValue;

@end
