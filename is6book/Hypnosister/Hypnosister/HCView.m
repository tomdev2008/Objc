//
//  HCView.m
//  Hypnosister
//
//  Created by hey on 13-10-30.
//  Copyright (c) 2013年 HeyCool. All rights reserved.
//

#import "HCView.h"

@implementation HCView



- (void)drawRect:(CGRect)rect
{
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGRect bounds = [self bounds];
    
    CGPoint center;
    center.x = bounds.origin.x + bounds.size.width / 2.0;
    center.y = bounds.origin.y + bounds.size.height / 2.0;
    
    float maxRadius = hypotf(bounds.size.width, bounds.size.height) / 2.0;
    
    CGContextSetLineWidth(ctx, 10);
    
//    CGContextSetRGBStrokeColor(ctx, 0.6, 0.6, 0.6, 1.0);
    // UIClolor 类 1
//    [[UIColor colorWithRed:0.6 green:0.6 blue:0.6 alpha:1] setStroke];
    // 2
    //[[UIColor lightGrayColor] setStroke];
    [[self circleColor] setStroke];
    
//    CGContextAddArc(ctx, center.x, center.y, maxRadius, 0.0, M_PI * 2.0, YES);
//    
//    CGContextStrokePath(ctx);
    
    for (float currentRadius = maxRadius; currentRadius > 0; currentRadius -= 20) {
        CGContextAddArc(ctx, center.x, center.y, currentRadius, 0.0, M_PI * 2.0, YES);
        
        CGContextStrokePath(ctx);
    }
    
    // 创建 NSString 对象
//    NSString *text = @"You are getting sleepy.";
    
    NSString *text = @"宝贝,呼呼 zzz！";
    
    // ios7 取消掉了
//    UIFont *font = [UIFont boldSystemFontOfSize:28];
    
    CGRect textRect;
    
//    textRect.size = [text sizeWithFont:font];

    textRect.size = [text sizeWithAttributes:@{NSFontAttributeName: [UIFont boldSystemFontOfSize:28]}];
    
    textRect.origin.x = center.x - textRect.size.width / 2.0;
    textRect.origin.y = center.y - textRect.size.height / 2.0;
    
    [[UIColor blackColor] setFill];
    
    CGSize offset = CGSizeMake(4, 3);
    
    CGColorRef color = [[UIColor darkGrayColor] CGColor];
    
    CGContextSetShadowWithColor(ctx, offset, 2.0, color);
    
    [text drawInRect:textRect withAttributes:@{NSFontAttributeName: [UIFont boldSystemFontOfSize:28]}];
    
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setBackgroundColor:[UIColor clearColor]];
        [self setCircleColor:[UIColor lightGrayColor]];
    }
    return self;
}

- (BOOL)canBecomeFirstResponder
{
    return YES;
}

- (void)motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event
{
    if (motion == UIEventSubtypeMotionShake) {
    NSLog(@"Device started shaking!");
        
    [self setCircleColor:[UIColor colorWithRed:1.0 green:0.6 blue:0.6 alpha:1.0]];

  
    }
}

//- (void)motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event
//{
//    [self setCircleColor:[UIColor lightGrayColor]];
//}

- (void)setCircleColor:(UIColor *)circleColor
{
    _circleColor = circleColor;
    [self setNeedsDisplay];
    
}

- (UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}

- (BOOL)prefersStatusBarHidden
{
    return YES;
}

@end
