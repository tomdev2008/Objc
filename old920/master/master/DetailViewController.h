//
//  DetailViewController.h
//  master
//
//  Created by hey on 13-8-25.
//  Copyright (c) 2013年 hey. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
