//
//  HCViewController.m
//  FourMode
//
//  Created by hey on 13-9-30.
//  Copyright (c) 2013年 heycool. All rights reserved.
//

#import "HCViewController.h"
#import "LibraryAPi.h"
#import "Album+TableRepresentation.h"

@interface HCViewController () <UITableViewDataSource, UITableViewDelegate>
{
    UITableView *dataTable;
    NSArray *allAlbums;
    NSDictionary *currentAlbumData;
    int currentDataIndex;
}

@end

@implementation HCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // 1. 改变背景⾊色为漂亮的藏⻘青⾊色
    // 2. 通过API获取专辑数据。你不需要直接使⽤用PersistencyManager。
    // 3. 创建UITableView,声明viewController为UITableView的委托和数据源;因此 viewController将提供所有的被UITableView需要的信息。
    
    // 1
    self.view.backgroundColor = [UIColor colorWithRed:0.76f green:0.81f blue:0.87f alpha:1];
    currentDataIndex = 1;
    
    // 2
    allAlbums = [[LibraryAPi sharedInstance] getAlbums];
    
    // 3
    dataTable = [[UITableView alloc] initWithFrame:CGRectMake(0, 120, self.view.frame.size.width, self.view.frame.size.height-120) style:UITableViewStyleGrouped];
    dataTable.delegate = self;
    dataTable.dataSource = self;
    dataTable.backgroundView = nil;
    [self.view addSubview:dataTable];
    
    [self showDataForAlbumAtIndex:currentDataIndex];
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)showDataForAlbumAtIndex:(int)albumIndex
{
    if (albumIndex < allAlbums.count) {
        Album *album = allAlbums[albumIndex];
        currentAlbumData = [album tr_tableRepresentation];
    } else {
        currentAlbumData = nil;
    }
    [dataTable reloadData];
}

- (NSInteger)tableView:(UITableView*)tableView numberOfRowsInSection:(NSInteger)section
{
    return [currentAlbumData[@"title"] count];
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"cell"];
    }
    cell.textLabel.text = currentAlbumData[@"titles"] [indexPath.row];
    cell.detailTextLabel.text = currentAlbumData[@"values"] [indexPath.row];
    
    return cell;
}
@end
