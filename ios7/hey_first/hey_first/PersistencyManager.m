//
//  PersistencyManager.m
//  hey_first
//
//  Created by hey on 13-9-20.
//  Copyright (c) 2013年 hey. All rights reserved.
//

#import "PersistencyManager.h"

/*
 增加了⼀一个类扩张(class extension),这是另外⼀一个增加私有⽅方法和变量以⾄至于外部类不会看到它们的⽅方式。
 这⾥里,你申明了⼀一个数组 NSMutableArry 来保存专辑数据。这个数组是可变的⽅方便你增加和删除专辑。
 */
@interface PersistencyManager ()
{
    NSMutableArray *albums;
}

@end

@implementation PersistencyManager

// 在init中,你⽤用五条样例专辑填充数组。

- (id)init
{
    self = [super init];
    if (self) {
        albums = [NSMutableArray arrayWithArray:
                  @[[[Album alloc] initWithTitle:@"Best of Bowie" artist:@"David Bowie" coverUrl:@"http://www.coversproject.com/static/thumbs/album/album_david%20bowie_best%20of%20bowie.png" year:@"1992"],
                    [[Album alloc] initWithTitle:@"It's My Life" artist:@"No Doubt" coverUrl:@"http://www.coversproject.com/static/thumbs/album/album_no%20doubt_its%20my%20life%20%20bathwater.png" year:@"2003"],
                    [[Album alloc] initWithTitle:@"Nothing Like The Sun" artist:@"Sting" coverUrl:@"http://www.coversproject.com/static/thumbs/album/album_sting_nothing%20like%20the%20sun.png" year:@"1999"],
                    [[Album alloc] initWithTitle:@"Staring at the Sun" artist:@"U2" coverUrl:@"http://www.coversproject.com/static/thumbs/album/album_u2_staring%20at%20the%20sun.png" year:@"2000"],
                    [[Album alloc] initWithTitle:@"American Pie" artist:@"Madonna" coverUrl:@"http://www.coversproject.com/static/thumbs/album/album_madonna_american%20pie.png" year:@"2000"]]];
    }
    return self;
}

// 增加下⾯面的三个⽅方法

- (NSArray*)getAlbums
{
    return albums;
}

- (void)addAlbum:(Album *)album atIndex:(int)index
{
    if (albums.count >= index) {
        [albums insertObject:album atIndex:index];
    }
    else
        [albums addObject:album];
}

- (void)deleteAlbumAtIndex:(int)index
{
    [albums removeObjectAtIndex:index];
}
@end
