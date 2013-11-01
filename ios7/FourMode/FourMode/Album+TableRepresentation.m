//
//  Album+TableRepresentation.m
//  FourMode
//
//  Created by hey on 13-9-30.
//  Copyright (c) 2013年 heycool. All rights reserved.
//

#import "Album+TableRepresentation.h"

@implementation Album (TableRepresentation)

- (NSDictionary*)tr_tableRepresentation
{
    return @{@"title": @[@"Artist", @"Album", @"Genre", @"Year"],
              @"values":@[self.artist, self.title, self.genre, self.year]};
}

@end
