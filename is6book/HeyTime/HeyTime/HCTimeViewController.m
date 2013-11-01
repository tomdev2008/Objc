//
//  HCTimeViewController.m
//  HeyTime
//
//  Created by hey on 13-10-31.
//  Copyright (c) 2013年 HeyCool. All rights reserved.
//

#import "HCTimeViewController.h"

@implementation HCTimeViewController
{
    
    IBOutlet UILabel *timeLabel;
    
}

- (IBAction)doBtnTime:(id)sender {
    
    NSDate *now = [NSDate date];
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setTimeStyle:NSDateFormatterMediumStyle];
    [timeLabel setText:[formatter stringFromDate:now]];
}
@end
