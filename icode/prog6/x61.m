// 输入两个整数，测试value1 是否被 value2 整除，显示适当消息
#import <Foundation/Foundation.h>
int main(int argc, const char *argv[])
{
    @autoreleasepool {
        int value1, value2;
        NSLog(@"输入两个整数：");
        scanf(" %i %i", &value1, &value2);
        if ( value1 != 0 && value2 % value1 == 0) {
            NSLog(@"%i 能被 %i 整除。", value1, value2);
        }
         else
            NSLog(@"不能整除。");
    }
    return 0;
}
