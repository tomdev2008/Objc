//
//  HCImageEdit.h
//  HeyPicool
//
//  Created by hey on 13-10-23.
//  Copyright (c) 2013年 heycool. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HCViewController.h"

@interface HCImageEdit : UIViewController {
    UIImage *editImage;
    IBOutlet UIImageView *hcEditingImage;
}

@property (nonatomic, retain) UIImage *editImage;
@end
