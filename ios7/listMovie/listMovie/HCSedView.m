//
//  HCSedView.m
//  listMovie
//
//  Created by hey on 13-9-28.
//  Copyright (c) 2013年 heycool. All rights reserved.
//

#import "HCSedView.h"

@interface HCSedView ()

@end

@implementation HCSedView

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnBackHome:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
