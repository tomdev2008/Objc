//
//  HorizontalScroller.m
//  BlueLibrary
//
//  Created by hey on 13-9-19.
//  Copyright (c) 2013年 Eli Ganem. All rights reserved.
//

#import "HorizontalScroller.h"



// 1

#define VIEW_PADDING 10

#define VIEW_DIMENSIONS 100

#define VIEWS_OFFSET 100



// 2

@interface HorizontalScroller () <UIScrollViewDelegate>

@end


// 3

@implementation HorizontalScroller

{
    
    UIScrollView *scroller;
    
}

//
- (id)initWithFrame:(CGRect)frame

{
    
    self = [super initWithFrame:frame];
    
    if (self)
        
    {
        
        scroller = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, frame.size.width, frame.size.height)];
        
        scroller.delegate = self;
        
        [self addSubview:scroller];
        
        UITapGestureRecognizer *tapRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(scrollerTapped:)];
        
        [scroller addGestureRecognizer:tapRecognizer];
        
    }  
    
    return self;  
    
}

//

- (void)scrollerTapped:(UITapGestureRecognizer*)gesture
{
    CGPoint location = [gesture locationInView:gesture.view];
    // we can't use an enumerator here, because we don't want to enumerate over ALL of the UIScrollView subviews.
    // we want to enumerate only the subviews that we added
    for (int index=0; index<[self.delegate numberOfViewsForHorizontalScroller:self]; index++)
    {
        UIView *view = scroller.subviews[index];
        if (CGRectContainsPoint(view.frame, location))
        {
            [self.delegate horizontalScroller:self clickedViewAtIndex:index];
            [scroller setContentOffset:CGPointMake(view.frame.origin.x - self.frame.size.width/2 + view.frame.size.width/2, 0) animated:YES];
            break;
        }
    }
}

@end
