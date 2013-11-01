//
//  HCViewController.m
//  HeyTime
//
//  Created by hey on 13-10-31.
//  Copyright (c) 2013年 HeyCool. All rights reserved.
//

#import "HCViewController.h"

@interface HCViewController ()

@end

@implementation HCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    CGRect frame = [[UIScreen mainScreen] bounds];
    HCsisView *v = [[HCsisView alloc] initWithFrame:frame];
    [self setView:v];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}
//
- (BOOL)prefersStatusBarHidden//for iOS7.0
{
    return YES;
}


@end
