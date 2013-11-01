//
//  HCAppDelegate.h
//  FourMode
//
//  Created by hey on 13-9-30.
//  Copyright (c) 2013年 heycool. All rights reserved.
//

// 涉及到的三个⾓角⾊色如下:
// Model:模型保存应⽤用程序的数据,定义了怎么去操作它。例如在本应⽤用中模 型就是Album类。
// View:视图是模型的可视化表⽰示以及⽤用户交互的控件;基本上来说,所有的 UIView对象以及它的⼦子类都属于视图。在本应⽤用中AlbumView代表了视图。
// Controller:控制器是⼀一个协调所有⼯工作的中介者(Mediator)。它访问模型中 的数据并在视图中展⽰示它们,同时它们还监听事件和根据需要操作数据。你可 以猜猜哪个类是控制器吗?它正是:ViewController。

#import <UIKit/UIKit.h>

@interface HCAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@end
