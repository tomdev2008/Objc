//
//  BNRItem.h
//  RondomPossessions
//
//  Created by hey on 13-10-24.
//  Copyright (c) 2013年 HeyCool. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRItem : NSObject
{

    __weak BNRItem *_containedItem;
}

@property (nonatomic,weak) BNRItem *container;
@property (nonatomic,weak) BNRItem *containedItem;

@property (nonatomic, strong) NSString *itemName;
@property (nonatomic, strong) NSString *serialNumber;
@property (nonatomic) int valueInDollars;
@property (nonatomic, readonly, strong) NSDate *dateCreated;

//- (void)doSomeThingWeird;

+ (id)randomItem;

- (id)initWithItemName:(NSString *)name valueInDollars:(int)value serialNumber:(NSString *)sNumber;

- (id)initwithItemName:(NSString *)name;

- (id)initWithItemName:(NSString *)name serialNumber:(NSString *)sNumber;


@end
