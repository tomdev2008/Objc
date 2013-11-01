// 实现正负的程序 if -- else if --else
#import <Foundation/Foundation.h>
int main(int argc, const char *argv[])
{
    @autoreleasepool {
        int number, sign;
        NSLog(@"Please typr in a number:");
        scanf("%i", &number);
/*
        if ( number < 0 )
            sign = -1;
        else if ( number == 0 )
            sign = 0;
        else
            sign = 1;
*/
//
        sign = ( number < 0 ) ? -1 : ( ( number ==0 ) ? 0 : 1 );
//
//
        NSLog(@"Sign = %i", sign);
    }
    return 0;
}
