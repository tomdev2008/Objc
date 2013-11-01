// 计算整数各位上数字的和
#import <Foundation/Foundation.h>
int main ( int argc, const char *argv[])
{
    @autoreleasepool {
        int number, right_u, tall;
        NSLog(@"What number do you want?");
        scanf("%i", &number);

        right_u = 0;
        tall = 0;
        NSLog(@"%i", number);
        while ( number != 0 ) {
            right_u = number % 10;
            tall += right_u;
            number /= 10;
        }
        NSLog(@"%i", number); // number 为啥是0？？？
        NSLog(@"The number %i tall is %i", number, tall ); 
    }
    return 0;
}
