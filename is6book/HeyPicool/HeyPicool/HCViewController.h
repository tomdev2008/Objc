//
//  HCViewController.h
//  HeyPicool
//
//  Created by hey on 13-10-23.
//  Copyright (c) 2013年 heycool. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HCImageEdit.h"

@interface HCViewController : UIViewController <UIImagePickerControllerDelegate, UINavigationControllerDelegate>

{
 
}

- (IBAction)doCameraBtn:(id)sender;
- (IBAction)doPhotoAlbumBtn:(id)sender;

@end