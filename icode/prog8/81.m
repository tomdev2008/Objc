#import <Foundation/Foundation.h>

@interface ClassA : NSObject
{
    int x;
}

-(void) initVar;

@end

@implementation ClassA
-(void) initVar
{
    x = 100;
}
@end

@interface ClassB : ClassA

-(void) printVar;
@end

@implementation ClassB
-(void) printVar
{
    NSLog(@"x = %i", x);
}
@end

int main(int argc, const char *argv[])
{
    @autoreleasepool {
        ClassB *B = [[ClassB alloc] init];
        [B initVar];
        [B printVar];
    }
    return 0;
}
