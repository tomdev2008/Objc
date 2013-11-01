//
//  Album.h
//  hey_first
//
//  Created by hey on 13-9-20.
//  Copyright (c) 2013年 hey. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Album : NSObject

/*
在你深⼊入到第⼀一个设计模式之前,你⾸首先必须创建两个类,⽤用这两个类去保存
和显⽰示⾳音乐库专辑的信息。
 
 注意到新增代码中所有的属性都是只读的,因为在Album对象创建以后,不需 要修改它们的值。
 新增的⽅方法是对象初始化器(object initializer),当你创建⼀一个新的专辑 (album)对象的时候,你需要传递专辑(album)名,艺术家,专辑封⾯面URL, 以及年份。
*/
@property (nonatomic, copy, readonly) NSString *title, *artist, *genre, *coverUrl, *year;
- (id)initWithTitle:(NSString*)title artist:(NSString*)artist coverUrl:(NSString*)coverUrl year:(NSString*)year;

@end
