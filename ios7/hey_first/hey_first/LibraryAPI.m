//
//  LibraryAPI.m
//  hey_first
//
//  Created by hey on 13-9-20.
//  Copyright (c) 2013年 hey. All rights reserved.
//

#import "LibraryAPI.h"

@implementation LibraryAPI

/*
 在这个简短的⽅方法中,有⼀一些需要需要注意的点: 
 1.声明⼀一个静态变量去保存类的实例,确保它在类中的全局可⽤用性。 
 2.声明⼀一个静态变量dispatch_once_t ,它确保初始化器代码只执⾏行⼀一次 
 3.使⽤用Grand Central Dispatch(GCD)执⾏行初始化LibraryAPI变量的block.
 这 正 是单例模式的关键:⼀一旦类已经被初始化,初始化器永远不会再被调⽤用。
 下⼀一次你调⽤用sharedInstance的时候,dispatch_once块中的代码将不会执⾏行 (因为它已经被执⾏行了⼀一次),你将得到原先已经初始化好的实例。
 */

+ (LibraryAPI*)sharedInstance
{
    // 1
    static LibraryAPI *_sharedInstance = nil;
    // 2
    static dispatch_once_t oncePredicate;
    // 3
    dispatch_once(&oncePredicate, ^{
        _sharedInstance = [[LibraryAPI alloc] init];
    });
    return _sharedInstance;
}
@end
