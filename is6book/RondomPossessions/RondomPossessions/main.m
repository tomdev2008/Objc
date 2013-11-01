//
//  main.m
//  RondomPossessions
//
//  Created by hey on 13-10-24.
//  Copyright (c) 2013年 HeyCool. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"
//#import "BNRContainer.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        // NSLog(@"Hello, World!");
        
//        1.创建NSMutableArray对象，并用items变量保持该对象的地址
        NSMutableArray *items = [[NSMutableArray alloc] init];
/*
        [items addObject:@"One"];
        [items addObject:@"Two"];
        [items addObject:@"Three"];
        
        [items insertObject:@"Zero" atIndex:0];
        
        for (int i=0; i < [items count]; i++) {
            NSLog(@"%@", [items description]);
        }
        
        BNRItem *p = [[BNRItem alloc] init];
        
        NSLog(@"%@",p);
        
        [p setItemName:@"Red Sofa"];
        [p setSerialNumber:@"A1B2C"];
        [p setValueInDollars:100];
        
        // NSLog(@"%@ %@ %@ %d", [p itemName], [p serialNumber], [p dateCreated], [p valueInDollars]);
        
        NSLog(@"%@",p);
*/
/*
        // 测试初始化方法
        BNRItem *p = [[BNRItem alloc] initWithItemName:@"Red Sofa" valueInDollars:100 serialNumber:@"A1B2C"];
        NSLog(@"%@", p);
*/
        // 测试类方法
/*
        for (int i = 0; i < 10; i++) {
            BNRItem *p = [BNRItem randomItem];
            //[p doSomeThingWeird];
            [items addObject:p];
        }
*/
/*
        for (int i = 0; i < [items count]; i++) {
            NSLog(@"%@", [items objectAtIndex:i]);
        }
*/
/*        // 快速枚举
        for (BNRItem *item in items) {
            NSLog(@"%@" ,item);
        }
*/
        // 2.8 查找问题 返回第11个对象 抛出异常
        // NSLog(@"%@", [items objectAtIndex:11]);
/*
        
        // 2.9 另一个初始化方法
        BNRItem *p = [[BNRItem alloc] initWithItemName:@"dahai" serialNumber:@"QQQQ2222"];
        NSLog(@"%@", p);
        
        
        // 2.10
        BNRContainer *container=[[BNRContainer alloc] initWithContainerName:@"container"];
        [container addItemsUpto:5];
        [container setTotalValue:100];
        NSLog(@"%@",container);
        
        BNRContainer *container2=[[BNRContainer alloc] initWithContainerName:@"container2"];
        [container2 addItemsUpto:8];
        [container2 setTotalValue:100];
        NSLog(@"%@",container2);
        NSLog(@"Net Value= %d dollars",[container totalValue]+[container2 totalValue]);
*/
        // 释放测试
//        NSLog(@"Setting items to nil...");
        
        BNRItem *backpack = [[BNRItem alloc] init];
        [backpack setItemName:@"Backpack"];
        [items addObject:backpack];
        
        BNRItem *calculator = [[BNRItem alloc] init];
        [calculator setItemName:@"Calculator"];
        [items addObject:calculator];
        
        [backpack setContainedItem:calculator];
        
        
//        2.释放 items 所指向的 NSMutableArray 对象
        items = nil;
        
    }
    return 0;
}

