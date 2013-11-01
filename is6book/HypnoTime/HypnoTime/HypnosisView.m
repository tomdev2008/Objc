//
//  HypnosisView.m
//  Hypnosis
//
//  Created by hey on 13-10-31.
//  Copyright (c) 2013年 HeyCool. All rights reserved.
//

#import "HypnosisView.h"

@implementation HypnosisView

- (void)drawRect:(CGRect)rect
{
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGRect bounds = [self bounds];
    
    // 根据bounds计算中心点
    CGPoint center;
    center.x = bounds.origin.x + bounds.size.width / 2.0;
    center.y = bounds.origin.y + bounds.size.height / 2.0;
    
    // 计算圆的半径，使其大小能够尽可能的撑满视图
    float maxRadius = hypotf(bounds.size.width, bounds.size.height) / 2.0;
    
    // 用10点的宽度绘制所有线条
    CGContextSetLineWidth(ctx, 10);
    // 将线条颜色设为浅灰( red/green/blue = 0.6, alpha = 1.0)
//    CGContextSetRGBStrokeColor(ctx, 0.6, 0.6, 0.6, 1.0);
    [[self circleColor] setStroke]; // 设置颜色更简单
    for (float currentRadius = maxRadius; currentRadius > 0; currentRadius -= 20) {
        // 将图形加入视图上下文 — 这行代码不会画出这个图形
        CGContextAddArc(ctx, center.x, center.y, currentRadius, 0.0, M_PI * 2, YES);
        // 执行绘图指令，根据当前的绘图状态画出上下文中的图形
        CGContextStrokePath(ctx);
    }
    
    ///////////////////////
    // 创建 NSString 对象
    NSString *text = @"You are getting sleepy.";
    
    CGRect textRect;
    // 计算绘制字符串所需的矩形大小
    textRect.size = [text sizeWithAttributes:@{NSFontAttributeName: [UIFont systemFontOfSize:28.0f]}];
    // 要将字符串绘制在视图正中
    textRect.origin.x = center.x - textRect.size.width / 2.0;
    textRect.origin.y = center.y - textRect.size.height /2.0;
    
    // 将当前上下文的填充色设置为黑色
    [[UIColor blackColor] setFill];
    // 根据字符串的绘制位置，创建阴影的偏移量，数值为向右偏4点，向下偏3点
    CGSize offset = CGSizeMake(4, 3);
    // 阴影的颜色是深灰
    CGColorRef color = [[UIColor darkGrayColor] CGColor];
    // 将以上得到的结构设置为当前上下文的阴影参数
    // 后续的绘图操作都会附带阴影效果
    CGContextSetShadowWithColor(ctx, offset, 2.0, color);
    // 绘制字符串
    [text drawInRect:textRect withAttributes:@{NSFontAttributeName: [UIFont systemFontOfSize:28.0f]}];
    
    
    //////////////////
//    UISegmentedControl *sc = [[UISegmentedControl alloc] initWithItems:@[@"1", @"2", @"3"]];
//    CGRect scRect;
//    scRect.size = [sc sizeThatFits:offset];
//    scRect.origin.x = center.x - scRect.size.width / 1.5;
//    scRect.origin.y = center.y - scRect.size.height / 1.5;
//    [sc drawRect:scRect];
//    
//    UISegmentedControl *segmetedControl = [[UISegmentedControl alloc] initWithFrame:CGRectMake(80.0f, 8.0f, 200.0f, 30.0f)];
//    UIBarButtonItem *segItem = [[UIBarButtonItem alloc] initWithCustomView:segmetedControl];
    
    
    
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // 将 HypnosisView 实例的背景色设置为透明色
        [self setBackgroundColor:[UIColor clearColor]];
        [self setCircleColor:[UIColor lightGrayColor]];
        
        
    }
    return self;
}

// 第一响应
- (BOOL)canBecomeFirstResponder
{
    return YES;
}

// 摇动检测
- (void)motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event
{
    if (motion == UIEventSubtypeMotionShake) {
    NSLog(@"Device started shaking!");
    [self setCircleColor:[UIColor redColor]];
    }
}
// 发送 setNeedsDisplay 重绘视图
- (void)setCircleColor:(UIColor *)circleColor
{
    _circleColor = circleColor;
    [self setNeedsDisplay];
}

@end
