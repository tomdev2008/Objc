//
//  CCProps.h
//  PlayThePlane
//
//  Created by Rock_Liu on 13-8-21.
//  Copyright (c) 2013年 Rock_Liu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"

typedef enum {
    propsTypeBomb = 4,
    propsTypeBullet = 5
}propsType;

@interface CCProps : CCNode

@property (assign) CCSprite *prop;
@property (assign) propsType type;
- (void) initWithType:(propsType)type;
- (void) propAnimation;
@end
