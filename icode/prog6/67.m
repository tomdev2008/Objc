// 对单个字符进行分类的程序
//  从键盘输入
#import <Foundation/Foundation.h>
int main(int argc, const char *argv[])
{
    @autoreleasepool {
        char c;
        NSLog(@"输入一个字符：");
        scanf(" %c", &c);
        if (('a' <= c && c <= 'z') || ('A' <= c && c <= 'Z'))
            NSLog(@"这是一个字母。");
        else if ( '0' <= c && c <= '9')
            NSLog(@"这是一个数字。");
        else
            NSLog(@"这是一个特殊字符。");
    }
    return 0;
}
