//
//  ViewController.m
//  Json
//
//  Created by hey on 13-8-27.
//  Copyright (c) 2013年 hey. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnPressJson:(id)sender {
    NSError *error;
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:@"http://m.weather.com.cn/data/101180601.html"]];
    NSData *response = [NSURLConnection sendSynchronousRequest:request returningResponse:nil error:nil];
    NSDictionary *weatherDic = [NSJSONSerialization JSONObjectWithData:response options:NSJSONReadingMutableLeaves error:&error];
    NSDictionary *weatherInfo = [weatherDic objectForKey:@"weatherinfo"];
    self.txtView.text = [NSString stringWithFormat:@"今天是 %@  %@  %@  的天气状况是：%@  %@ ",[weatherInfo objectForKey:@"date_y"],[weatherInfo objectForKey:@"week"],[weatherInfo objectForKey:@"city"], [weatherInfo objectForKey:@"weather1"], [weatherInfo objectForKey:@"temp1"]];
    NSLog(@"weatherInfo字典里面的内容为--》%@", weatherDic );  
    
}
@end
