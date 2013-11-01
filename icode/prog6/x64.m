// 评估简单表达式的值

// 实现 Calculator 类
#import <Foundation/Foundation.h>
@interface Calculator : NSObject

// 累加器方法
-(void) setAccumulator: (double) value;
-(void) clear;
-(double) accumulator;

// 算术方法
-(void) add: (double) value;
-(void) subtract: (double) value;
-(void) multiply: (double) value;
-(void) divide: (double) value;

-(double) S: (double) value;
@end

@implementation Calculator
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
    if (value != 0.0)
        accumulator /= value;
    else {
        NSLog(@"Division by zero.");
        accumulator = NAN;
    }
}
-(double) S: (double) value
{
    return value;
}
@end
/*
int main(int argc, const char *argv[])
{
    @autoreleasepool {
        double value1,value2;
        char operator;

        Calculator *deskCalc = [[Calculator alloc] init];

        NSLog(@"Type in your expression.");
        scanf("%lf %c %lf", &value1, &operator, &value2);

        [deskCalc setAccumulator: value1];
        if (operator == '+')
            [deskCalc add: value2];
        else if (operator == '-')
            [deskCalc subtract: value2];
        else if (operator == '*')
            [deskCalc multiply: value2];
        else if (operator == '/')
                [deskCalc divide: value2];
        else {
            NSLog(@"Unknown operator.");
            [deskCalc setAccumulator:0];
        }
        NSLog(@"%.2f", [deskCalc accumulator]);
    }
    return 0;
}
*/

int main(int argc, const char *argv[])
{
    @autoreleasepool {
        double value1;
        char operator;
        Calculator *deskCalc = [[Calculator alloc] init];

        [deskCalc setAccumulator: 0];


        while (operator != 'E') {

        NSLog(@"Type in your expression.");
        scanf("%lf %c", &value1, &operator);
        switch (operator) {
            case '+':
                [deskCalc add: value1];
                break;
            case '-':
                [deskCalc subtract: value1];
                break;
            case '*':
                [deskCalc multiply: value1];
                break;
            case '/':
                [deskCalc divide: value1];
                break;
            case 'S':
                [deskCalc S: value1];
                break;
            case 'E':
                operator = 'E';
                break;
            default:
                NSLog(@"Unknown operator.");
                [deskCalc setAccumulator: 0];
                break;
        }
        NSLog(@"%.2f", [deskCalc accumulator]);
        }


    }
    return 0;
}
