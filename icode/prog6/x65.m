// 用do语句颠倒显示数字的位数
#import <Foundation/Foundation.h>

int main (int argc, const char *argv[])
{
    @autoreleasepool {   
        int number, right_digit;
        NSLog(@"Enter your number.");
        scanf("%i", &number);
        if ( number >= 0 ) {
        do {
            right_digit = number % 10;
            NSLog(@"%i", right_digit);
            number /= 10;
        }
        while ( number != 0 );
        }
        else {
        number = -number;
        do {
            right_digit = number % 10;
            NSLog(@"%i", right_digit);
            number /= 10;
        }
        while ( number != 0 );
        NSLog(@"-");
        }
    }

    return 0;
}
