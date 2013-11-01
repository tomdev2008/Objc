//
//  LibraryAPI.m
//  BlueLibrary
//
//  Created by hey on 13-9-18.
//  Copyright (c) 2013年 Eli Ganem. All rights reserved.
//

#import "LibraryAPI.h"
#import "PersistencyManager.h"
#import "HTTPClient.h"

@interface LibraryAPI () {
    PersistencyManager *persistencyManager;
    HTTPClient *httpClient;
    BOOL isOnline;
    
}
@end

@implementation LibraryAPI
//
- (id)init{
    self = [super init];
    
    if (self) {
        
        persistencyManager = [[PersistencyManager alloc] init];
        
        httpClient = [[HTTPClient alloc] init];
        
        isOnline = NO;
        
    }
    
    return self;  
    
}
//
-(NSArray*)getAlbums
{
    return [persistencyManager getAlbums];
}



- (void)addAlbum:(Album*)album atIndex:(int)index
{
    [persistencyManager addAlbum:album atIndex:index];
    
    if (isOnline)
        
    {
        
        [httpClient postRequest:@"/api/addAlbum" body:[album description]];
        
    }
    
}



- (void)deleteAlbumAtIndex:(int)index
{
    
    [persistencyManager deleteAlbumAtIndex:index];
    
    if (isOnline)
    {
        
        [httpClient postRequest:@"/api/deleteAlbum" body:[@(index) description]];
        
    }  
    
}


//
+ (LibraryAPI*)sharedInstance
{
    static LibraryAPI *_sharedInstance = nil;
    static dispatch_once_t oncePredicate;
    dispatch_once(&oncePredicate, ^{
        _sharedInstance = [[LibraryAPI alloc] init];
    });
    return _sharedInstance;
}
@end
