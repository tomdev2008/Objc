//
//  ViewController.m
//  HelloWorld
//
//  Created by hey on 13-9-22.
//  Copyright (c) 2013年 heycool. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (IBAction)ChangeGreeting:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UILabel *lebel;

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

- (IBAction)ChangeGreeting:(id)sender {
    self.userName = self.textField.text;
    NSString *nameString = self.userName;
    if (nameString.length == 0) {
        nameString = @"World";
    }
    NSString *greeting = [[NSString alloc] initWithFormat:@"Hello, %@!", nameString];
    self.lebel.text = greeting;
}

- (BOOL)textFieldShouldReturn:(UITextField *)theTextField
{
    if (theTextField == self.textField) {
        [theTextField resignFirstResponder];
        //[self ChangeGreeting:self]; // 键盘done
    }
    return YES;
}
@end
