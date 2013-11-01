// 创建Calcullator类 它是一个简单的四则运算计算器，用来执行加、减、乘、除运算。
#import <Foundation/Foundation.h>
@interface Calcullator : NSObject

// 累加方法
-(void) setAccumulator: (double) value;
-(void) clear;
-(double) accumulator;

//算术方法
-(void) add: (double) value;
-(void) subtract: (double) value;
-(void) multiply: (double) value;
-(void) divide: (double) value;
@end

@implementation Calcullator
{
	double accumulator;
}

-(void) setAccumulator: (double) value
{
	accumulator = value;
}
-(void) clear
{
	accumulator = 0;
}
-(double) accumulator
{
	return accumulator;
}
-(void) add: (double) value
{
	accumulator += value;
}
-(void) subtract: (double) value
{
	accumulator -= value;
}
-(void) multiply: (double) value
{
	accumulator *= value;
}
-(void) divide: (double) value
{
	accumulator /= value;
}
@end

int main (int argc, const char *argv[])
{
	@autoreleasepool {
	    Calcullator *deskCalc = [[Calcullator alloc] init];
		
		[deskCalc setAccumulator: 100.0];
		[deskCalc add: 200.];
		[deskCalc clear];
		[deskCalc divide: 15.0];
		[deskCalc subtract: 10.0];
		[deskCalc multiply: 5];
		// [deskCalc clear];
		NSLog(@"The result is %g",[deskCalc accumulator]);
	}
	return 0;
}