//
//  TimeViewController.h
//  HypnoTime
//
//  Created by hey on 13-10-31.
//  Copyright (c) 2013年 HeyCool. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TimeViewController : UIViewController
{
    IBOutlet UILabel *timeLabel;
}
- (IBAction)showCurrentTime:(id)sender;

@end
