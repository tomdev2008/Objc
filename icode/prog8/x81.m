// 代码8-1
#import <Foundation/Foundation.h>

// ClassA 的声明和定义

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

// ClassB 的声明和定义

@interface ClassB : ClassA
-(void) printVar;
@end

@implementation ClassB
-(void) printVar
{
    NSLog(@"x= %i", x);
}
@end

//  ClassC 的声明和定义
@interface ClassC : ClassB
-(void) initVar;
@end
@implementation ClassC
-(void) initVar
{
    x = 300;
}

@end
int main(int argc, const char *argv[])
{
    @autoreleasepool {
        ClassA *a = [[ClassA alloc] init];
        ClassB *b = [[ClassB alloc] init];
        ClassC *c = [[ClassC alloc] init];
        [a initVar];
//[a printVar];
        [b initVar];    // 将使用继承的方法
        [b printVar];   // 显示x的值
        [c initVar];
        [c printVar];
    }
    return 0;
}
