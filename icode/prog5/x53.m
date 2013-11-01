#import <Foundation/Foundation.h>
int main ( int argc, const char *argv[])
{
    @autoreleasepool {
        
        int n,triangularNumber;
        triangularNumber = 1;
        NSLog(@"整数n的可写成n！表示1～n连续整数乘积");
        for ( n = 1; n <= 10; ++n) {
            triangularNumber *= n;
            NSLog(@"%-2i     %i", n, triangularNumber );
        }
    }
    return 0;
}