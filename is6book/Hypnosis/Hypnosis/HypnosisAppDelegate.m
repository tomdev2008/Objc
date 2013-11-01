//
//  HypnosisAppDelegate.m
//  Hypnosis
//
//  Created by hey on 13-10-31.
//  Copyright (c) 2013年 HeyCool. All rights reserved.
//

#import "HypnosisAppDelegate.h"
#import "HypnosisView.h"

@implementation HypnosisAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    
    // 使用 UIScrollView
    CGRect screenRect = [[self window] bounds];
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:screenRect];
    [[self window] addSubview:scrollView];
    
    CGRect bigRect = screenRect;
    bigRect.size.width *= 2.0;
    // bigRect.size.height *= 2.0;
    HypnosisView *view = [[HypnosisView alloc] initWithFrame:screenRect];
    
    [scrollView addSubview:view];
    
    screenRect.origin.x = screenRect.size.width;
    HypnosisView *anotherView = [[HypnosisView alloc] initWithFrame:screenRect];
    [scrollView addSubview:anotherView];
    [anotherView setBackgroundColor:[UIColor greenColor]];
    
    [scrollView setContentSize:bigRect.size];
    
//    HypnosisView *view = [[HypnosisView alloc] initWithFrame:[[self window] bounds]];
//    [[self window] addSubview:view];
    
    // 第一响应对象
    bool success = [view becomeFirstResponder];
    if (success) {
        NSLog(@"HypnosisView became the first responder");
    } else {
        NSLog(@"Could not become first responder");
    }
    
    
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

@end
