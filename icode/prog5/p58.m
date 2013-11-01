// 颠倒显示数字的位数
#import <Foundation/Foundation.h>

int main ( int argc, const char *argv[])
{
	@autoreleasepool {
	    int number, right_digit;
		NSLog(@"Enter your number.");
		scanf("%i", &number);
		
		while (number != 0) {
			right_digit = number % 10;
			NSLog(@"%i", right_digit);
			number /= 10;
		}
	}
	
	return 0;
}
