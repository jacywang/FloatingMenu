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
    self.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    
    self.fromView = view;
    
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.blurredView = [[UIVisualEffectView alloc] initWithEffect:[UIBlurEffect effectWithStyle:UIBlurEffectStyleLight]];
    self.blurredView.frame = self.view.bounds;
    [self.view addSubview:self.blurredView];
    
    self.closeButton = [[FloatingButton alloc] initWithFrame:CGRectMake(0, 0, 60.0, 60.0) andImage:[UIImage imageNamed:@"icon-close"] andBackgroundColor:[UIColor flatRedColor]];
    [self.view addSubview:self.closeButton];
    [self.closeButton addTarget:self action:@selector(cancelButtonPressed) forControlEvents:UIControlEventTouchUpInside];
    
}

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    [self configureButtons];
    
    self.buttonPadding = self.fromView.frame.size.height / 3.0;
    
    NSArray *imageArray = @[[UIImage imageNamed:@"icon-add"],
                            [UIImage imageNamed:@"model-004"],
                            [UIImage imageNamed:@"model-005"],
                            [UIImage imageNamed:@"model-006"],
                            [UIImage imageNamed:@"model-007"],
                            [UIImage imageNamed:@"model-008"],
                            ];
    
    self.buttonItems = [[NSMutableArray alloc] init];
    for (UIImage *image in imageArray) {
        FloatingButton *button = [[FloatingButton alloc] initWithFrame:self.fromView.frame andImage:image andBackgroundColor:[UIColor flatWhiteColor]];
        [self.buttonItems addObject:button];
    }
    [self.buttonItems[0] setBackgroundColor:[UIColor flatBlueColor]];
    
    for (int i = 0; i < self.buttonItems.count; i++) {
        FloatingButton *button = self.buttonItems[i];
        CGPoint tempCenter = button.center;
        tempCenter.y -= (button.frame.size.height + self.buttonPadding) * (i + 1);
        button.center = tempCenter;
        [self.view addSubview:button];
        [button addTarget:self action:@selector(contactButtonPressed) forControlEvents:UIControlEventTouchUpInside];
        
//        CABasicAnimation *moveToTop = [CABasicAnimation animation];
//        moveToTop.keyPath = @"center.y";
//        moveToTop.fromValue = [NSNumber numberWithFloat:self.closeButton.center.y];
//        moveToTop.toValue = [NSNumber numberWithFloat:button.center.y];
//        moveToTop.duration = 10;
//        moveToTop.delegate = self;
//        
//        [button.layer addAnimation:moveToTop forKey:@"buttonMoveToTop"];
    }
}

-(void)configureButtons {
    self.closeButton.center = self.fromView.center;
}

-(void)cancelButtonPressed {
    [self.delegate cancelButtonPressed];
}

-(void)contactButtonPressed {
    [self.delegate newContactButtonPressed];
}

@end
