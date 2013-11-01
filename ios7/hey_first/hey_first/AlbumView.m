//
//  AlbumView.m
//  hey_first
//
//  Created by hey on 13-9-20.
//  Copyright (c) 2013年 hey. All rights reserved.
//

#import "AlbumView.h"

@implementation AlbumView
/*
 你⾸首先需要注意的是coverImage实例变量。它表⽰示这个专辑的 封⾯面图。第⼆二个变量是⼀一个通过旋转来指⽰示封⾯面图正在下载的指⽰示器。
 在初始化器的实现中你设置背景颜⾊色为⿊黑⾊色,创建了有5像素边框的图⽚片视图,同时还创建了指⽰示器。
 
 注意:你可能想知道为什么私有变量在实现⽂文件中定义,⽽而不是在接口文件中?这是因为AlbumView以外的类不需要知道这些变量的存在,这些变量仅仅
 只在类内部函数使⽤用。如果你在开发给其它开发者使⽤用的框架,这个约定就显得⼗十分重要了。
 */
{
    UIImageView *coverImage;
    UIActivityIndicatorView *indicator;
}

- (id)initWithFrame:(CGRect)frame albumCover:(NSString *)albumCover
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.backgroundColor = [UIColor blackColor];
        // the coverImage has a 5 pixels margin from its frame
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
