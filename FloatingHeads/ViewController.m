//
//  ViewController.m
//  FloatingHeads
//
//  Created by JIAN WANG on 6/10/15.
//  Copyright (c) 2015 JWANG. All rights reserved.
//

#import "ViewController.h"
#import "FloatingButton.h"
#import "FloatingMenuController.h"

@interface ViewController () <FloatingMenuControllerProtocol>
@property (weak, nonatomic) IBOutlet FloatingButton *plusButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}

- (IBAction)plusButtonPressed:(FloatingButton *)sender {
    FloatingMenuController *floatingMenuController = [[FloatingMenuController alloc] initWithView:self.plusButton];
    
    floatingMenuController.delegate = self;
    
    [self presentViewController:floatingMenuController animated:YES completion:nil];
}

-(void)cancelButtonPressed {
    NSLog(@"Cancel button pressed!");
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(void)newContactButtonPressed {
    NSLog(@"New contact button pressed!");
}

@end
