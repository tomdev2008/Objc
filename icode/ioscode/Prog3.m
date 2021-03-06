// Firit program example
/*
 *两种注释
 */

// import 导入文件
#import <Foundation/Foundation.h>

//main 特殊名称 表示程序在何处开始执行
int main (int argc, const char * argv[])
{
    //为自动释放池在内存中保留了空间
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    //调用NSLog例程。传递给NSLog例程的参数。@"字符串" 称为常量NSString对象。

    //使用程序变量之前，都必须全部定义它们。
    int sum;

    sum = 50 + 25;
    NSLog (@"The sum of 50 and 25 is %i", sum);
    //下面一行语句释放已分配的内存
    [pool drain];
    //终止main的执行并送回（返回）一个状态值0。0意味程序正常结束。
    return 0;
}
