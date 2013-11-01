//
//  Album.m
//  FourMode
//
//  Created by hey on 13-9-30.
//  Copyright (c) 2013年 heycool. All rights reserved.
//

#import "Album.h"

@implementation Album

// s2

// ⼀个创建Album实例的初始化⽅方法
- (id)initWithTitle:(NSString *)title artist:(NSString *)artist coverUrl:(NSString *)coverUrl year:(NSString *)year
{
    self = [super init];
    if (self) {
        _title = title;
        _artist = artist;
        _coverUrl = coverUrl;
        _year = year;
        _genre = @"Pop";
    }
    return self;
}

@end
