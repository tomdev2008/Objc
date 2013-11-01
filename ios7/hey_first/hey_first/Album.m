//
//  Album.m
//  hey_first
//
//  Created by hey on 13-9-20.
//  Copyright (c) 2013年 hey. All rights reserved.
//

#import "Album.h"

@implementation Album
// 这⾥里没什么复杂花哨的东⻄西,仅仅是⼀一个创建Album实例的初始化⽅方法⽽而已。
- (id)initWithTitle: (NSString *)title artist: (NSString *)artist coverUrl: (NSString *)coverUrl year: (NSString *)year
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
