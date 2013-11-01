//
//  YSZAppDelegate.m
//  HeavyRotation
//
//  Created by hey on 13-11-1.
//  Copyright (c) 2013年 HeyCool. All rights reserved.
//

#import "YSZAppDelegate.h"

@implementation YSZAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    
    // 得到 UIDevice 对象
    UIDevice *device = [UIDevice currentDevice];
    // 要求 UIDevice 对象开启加速感应器并监视方向变化
    [device beginGeneratingDeviceOrientationNotifications];
    // 得到应用的 NSNotificationCenter 对象
    NSNotificationCenter *nc = [NSNotificationCenter defaultCenter];
    // 将 self 注册为观察器
    [nc addObserver:self selector:@selector(orientationChanged:) name:UIDeviceOrientationDidChangeNotification object:device];
    
    
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

#pragma mark
- (void)orientationChanged:(NSNotification *)note
{
    // 向终端输出当前的方向常量
    NSLog(@"orientationChanged: %d", [[note object] orientation]);
}

@end
