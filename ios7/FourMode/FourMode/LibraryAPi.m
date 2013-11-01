//
//  LibraryAPi.m
//  FourMode
//
//  Created by hey on 13-9-30.
//  Copyright (c) 2013年 heycool. All rights reserved.
//

#import "LibraryAPi.h"
#import "PersistencyManager.h"
#import "HTTPClient.h"

// s9

// 我们来看⼀一看addAlbum:atIndex:.这个类⾸首先更新本地的数据,然后如果有⺴⽹网 络连接,它更新远程服务器。这就是⻔门⾯面模式的强⼤大之处。当某些外部的类增 加⼀一个新的专辑的时候,它不知道也不需要知道背后的复杂性。
// 注意:当为⼦子系统的类设计⻔门⾯面的时候,要记住:任何东⻄西都不能阻⽌止客户端直 接访问这些隐藏的类。不要对这些防御性的代码太过于吝啬,并且也不要假设 所有的客户端都会和⻔门⾯面⼀一样使⽤用你的类。
// 构建并运⾏行你的应⽤用。你将看到⼀一个激动⼈人⼼心的空⽩白的⿊黑屏(哈哈):

@interface LibraryAPi ()
{
    PersistencyManager *persistencyManger;
    HTTPClient *httpClient;
    
    // isOnline决定了是否服务器中任何专辑数据的改变应该被更新,例如增加或者 删除专辑。
    BOOL isOnline;
}

@end

@implementation LibraryAPi

- (id)init
{
    self = [super init];
    if (self) {
        persistencyManger = [[PersistencyManager alloc] init];
        httpClient = [[HTTPClient alloc] init];
        isOnline = NO;
    }
    return self;
}

- (NSArray*)getAlbums
{
    return [persistencyManger getAlbums];
}

- (void)addAlbum:(Album *)album atIndex:(int)index
{
    [persistencyManger addAlbum:album atIndex:index];
    if (isOnline) {
        [httpClient postRequest:@"/api/addAlbum" body:[album description]];
    }
}

- (void)deleteAlbumAtIndex:(int)index
{
    [persistencyManger deleteAlbumAtIndex:index];
    if (isOnline) {
        [httpClient postRequest:@"/api/deleteAlbum" body:[@(index) description]];
    }
}


// s6 单例模式

// 1.声明⼀一个静态变量去保存类的实例,确保它在类中的全局可⽤用性。
// 2.声明⼀一个静态变量dispatch_once_t ,它确保初始化器代码只执⾏行⼀一次
// 3.使⽤用Grand Central Dispatch(GCD)执⾏行初始化LibraryAPI变量的block.
// 这 正 是单例模式的关键:⼀一旦类已经被初始化,初始化器永远不会再被调⽤用。
// 下⼀一次你调⽤用sharedInstance的时候,dispatch_once块中的代码将不会执⾏行 (因为它已经被执⾏行了⼀一次),你将得到原先已经初始化好的实例。

+ (LibraryAPi*)sharedInstance
{
    // 1
    static LibraryAPi *_sharedInstance = nil;
    // 2
    static dispatch_once_t oncePredicate;
    // 3
    dispatch_once(&oncePredicate, ^{
        _sharedInstance = [[LibraryAPi alloc] init];
    });
    return _sharedInstance;
    
}

@end
