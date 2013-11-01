//
//  BNRContainer.m
//  RondomPossessions
//
//  Created by hey on 13-10-27.
//  Copyright (c) 2013年 HeyCool. All rights reserved.
//

#import "BNRContainer.h"


@implementation BNRContainer

@synthesize containerName, totalValue;


-(void)addItemsUpto:(int)numberOfItemsToBeAddedInAContainer{
    contents= [[NSMutableArray alloc] init];
    for (int i=0; i<numberOfItemsToBeAddedInAContainer; i++) {
        BNRItem *item=[BNRItem randomItem];
        totalItemsCost+=[item valueInDollars];
        [contents addObject:item];
    }
    
}

-(void)setTotalValue:(int)valueOfContainer{
    totalValue=totalItemsCost+valueOfContainer;
}

-(id)initWithContainerName:(NSString *)name{
    [self setContainerName:name];
    return self;
}
-(NSString *)description{
    return [NSString stringWithFormat:@"Name of Container= %@, total value= %d, items contained= %@ ",containerName,totalValue,contents];
}
@end