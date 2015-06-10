//
//  UIColor+flatColor.m
//  FloatingHeads
//
//  Created by JIAN WANG on 6/10/15.
//  Copyright (c) 2015 JWANG. All rights reserved.
//

#import "UIColor+flatColor.h"

@implementation UIColor (flatColor)

+(UIColor *)flatBlackColor {
    return [UIColor colorWithRed:0.1674 green:0.1674 blue:0.1674 alpha:1.0];
}

+(UIColor *)flatWhiteColor {
    return [UIColor colorWithRed:0.9274 green:0.9436 blue:0.95 alpha:1.0];
}

+(UIColor *)flatBlueColor {
    return [UIColor colorWithRed:0.3132 green:0.3974 blue:0.6365 alpha:1.0];
}

+(UIColor *)flatRedColor {
    return [UIColor colorWithRed:0.9115 green:0.2994 blue:0.2335 alpha:1.0];
}

+(UIImage *)pixelImage {
    UIGraphicsBeginImageContext(CGSizeMake(1.0, 1.0));
    [[UIColor flatBlackColor] setFill];
    UIRectFill(CGRectMake(0, 0, 1.0, 1.0));
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}


@end
