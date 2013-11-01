// code 15 - 1
// 使用 Number 数字对象

#import <Foundation/Foundation.h>
int main(int argc, const char *argv[])
{
    @autoreleasepool {
        NSNumber    *myNumber, *floatNumber, *intNumber;

        // 通过 typedef 语句为数据类型另外指派一个名字。
        // typedef int Counter; // 定义 Counter 等价于数据类型 int
        // NSInteger 不是一个对象，是基本数据类型typedef。实际是 int
        NSInteger   myInt;

        // integer 型值
        
        intNumber = [NSNumber numberWithInteger: 100];
        myInt = [intNumber integerValue];
        NSLog(@"%li", (long) myInt);

        // long 型值

        myNumber = [NSNumber numberWithLong: 0xabcdef];
        NSLog(@"%lx", [myNumber longValue]);

        // char 型值

        myNumber = [NSNumber numberWithChar: 'X'];
        NSLog(@"%c", [myNumber charValue]);

        // float 型值

        floatNumber = [NSNumber numberWithFloat: 100.00];
        NSLog(@"%g", [floatNumber floatValue]);

        // double

        myNumber = [NSNumber numberWithDouble: 12345e+15];
        NSLog(@"%lg", [myNumber doubleValue]);

        // 发生错误
        //
        NSLog(@"%li", (long) [myNumber integerValue]);

        // 验证两个Number是否相等

        if ([intNumber isEqualToNumber: floatNumber] == YES)
            NSLog(@"Numbers are equal");
        else
            NSLog(@"Numbers are not equal");

        // 验证一个Number是否小于、等于或大于另一个Number

        if ([intNumber compare: myNumber] == NSOrderedAscending)
            NSLog(@"First number is less less than second");
    }
    return 0;
}
