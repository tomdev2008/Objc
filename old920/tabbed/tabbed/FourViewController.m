//
//  FourViewController.m
//  tabbed
//
//  Created by hey on 13-8-25.
//  Copyright (c) 2013年 hey. All rights reserved.
//

#import "FourViewController.h"

@interface FourViewController ()


@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UILabel *label;
- (IBAction)changeGreeting:(id)sender;
@end

@implementation FourViewController

- (IBAction)changeGreeting:(id)sender {
    self.userName = self.textField.text;
    
    NSString *nameString = self.userName;
    if ([nameString length] == 0) {
        nameString = @"I love you";
    }
    
    NSString *greeting = [[NSString alloc] initWithFormat:@"杨书周, %@!", nameString];
    self.label.text = greeting;
}

- (BOOL)textFieldShouldReturn:(UITextField *)theTextField {
    if (theTextField == self.textField) {
        [theTextField resignFirstResponder];
    }
    return YES;
}
@end
