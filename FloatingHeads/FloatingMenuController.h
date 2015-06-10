//
//  FloatingMenuController.h
//  FloatingHeads
//
//  Created by JIAN WANG on 6/10/15.
//  Copyright (c) 2015 JWANG. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FloatingButton.h"

@interface FloatingMenuController : UIViewController

@property (strong, nonatomic) UIVisualEffectView *blurredView;
@property (strong, nonatomic) FloatingButton *closeButton;

-(instancetype)initWithView:(UIView *)view;

@end
