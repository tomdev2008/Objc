//
//  BNRItem.m
//  RondomPossessions
//
//  Created by hey on 13-10-24.
//  Copyright (c) 2013年 HeyCool. All rights reserved.
//

#import "BNRItem.h"

@implementation BNRItem



- (NSString *)description
{
    NSString *descriptionString = [[NSString alloc] initWithFormat:@"%@ %@ Worth $%d, recorded on %@",
                                   _itemName,
                                   _serialNumber,
                                   _valueInDollars,
                                   _dateCreated];
    return descriptionString;
}

+ (id)randomItem
{
    NSArray *randomAdjectiveList = [NSArray arrayWithObjects:@"Fluffy", @"Rusty", @"Shiny", nil];
    
    NSArray *randomNounList = [NSArray arrayWithObjects:@"Bear", @"Spork", @"Mac", nil];
    
    NSInteger adjectiveIndex = rand() % [randomAdjectiveList count];
    NSInteger nounIndex = rand() % [randomNounList count];
    
    NSString *randomName = [NSString stringWithFormat:@"%@ %@", [randomAdjectiveList objectAtIndex:adjectiveIndex], [randomNounList objectAtIndex:nounIndex]];
    
    int randomValue = rand() % 100;
    
    NSString *randomSerialNumber = [NSString stringWithFormat:@"%c%c%c%c%c",
                                    '0' + rand() % 10,
                                    'A' + rand() % 26,
                                    '0' + rand() % 10,
                                    'A' + rand() % 26,
                                    '0' + rand() % 10];
    
    BNRItem *newItem = [[self alloc] initWithItemName:randomName valueInDollars:randomValue serialNumber:randomSerialNumber];
    
    return newItem;
}

- (id)initWithItemName:(NSString *)name valueInDollars:(int)value serialNumber:(NSString *)sNumber
{
    self = [super init];
    [self setItemName:name];
    [self setValueInDollars:value];
    [self setSerialNumber:sNumber];
    _dateCreated = [[NSDate alloc] init];
    
    return self;
    
}

- (id)initwithItemName:(NSString *)name
{
        return [self initWithItemName:name valueInDollars:0 serialNumber:@""];
}

- (id)initWithItemName:(NSString *)name serialNumber:(NSString *)sNumber
{
    return [self initWithItemName:name valueInDollars:0 serialNumber:sNumber];
}

- (id)init
{
    return [self initWithItemName:@"Item" valueInDollars:0 serialNumber:@""];
}

- (void)dealloc
{
    NSLog(@"Destroyed: %@", self);
}

- (void)setContainedItem:(BNRItem *)i
{
    _containedItem = i;
    [i setContainer:self];

}

@end
