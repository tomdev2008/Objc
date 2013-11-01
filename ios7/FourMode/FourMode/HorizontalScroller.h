//
//  HorizontalScroller.h
//  FourMode
//
//  Created by hey on 13-9-30.
//  Copyright (c) 2013年 heycool. All rights reserved.
//

#import <UIKit/UIKit.h>

@class HorizontalScroller;

@protocol HorizontalScrollerDelegate <NSObject>

@required
- (NSInteger)numberOfViewsForHorizontalScroller:(HorizontalScroller*)scroller;

- (UIView*)horizontalScroller:(HorizontalScroller*)scroller viewAtIndex:(int)index;

- (void)horizontalSroller:(HorizontalScroller*)scroller clickedViewAtIndex:(int)index;

@optional
- (NSInteger)initialViewIndexForHorizontalScroller:(HorizontalScroller*)scroller;

@end

@interface HorizontalScroller : UIView

@property (assign) id<HorizontalScrollerDelegate> delegate;

- (void)reload;

@end