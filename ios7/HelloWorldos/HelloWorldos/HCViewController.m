//
//  HCViewController.m
//  HelloWorldos
//
//  Created by hey on 13-9-22.
//  Copyright (c) 2013年 heycool. All rights reserved.
//

#import "HCViewController.h"

@interface HCViewController ()

@property (weak, nonatomic) IBOutlet UILabel *lblHelloWorld;
- (IBAction)doBtnHide:(id)sender;
@end

@implementation HCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)doBtnHide:(id)sender {
    // [self.lblHelloWorld setHidden:YES]; // 1
    [self.lblHelloWorld setHidden:![self.lblHelloWorld isHidden]]; // 2 隐藏之后显示
    // [sender setTitle:[self.lblHelloWorld isHidden] ? @"Show" : @"Hide"forState:UIControlStateNormal]; // 有错误 问题出现哪？
}
@end
