//
//  PersistencyManager.h
//  BlueLibrary
//
//  Created by hey on 13-9-18.
//  Copyright (c) 2013年 Eli Ganem. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Album.h"

@interface PersistencyManager : NSObject

- (NSArray*)getAlbums;
- (void)addAlbum:(Album*)album atIndex:(int)index;
- (void)deleteAlbumAtIndex:(int)index;

@end
