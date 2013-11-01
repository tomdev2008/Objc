//
//  HCMapPoint.h
//  Whereami
//
//  Created by hey on 13-10-30.
//  Copyright (c) 2013年 HeyCool. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>

@interface HCMapPoint : NSObject <MKAnnotation>

- (id)initWithCoordinate:(CLLocationCoordinate2D)c title:(NSString *)t;

@property (nonatomic, readonly) CLLocationCoordinate2D coordinate;

@property (nonatomic, copy) NSString *title;

@end
