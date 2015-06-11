//
//  FloatingMenuController.h
//  FloatingHeads
//
//  Created by JIAN WANG on 6/10/15.
//  Copyright (c) 2015 JWANG. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FloatingButton.h"

@protocol FloatingMenuControllerProtocol

-(void)cancelButtonPressed;
-(void)newContactButtonPressed;

@end

typedef enum {
    up,
    left
}Direction;

@interface FloatingMenuController : UIViewController

@property (nonatomic) id<FloatingMenuControllerProtocol> delegate;
@property (nonatomic) UIVisualEffectView *blurredView;
@property (nonatomic) FloatingButton *closeButton;
@property (nonatomic) Direction *defaultDirection;
@property (nonatomic, assign) CGFloat buttonPadding;
@property (nonatomic) NSMutableArray *buttonItems;

-(instancetype)initWithView:(UIView *)view;

@end
