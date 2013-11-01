// Simple program to work with fractions
#import <Foundation/Foundation.h>

//---- @interface section ----
@interface Fraction: NSObject
{
    int numerator;
    int denominator;

}

-(void) print;
-(void) setNumerator: (int) n;
-(void) setDenominator: (int) d;

@end

//---- @implementation section ----

@implementation Fraction
-(void) print
{
    NSLog (@"%i/%i", numerator, denominator);
}

-(void) setNumerator: (int) n
{
    numerator = n;
}

-(void) setDenominator: (int) d
{
    denominator = d;
}
@end
//---- program section ----
// program部分包含解决特定问题的代码，可以跨越多个文件
int main (int argc, char *argv[])
{
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    //定义一个名为myFraction变量，myFraction是一个Fraction类型的对象。（＊号必需）
    Fraction *myFraction;

    //简写形式，把分配和初始化直接合并到声明行
    //Fraction *myFraction = [[Fraction alloc] init]

    // Create an instance of a Fraction
    // alloc (allocate的缩写)方法保证对象的所有实例变量都状态
    myFraction = [Fraction alloc];
    // init方法用于初始化类的对象
    myFraction = [myFraction init];

    // Set fraction to 1/3
    [myFraction setNumerator: 1];
    [myFraction setDenominator: 3];

    // Display the fraction using the print method
    NSLog (@"The value of myFraction is:");
    [myFraction print];
    [myFraction release];


    [pool drain];
    return 0;
}
