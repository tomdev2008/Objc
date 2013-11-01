//
//  PersistencyManager.h
//  hey_first
//
//  Created by hey on 13-9-20.
//  Copyright (c) 2013年 hey. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Album.h"

@interface PersistencyManager : NSObject

// 处理专辑数据的⽅方法的原型。

- (NSArray*)getAlbums;
- (void)addAlbum:(Album*)album atIndex:(int)index;
- (void)deleteAlbumAtIndex:(int)index;

@end
