// 二元运算符的优先级演示
// Illustrate the use of various arithmetic operators

#import <Foundation/Foundation.h>
int main (int argc, char *argv[])
{
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];

    int a = 25;
    int b = 2;
    float c = 25.0;
    float d = 2.0;
    int result;

    // result = a-b;    //subtraction
    // NSLog(@"a - b = %i", result);

    // result = b * c; //multiplication
    // NSLog(@"b * c = %i", result);

    // result = a / c; //division
    // NSLog(@"a / c = %i", result);

    // result = a + b * c; //precedence 优先
    // NSLog(@"a + b * c = %i", result);

    NSLog(@"6 + a / 5 * b = %i", 6 + a / 5 * b);
    NSLog(@"a / b * b = %i", a / b * b);
    NSLog(@"c / d * d = %i", c / d * d);
    NSLog(@"-a * b = %i", -a * b);

    [pool drain];
    return 0;
}
