//
//  MapViewController.h
//  HypnoTime
//
//  Created by hey on 13-10-31.
//  Copyright (c) 2013年 HeyCool. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>

@interface MapViewController : UIViewController <CLLocationManagerDelegate, MKMapViewDelegate, UITextFieldDelegate>
{
    CLLocationManager *locationManager;
    IBOutlet MKMapView *worldView;
    IBOutlet UITextField *locationTitleField;
    IBOutlet UIActivityIndicatorView *activityIndicator;
}


@end
