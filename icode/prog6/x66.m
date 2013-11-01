#import <Foundation/Foundation.h>
int main(int argc, const char *argv[])
{
    @autoreleasepool {
        int number, right_digit;
        NSLog(@"Enter your number.");
        scanf("%i", &number);
        if ( number < 0 )
            number = -number;
        if ( number == 0 )
            NSLog(@"zero");
        while (number != 0 ) {
            right_digit = number % 10;
            switch (right_digit) {
                case 0:
                    NSLog(@"zero");
                    break;
                case 1:
                    NSLog(@"one");
                    break;
                case 2:
                    NSLog(@"two");
                    break;
                case 3:
                    NSLog(@"three");
                    break;
                case 4:
                    NSLog(@"four");
                    break;
                case 5:
                    NSLog(@"five");
                    break;
                case 6:
                    NSLog(@"six");
                    break;
                case 7:
                    NSLog(@"severn");
                    break;
                case 8:
                    NSLog(@"eight");
                    break;
                case 9:
                    NSLog(@"nine");
                    break;
                default:
                    NSLog(@"Unknown");
                    break;

            }
            number /= 10;

        }
    }
    return 0;
}
