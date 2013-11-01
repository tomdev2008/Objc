//
//  HCViewController.m
//  HelloWorld
//
//  Created by hey on 13-10-21.
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
    [self.lblHelloWorld setHidden:![self.lblHelloWorld isHidden]];
    
    [sender setTitle:[[NSString alloc] initWithFormat:@"hell"] forState:0];
}
@end
