//
//  HCViewController.m
//  Whereami
//
//  Created by hey on 13-10-28.ss
//  Copyright (c) 2013年 HeyCool. All rights reserved.
//

#import "HCViewController.h"
#import "HCMapPoint.h"

@interface HCViewController ()

@end

@implementation HCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
	// Do any additional setup after loading the view, typically from a nib.
    
    [worldView setShowsUserLocation:YES];
    
//    
//    locationManager = [[CLLocationManager alloc] init];
//    
//    [locationManager setDelegate:self];
//    
//    [locationManager setDesiredAccuracy:kCLLocationAccuracyBest];
//    
//    // 3.1
//    [locationManager setDistanceFilter:500.0f];
    
//    [locationManager startUpdatingHeading];
    
//    [locationManager startUpdatingLocation];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        locationManager = [[CLLocationManager alloc] init];
        
        [locationManager setDelegate:self];
        
        [locationManager setDesiredAccuracy:kCLLocationAccuracyBest];
        
        // 3.1
        [locationManager setDistanceFilter:500.0f];
        
        [locationManager startUpdatingHeading];
        
        //    [locationManager startUpdatingLocation];
    }
    
    return self;
}

- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations
{
    NSLog(@"%@", locations);
}

- (void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error
{
    NSLog(@"Could not find location: %@", error);
}

- (void)locationManager:(CLLocationManager *)manager didUpdateHeading:(CLHeading *)newHeading
{
    NSLog(@"%@", newHeading);
}

// mapview 何时放大，如何放大
- (void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation
{
    CLLocationCoordinate2D loc = [userLocation coordinate];
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(loc, 250, 250);
    [worldView setRegion:region animated:YES];
}

// 标记位置
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [self findLocation];
    [textField resignFirstResponder];
    return YES;
}

- (void)findLocation
{
    [locationManager startUpdatingLocation];
    [activityIndicator startAnimating];
    [locationTitleField setHidden:YES];
}

- (void)foundLocation:(CLLocation *)loc
{
    CLLocationCoordinate2D coord = [loc coordinate];
    
    HCMapPoint *mp = [[HCMapPoint alloc] initWithCoordinate:coord title:[locationTitleField text]];
    
    [worldView addAnnotation:mp];
    
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(coord, 250, 250);
    [worldView setRegion:region animated:YES];
    
    // 重置界面
    [locationTitleField setText:@""];
    [activityIndicator stopAnimating];
    [locationTitleField setHidden:NO];
    [locationManager stopUpdatingLocation];
    
    
}

- (void)dealloc
{
    // 将 locationManager 的 delegate 设置为 nil，
    // 这样，locationManager 就不会向本对象发送委托消息
    [locationManager setDelegate:nil];
}


@end
