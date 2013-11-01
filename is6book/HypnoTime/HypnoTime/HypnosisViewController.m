//
//  HypnosisViewController.m
//  HypnoTime
//
//  Created by hey on 13-10-31.
//  Copyright (c) 2013年 HeyCool. All rights reserved.
//

#import "HypnosisViewController.h"
#import "HypnosisView.h"

@implementation HypnosisViewController

- (void)loadView
{
    [super viewDidLoad];
    CGRect frame = [[UIScreen mainScreen] bounds];
    HypnosisView *v = [[HypnosisView alloc] initWithFrame:frame];
    [self setView:v];
    
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nil bundle:nil];
    if (self) {
        UITabBarItem *tbi = [self tabBarItem];
        [tbi setTitle:@"Hypnosis"];
        
        UIImage *i = [UIImage imageNamed:@"Arrows_In.png"];
        [tbi setImage:i];
    }
    return self;
}

- (void)viewDidLoad
{
//    UISegmentedControl *segmentedControl = [[UISegmentedControl alloc] initWithItems:@[@"1", @"2", @"3"]];
//    segmentedControl.frame = CGRectMake(0, 0, 400, 30);
//    self.navigationItem.titleView = segmentedControl;

    UISegmentedControl *segmentedControl = [[UISegmentedControl alloc] initWithItems:[NSArray arrayWithObjects:@"Blue", @"black", @"red", nil]];
    //创建一个UISegmentedControl对象：segmentedControl，并初始化（initWithItems:(NSArray *)items）
    segmentedControl.frame = CGRectMake(10, 0, 300, 44);
    //设置它的位置，虽然它的默认高为44，但也不能写成0，最好写成44
    segmentedControl.enabled = YES;
    //让这个分段控制器可以选择，默认为YES
    segmentedControl.momentary = NO;
    //momentary默认为NO，如果为YES，会立即消失被选中的状态（蓝色)，但不会影响它产生的事件
    //segmentedControl.segmentedControlStyle = UISegmentedControlStylePlain;
    //设置它的风格，为普通的风格，默认的也是这个
    segmentedControl.tintColor = [UIColor blueColor];
    //设置它的色彩，不过这个色彩只对它的UISegmentedControlStyleBar和UISegmentedControlStyleBezeled有用
    segmentedControl.selectedSegmentIndex = 0;
    //初始化被选中的segment为第1段
    //[segmentedControl addTarget:self action:@selector(select:) forControlEvents:UIControlEventValueChanged];
    //给对象绑定一个事件
    [self.view addSubview:segmentedControl];
    //把对象加入到view
    
}

- (void)select:(id)sender
{
    UISegmentedControl *control = (UISegmentedControl *)sender;
    switch (control.selectedSegmentIndex) {
        case 0:
//            [self.view setCircleColor:[UIColor blueColor]];
            break;
            
        default:
            break;
    }
    
}


@end
