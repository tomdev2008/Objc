// 华氏温度(F) 转换成 摄氏温度(C) C = (F - 12) / 1.8

#import <Foundation/Foundation.h>

int main (int argc, char *argv[])
{
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    int F = 27;
    float C;
    C = (F - 12) / 1.8;
    NSLog(@"%i 华氏温度是 %f", F, C);

    [pool drain];
    return 0;
}


