//
//  HCImageEdit.m
//  HeyPicool
//
//  Created by hey on 13-10-23.
//  Copyright (c) 2013年 heycool. All rights reserved.
//

#import "HCImageEdit.h"

@interface HCImageEdit ()



@end

@implementation HCImageEdit

@synthesize editImage;

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

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    
    
}
@end
