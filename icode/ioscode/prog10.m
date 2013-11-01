// XYpoint类，保存笛卡尔坐标（x，y），x，y为整数

#import <Foundation/Foundation.h>

//---- @interface section ----
@interface XYpoint: NSObject
{
    int numX;
    int numY;
}

-(void) print;
-(void) setX: (int) x;
-(void) setY: (int) y;
@end

//---- @implementation section ----
@implementation XYpoint
-(void) print
{
    NSLog (@"%i,%i", numX,numY);
}
-(void) setX: (int) x
{
    numX = x;
}
-(void) setY: (int) y
{
    numY = y;
}
@end

//---- program section ----
int main (int argc, char *argv[])
{
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    XYpoint *myXYpoint = [[XYpoint alloc] init];
    [myXYpoint setX: 9];
    [myXYpoint setY: 15];
    
    NSLog (@"XYpoint is:");
	[myXYpoint print];
    [myXYpoint release];
    [pool drain];

    return 0;

}
