//
//  HCViewController.m
//  HeyPicool
//
//  Created by hey on 13-10-23.
//  Copyright (c) 2013年 heycool. All rights reserved.
//

#import "HCViewController.h"

@interface HCViewController ()


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


- (UIImage*)imageWithImage:(UIImage*)image
			  scaledToSize:(CGSize)newSize;
{
	UIGraphicsBeginImageContext( newSize );
	[image drawInRect:CGRectMake(0,0,newSize.width,newSize.height)];
	UIImage* newImage = UIGraphicsGetImageFromCurrentImageContext();
	UIGraphicsEndImageContext();
	
	return newImage;
}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
	UIImage *i = [info objectForKey:UIImagePickerControllerOriginalImage];
	NSLog(@"%f %f", [i size].width, [i size].height);
	if (i.size.width > 320 || i.size.height > 480)
		i = [self imageWithImage:i scaledToSize:CGSizeMake(320, 480)];

}


- (IBAction)doCameraBtn:(id)sender {
    UIImagePickerController *ipController = [[UIImagePickerController alloc] init];
    if ([[[UIDevice currentDevice] model] rangeOfString:@"Sim"].location == NSNotFound) {
        [ipController setSourceType:UIImagePickerControllerSourceTypeCamera];
        
    }
    [ipController setDelegate:self];
    [self presentViewController:ipController animated:YES completion:NULL];
}

- (IBAction)doPhotoAlbumBtn:(id)sender {
    UIImagePickerController *ipController = [[UIImagePickerController alloc] init];
    [ipController setDelegate:self];
    [self presentViewController:ipController animated:YES completion:NULL];
}
@end
