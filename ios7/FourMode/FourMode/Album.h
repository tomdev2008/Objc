//
//  Album.h
//  FourMode
//
//  Created by hey on 13-9-30.
//  Copyright (c) 2013年 heycool. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Album : NSObject

// s1

@property (copy, nonatomic, readonly) NSString *title, *artist, *genre, *coverUrl, *year;
// ⽅方法是对象初始化器(object initializer),当你创建⼀一个新的专辑 (album)对象的时候,你需要传递专辑(album)名,艺术家,专辑封⾯面URL, 以及年份。
- (id)initWithTitle:(NSString*)title artist:(NSString*)artist coverUrl:(NSString*)coverUrl year:(NSString*)year;

@end
