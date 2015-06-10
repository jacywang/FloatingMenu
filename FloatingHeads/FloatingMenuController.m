//
//  FloatingMenuController.m
//  FloatingHeads
//
//  Created by JIAN WANG on 6/10/15.
//  Copyright (c) 2015 JWANG. All rights reserved.
//

#import "FloatingMenuController.h"
#import "UIColor+flatColor.h"

@interface FloatingMenuController ()

@property (nonatomic) UIView *fromView;

@end

@implementation FloatingMenuController

-(instancetype)initWithView:(UIView *)view {
    self = [super initWithNibName:nil bundle:nil];
    
    self.modalPresentationStyle = UIModalPresentationOverCurrentContext;
    self.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
    
//    self.fromView = view;
    
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.blurredView = [[UIVisualEffectView alloc] initWithEffect:[UIBlurEffect effectWithStyle:UIBlurEffectStyleLight]];
    self.blurredView.frame = self.view.bounds;
    [self.view addSubview:self.blurredView];
    
    self.closeButton = [[FloatingButton alloc] initWithFrame:CGRectMake(0, 0, 80.0, 80.0) andImage:[UIImage imageNamed:@"icon-close"] andBackgroundColor:[UIColor flatRedColor]];
    [self.view addSubview:self.closeButton];
    [self.closeButton addTarget:self action:@selector(dismissController) forControlEvents:UIControlEventTouchUpInside];
}

-(void)dismissController {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
