//
//  HCViewController.m
//  listMovie
//
//  Created by hey on 13-9-28.
//  Copyright (c) 2013年 heycool. All rights reserved.
//

#import "HCViewController.h"

@interface HCViewController ()

@end

@implementation HCViewController

@synthesize listOfMovies;

- (void)viewDidLoad
{
    listOfMovies = [[NSMutableArray alloc] init];
    
    [listOfMovies addObject:@"I Love Tony"];
    [listOfMovies addObject:@"美丽心灵"];
    [listOfMovies addObject:@"雨人"];
    [listOfMovies addObject:@"波拉克"];
    [listOfMovies addObject:@"暗物质"];
    [listOfMovies addObject:@"天才瑞普利"];
    [listOfMovies addObject:@"猫鼠游戏"];
    [listOfMovies addObject:@"香水"];
    [listOfMovies addObject:@"一级恐惧"];
    [listOfMovies addObject:@"心灵捕手"];
    [listOfMovies addObject:@"莫扎特传"];
    [listOfMovies addObject:@"证据"];
    [listOfMovies addObject:@"海上钢琴师"];
    [listOfMovies addObject:@"电锯惊魂"];
    [listOfMovies addObject:@"沉默的羔羊"];
    [listOfMovies addObject:@"非常嫌疑犯"];
    [listOfMovies addObject:@"寻找弗罗斯特"];
    
    
    self.edgesForExtendedLayout = UIRectEdgeNone;
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidUnload
{
    // 释放内存 释放内存，手持设备内存是不够的，不要忘记
    self.listOfMovies = nil;
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // 默认有些行，请删除或注 释 #warning Potentially incomplete method implementation.
    // 这里是返回的节点数，如果是简单的一组数据，此处返回1，如果有多个节点，就返回节点 数
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // 默认有此行，请删除或注 释 #warning Incomplete method implementation.
    // 这里是返回节点的行数
    return [self.listOfMovies count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    // 大家还记得，之前让你们设置的Cell Identifier 的 值，一定要与前面设置的值一样，不然数据会显示不出来
    static NSString *CellIdentifier = @"MovieCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    // 根据行获取数组中值
    NSString *value = [listOfMovies objectAtIndex:indexPath.row];
    
    // 把取得值，设置到Table中去
    cell.textLabel.text = value;
    
    return cell;
}

-(NSString*)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    // 返回顶部标题
    return @"电影列表";
}

-(NSString*)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section
{
    // 返回底部文字
    return @"作者：汪肄敏";
}

@end
