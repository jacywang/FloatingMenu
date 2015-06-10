//
//  FloatingButton.m
//  FloatingHeads
//
//  Created by JIAN WANG on 6/10/15.
//  Copyright (c) 2015 JWANG. All rights reserved.
//

#import "FloatingButton.h"
#import "UIColor+flatColor.h"

@implementation FloatingButton

-(void)awakeFromNib {
    [super awakeFromNib];
    [self setup];
}

-(void)setup {
    self.tintColor = [UIColor whiteColor];
    self.backgroundColor = [UIColor flatBlueColor];
    self.layer.masksToBounds = YES;
    self.layer.cornerRadius = self.frame.size.height / 2.0;
    [self setBackgroundImage:[UIColor pixelImage] forState:UIControlStateHighlighted];
}

@end
