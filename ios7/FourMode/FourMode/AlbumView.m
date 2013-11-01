//
//  AlbumView.m
//  FourMode
//
//  Created by hey on 13-9-30.
//  Copyright (c) 2013年 heycool. All rights reserved.
//

#import "AlbumView.h"

@implementation AlbumView

// s4

// 你⾸首先需要注意的是coverImage实例变量。它表⽰示这个专辑的 封⾯面图。第⼆二个变量是⼀一个通过旋转来指⽰示封⾯面图正在下载的指⽰示器。
// 在初始化器的实现中你设置背景颜⾊色为⿊黑⾊色,创建了有5像素边框的图⽚片视 图,同时还创建了指⽰示器。

{
    UIImageView *coverImage;
    UIActivityIndicatorView *indicator;
}

- (id)initWithFrame:(CGRect)frame ablumCover:(NSString *)ablumCover
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.backgroundColor = [UIColor blackColor];
        coverImage = [[UIImageView alloc] initWithFrame:CGRectMake(5, 5, frame.size.width-10, frame.size.height-10)];
        [self addSubview:coverImage];
        
        indicator = [[UIActivityIndicatorView alloc] init];
        indicator.center = self.center;
        indicator.activityIndicatorViewStyle = UIActivityIndicatorViewStyleWhiteLarge;
        [indicator startAnimating];
        [self addSubview:indicator];
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
