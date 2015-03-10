//
//  MyStyleKit.h
//  vBox
//
//  Created by Rosbel Sanroman on 12/15/14.
//  Copyright (c) 2014 Rosbel. All rights reserved.
//
//  Generated by PaintCode (www.paintcodeapp.com)
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@interface MyStyleKit : NSObject

// Colors
+ (UIColor*)myOrange;
+ (UIColor*)mySkyBlue;
+ (UIColor*)vitaminCColor;
+ (UIColor*)route66Color;
+ (UIColor*)steadyGreyColor;
+ (UIColor*)bcColor;
+ (UIColor*)gamebookersBlueColor;

// Drawing Methods
+ (void)drawVBoxButtonWithButtonColor: (UIColor*)buttonColor;
+ (void)drawSpeedometerWithStrokeColor: (UIColor*)strokeColor;
+ (void)drawGaugeWithStrokeColor: (UIColor*)strokeColor value: (CGFloat)value maxValue: (CGFloat)maxValue label: (NSString*)label;

// Generated Images
+ (UIImage*)imageOfVBoxButtonWithButtonColor: (UIColor*)buttonColor;
+ (UIImage*)imageOfSpeedometerWithStrokeColor: (UIColor*)strokeColor;

@end
