// 香烟对象 5个方法 买烟 拆烟 点烟 弹灰 灭烟
#import <Foundation/Foundation.h>

//---- @interface section ----
@interface Cigarette: NSObject
{

}

-(void) buyCigrette;
-(void) openCigarette;
-(void) fireCigarette;
-(void) filpCigarette;
-(void) extinguishCig;
@end

//---- @implementation section ----

@implementation Cigarette

-(void) buyCigrette
{
    NSLog (@"我要买烟");
}
-(void) openCigarette
{

}
-(void) fireCigarette
{

}
-(void) filpCigarette
{

}
-(void) extinguishCig
{

}
@end
//---- program section ----
// program部分包含解决特定问题的代码，可以跨越多个文件
int main (int argc, char *argv[])
{
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    Cigarette *myCigarette;

    myCigarette = [[Cigarette alloc] init];
    //简写形式，把分配和初始化直接合并到声明行
    //Fraction *myFraction = [[Fraction alloc] init]

    // Create an instance of a Fraction
    // alloc (allocate的缩写)方法保证对象的所有实例变量都状态
    //myFraction = [Fraction alloc];
    // init方法用于初始化类的对象
    //myFraction = [myFraction init];

    // Set fraction to 1/3
    //[myFraction setNumerator: 1];
    //[myFraction setDenominator: 3];

    // Display the fraction using the print method
    NSLog (@"The value of myCigarette is: 我的香烟!!!!\n");
    [myCigarette buyCigrette];
    [myCigarette release];


    [pool drain];
    return 0;
}
