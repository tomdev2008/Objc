//
//  HCViewController.h
//  Whereami
//
//  Created by hey on 13-10-28.
//  Copyright (c) 2013年 HeyCool. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>



@interface HCViewController : UIViewController <CLLocationManagerDelegate, MKMapViewDelegate, UITextFieldDelegate>
{
    CLLocationManager *locationManager;
    
    IBOutlet MKMapView *worldView;
    IBOutlet UIActivityIndicatorView *activityIndicator;
    IBOutlet UITextField *locationTitleField;
}

- (void)findLocation;
- (void)foundLocation:(CLLocation *)loc;

@end
