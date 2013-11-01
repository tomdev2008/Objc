#import <Foundation/Foundation.h>
@interface Fraction : NSObject

-(void) print;
-(void) setNumerator: (int) n;
-(void) setDenominator: (int) d;
-(int) numerator;
-(int) denominator;
-(double) convertToNum;

@end

@implementation Fraction
{
    int numerator;
    int denominator;
}
-(void) print
{
    if (denominator == 1)
        NSLog(@"%i", numerator);
    else if ( numerator == 0)
        NSLog(@"0");
    else
        NSLog(@"%i/%i", numerator, denominator);
}

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
-(double) convertToNum
{
    if (denominator != 0)
        return (double) numerator / denominator;
    else
        return NAN;
}
@end
int main(int argc, const char *argv[])
{
    @autoreleasepool {
        Fraction *aFraction = [[Fraction alloc] init];
        Fraction *bFraction = [[Fraction alloc] init];
        Fraction *cFraction = [[Fraction alloc] init];
        Fraction *dFraction = [[Fraction alloc] init];

        [aFraction setNumerator: 1]; // 第一个分数是 1/4
        [aFraction setDenominator: 4];
        [bFraction setNumerator: 5]; // 第一个分数是 5/1
        [bFraction setDenominator: 1];
        [cFraction setNumerator: 0]; // 第一个分数是 0/4
        [cFraction setDenominator: 4];
        [dFraction setNumerator: 1]; // 第一个分数是 1/0
        [dFraction setDenominator: 0];

        [aFraction print];
        NSLog(@"=");
        NSLog(@"%g", [aFraction convertToNum]);

        [bFraction print];
        NSLog(@"=");
        NSLog(@"%g", [bFraction convertToNum]);

        [cFraction print];
        NSLog(@"=");
        NSLog(@"%g", [cFraction convertToNum]);

        [dFraction print];
        NSLog(@"=");
        NSLog(@"%g", [dFraction convertToNum]);
    }
    return 0;
}
