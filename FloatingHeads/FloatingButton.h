//
//  FloatingButton.h
//  FloatingHeads
//
//  Created by JIAN WANG on 6/10/15.
//  Copyright (c) 2015 JWANG. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FloatingButton : UIButton

-(instancetype)initWithFrame:(CGRect)frame andImage:(UIImage *)image andBackgroundColor:(UIColor *)color;
-(void)setup;

@end
