// 通过继承来扩展：添加新方法
#import <Foundation/Foundation.h>
@interface Retangle : NSObject

@property int width, height;
-(int) area;
-(int) perimeter;
@end

@implementation Retangle

@synthesize width, height;
-(void) setWidth: (int) w andHeight: (int) h
{
    width = w;
    height = h;
}
-(int) area
{
    return width * height;
}
-(int) perimeter
{
    return (width + height) * 2;
}
@end

int main(int argc, const char *argv[])
{
    @autoreleasepool {
        Retangle *myRect = [[Retangle alloc] init];
        [myRect setWidth: 5 andHeight:8];

        NSLog(@"Retangle: w = %i, h = %i", myRect.width, myRect.height);
        NSLog(@"Area = %i, Perimeter = %i", myRect.area, myRect.perimeter);
    }
    return 0;
}
