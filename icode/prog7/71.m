#import <Foundation/Foundation.h>
@interface Fraction : NSObject

@property int numerator, denominator;
/*
-(void) setNumerator: (int) n;
-(void) setDenominator: (int) d;
-(int) numerator;
-(int) denominator;
*/
-(void) print;
-(void) setTo: (int) n over: (int) d;
-(void) set: (int) n : (int) d;
-(double) convertToNum;
-(void) add: (Fraction *) f;
-(Fraction *) add2: (Fraction *) f;
-(Fraction *) subtract: (Fraction *) f;
-(Fraction *) multiply: (Fraction *) f;
-(Fraction *) divide: (Fraction *) f;
-(void) reduce;

@end

@implementation Fraction

@synthesize numerator, denominator;
/*
{
    int numerator;
    int denominator;
}
*/
-(void) print
{
    NSLog(@"%i/%i", numerator, denominator);
}
/*
-(void) setNumerator: (int) n
{
    numerator = n;
}
-(void) setDenominator: (int) d
{
    denominator = d;
}
-(int) numerator
{
    return numerator;
}
-(int) denominator
{
    return denominator;
}
*/
-(double) convertToNum
{
    if (denominator != 0)
        return (double) numerator / denominator;
    else
        return NAN;
}

-(void) setTo: (int) n over: (int) d
{
    numerator = n;
    denominator = d;
}
-(void) set: (int) n : (int) d
{
    numerator = n;
    denominator = d;
}
-(void) add: (Fraction *) f
{

    // 添加两个分数
    // a/b + c/d = ( (a*d) + (b*c)) / (b*d)
    numerator = numerator * f.denominator + denominator * f.numerator;
    denominator = denominator * f.denominator;
    [self reduce]; // 关键词 self 用来指明对象是当前方法的接收者
}
-(Fraction *) add2: (Fraction *) f
{
    // 存储相加后的结果
    Fraction *result = [[Fraction alloc] init];
    result.numerator = numerator * f.denominator + denominator * f.numerator;
    result.denominator = denominator * f.denominator;
    [result reduce];
    return result;
}
-(Fraction *) subtract: (Fraction *) f
{
    // 减去消息接收者的参数
    // a/b - c/d = a*d -b*c
    Fraction *result = [[Fraction alloc] init];
    result.numerator = numerator * f.denominator - denominator * f.numerator;
    result.denominator = denominator * f.denominator;
    [result reduce];
    return result;
}
-(Fraction *) multiply: (Fraction *) f
{
    // 消息接收者乘以参数
    // a/b * c/d = a*c / (b*d)
    Fraction *result = [[Fraction alloc] init];
    result.numerator = numerator * f.numerator; // result. 不能少
    result.denominator = denominator * f.denominator;
    [result reduce];
    return result;
}
-(Fraction *) divide: (Fraction *) f
{
    // 消息接收者除以参数
    // a/b / (c/d) = bc / ad
    Fraction *result = [[Fraction alloc] init];
    result.numerator = denominator * f.numerator;
    result.denominator = numerator * f.denominator;
    [result reduce];
    return result;
}
-(void) reduce
{
    int u = numerator;
    int v = denominator;
    int temp;
    while ( v != 0 ) {
        temp = u % v;
        u = v;
        v = temp;
    }
    numerator /= u;
    denominator /= u;
}
@end
int main(int argc, const char *argv[])
{
    @autoreleasepool {
        Fraction *aFraction = [[Fraction alloc] init];
        Fraction *bFraction = [[Fraction alloc] init];

        Fraction *resultFraction;
/*
        [aFraction setNumerator: 1]; // 第一个分数是 1/4
        [aFraction setDenominator: 4];
        aFraction.numerator= 2;
        aFraction.denominator= 3;

        [aFraction setTo: 100 over: 200]; // setTo 方法 传递多个参数
*/
        [aFraction set: -1 :2 ]; // set: : 不带参数名方法传递多个参数
        [bFraction set: -1 : 4];
/*
        NSLog(@"%i - %i", aFraction.numerator, aFraction.denominator );

        [aFraction print];
        NSLog(@"=");
        NSLog(@"%g", [aFraction convertToNum]);
*/
        [aFraction print];
        NSLog(@"-");
        [bFraction print];
        NSLog(@"=");

        resultFraction = [aFraction divide: bFraction];
        [resultFraction print];
        //[aFraction reduce];
        //[aFraction print];
        //
        //resultFraction = [aFraction add2: bFraction];
        //[resultFraction print];

    }
    return 0;
}
