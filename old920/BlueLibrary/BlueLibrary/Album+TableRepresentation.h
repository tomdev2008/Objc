//
//  Album+TableRepresentation.h
//  BlueLibrary
//
//  Created by hey on 13-9-19.
//  Copyright (c) 2013年 Eli Ganem. All rights reserved.
//

#import "Album.h"

@interface Album (TableRepresentation)
- (NSDictionary*)tr_tableRepresentation;  

@end
