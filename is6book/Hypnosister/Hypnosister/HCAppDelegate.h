//
//  HCAppDelegate.h
//  Hypnosister
//
//  Created by hey on 13-10-30.
//  Copyright (c) 2013年 HeyCool. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HCAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@end
