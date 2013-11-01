//
//  LibraryAPi.h
//  FourMode
//
//  Created by hey on 13-9-30.
//  Copyright (c) 2013年 heycool. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Album.h"

@interface LibraryAPi : NSObject

// s5

+ (LibraryAPi*)sharedInstance;

- (NSArray*)getAlbums;
- (void)addAlbum:(Album*)album atIndex:(int)index;
- (void)deleteAlbumAtIndex:(int)index;

@end
