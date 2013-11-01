//打印1～10之间的整数n和n的平方
#import <Foundation/Foundation.h>
int main (int argc, const char *argv[])
{
    @autoreleasepool {
        int n;
        NSLog(@" n      n的平方");
        for ( n = 1; n <= 10; ++n ) {
            NSLog(@"%2i     %i", n, n*n );
        }
    }
    return 0;
}