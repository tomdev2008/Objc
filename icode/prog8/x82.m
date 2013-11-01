// 代码8-2
#import <Foundation/Foundation.h>

// XYPoint 类定义
// @class XYPoint

@interface XYPoint : NSObject
@property float x, y;
-(void) setX: (float) xVar andY: (float) yVar;
@end

@implementation XYPoint
@synthesize x, y;
-(void) setX: (float) xVar andY: (float) yVar
{
    x = xVar;
    y = yVar;
}

@end

// Rectangle 长方形面积 和周长

@interface Rectangle : NSObject
@property float width, height;

-(XYPoint *) origin;
-(void) setOrigin: (XYPoint *) pt;
-(float) area;
-(float) perimeter;
-(void) setwidth: (float) w andHeight: (float) h;
@end

@implementation Rectangle
{
    XYPoint *origin;
}
@synthesize width, height;
-(void) setOrigin: (XYPoint *) pt
{
    origin = pt;
}
-(XYPoint *) origin
{
    return origin;
}
-(void) setwidth: (float) w andHeight: (float) h
{
    width = w;
    height = h;
}
-(float) area
{
    return width * height;
}
-(float) perimeter
{
    return (width + height) * 2;
}
@end

// Square 处理正方形 Rectangle的子类

@interface Square : Rectangle
-(void) setSide: (float) s;
-(float) side;
@end
@implementation Square
-(void) setSide: (float) s
{
    [self setwidth: s andHeight: s];
}
-(float) side
{
    return self.width;
}

@end
int main(int argc, const char *argv[])
{
    @autoreleasepool {
        Rectangle *myRect = [[Rectangle alloc] init];
        Square *mySquare = [[Square alloc] init];
        XYPoint *myPoint = [[XYPoint alloc] init];

        [myRect setwidth: 5 andHeight: 8];

        [mySquare setSide: 5];

        [myPoint setX: 100 andY: 200];
        
        myRect.origin = myPoint;

        NSLog(@"Rectangle: w = %f, h = %f", myRect.width, myRect.height);
        NSLog(@"Origin at (%f, %f)", myRect.origin.x, myRect.origin.y);
        NSLog(@"Area = %f, perimeter = %f", [myRect area], [myRect perimeter]);

        NSLog(@"Square s = %f", [mySquare side]);
        NSLog(@"Area = %f, Perimeter = %f", [mySquare area], [mySquare perimeter] );
    }
    return 0;
}
