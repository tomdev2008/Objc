//
//  HCMapPoint.m
//  Whereami
//
//  Created by hey on 13-10-30.
//  Copyright (c) 2013年 HeyCool. All rights reserved.
//

#import "HCMapPoint.h"

@implementation HCMapPoint
@synthesize coordinate, title;

- (id)initWithCoordinate:(CLLocationCoordinate2D)c title:(NSString *)t
{
    self = [super init];
    if (self) {
        coordinate = c;
        [self setTitle:t];
    }
    return self;
}

@end
