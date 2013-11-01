// 确定一年是否是闰年 能被4整除，但不能被100整除，或能被400整除
#import <Foundation/Foundation.h>
int main(int argc, const char *argv[])
{
    @autoreleasepool {
    int year;
    NSLog(@"输入你需要确定的年份: ");
    scanf("%i", &year);

    if ( year % 4 ==0 && year % 100 != 0 || year % 400 == 0)
        NSLog(@"%i年是闰年。", year);
    else
        NSLog(@"%i年不是闰年。", year);
    }
    return 0;
}
