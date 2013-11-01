//
//  BNRContainer.h
//  RondomPossessions
//
//  Created by hey on 13-10-27.
//  Copyright (c) 2013年 HeyCool. All rights reserved.
//

#import "BNRItem.h"

@interface BNRContainer : BNRItem
{
    NSMutableArray *contents;
    NSString *containerName;
    int totalValue;
    int totalItemsCost;
}

@property (nonatomic, strong) NSString *containerName;
@property (nonatomic) int totalValue;

// 其下所有的 BNRItem 实例的价值总和，在加上 BNRContainer 实例自身的价值
-(void)addItemsUpto:(int)numberOfItemsInAContainer;

-(id)initWithContainerName:(NSString *)name;

@end
