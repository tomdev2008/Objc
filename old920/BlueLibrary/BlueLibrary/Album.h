//
//  Album.h
//  BlueLibrary
//
//  Created by hey on 13-9-18.
//  Copyright (c) 2013年 Eli Ganem. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Album : NSObject

@property (nonatomic, copy, readonly) NSString *title, *artist, *genre, *coverUrl, *year;

- (id)initWithTitle:(NSString*)title artist:(NSString*)artist coverUrl:(NSString*)coverUrl year:(NSString*)year;
@end
