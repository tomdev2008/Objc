//
//  TimeViewController.m
//  HypnoTime
//
//  Created by hey on 13-10-31.
//  Copyright (c) 2013年 HeyCool. All rights reserved.
//

#import "TimeViewController.h"

@implementation TimeViewController

- (IBAction)showCurrentTime:(id)sender
{
    NSDate *now = [NSDate date];
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setTimeStyle:NSDateFormatterMediumStyle];
    [timeLabel setText:[formatter stringFromDate:now]];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
//    self = [super initWithNibName:nil bundle:nil];
    
    NSBundle *appBundle = [NSBundle mainBundle];
    self = [super initWithNibName:@"TimeViewController" bundle:appBundle];
    
    if (self) {
        UITabBarItem *tbi = [self tabBarItem];
        [tbi setTitle:@"Time"];
        
        UIImage *i = [UIImage imageNamed:@"Alarm.png"];
        [tbi setImage:i];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSLog(@"TimeViewController loaded its view.");
}

@end
