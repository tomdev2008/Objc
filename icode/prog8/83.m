// 正方形
#import <Foundation/Foundation.h>

#import "82.m"
@interface Square : Retangle

-(void) setSide: (int) s;
-(int) side;

@end

@implementation Square

-(void) setSide: (int) s
{
    [self setWidth: s andheight: s];
}

-(int) side
{
    return self.width;
}
@end

int main(int argc, const char *argv[])
{
    @autoreleasepool {
        Square *mySquare = [[Square alloc] init];
        [mySquare setWidth: 5];

        NSLog(@"Square s= %i",[mySquare side]);
        NSLog(@"Area = %i, Perimeter = %i", [mySquare area], [mySquare Perimeter]);

    }
    return 0;
}
