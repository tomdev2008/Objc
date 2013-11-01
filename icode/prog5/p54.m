// 声称三角数的程序
#import <Foundation/Foundation.h>
int main (int argc, const char *argv[])
{
	@autoreleasepool {
	    int n, number, triangularNumber;
		
		NSLog(@"What triangular number do you want?");
		scanf("%i", &number);
		
		NSLog(@"TABLE OF TRIANGULAR NUMBERS");
		NSLog(@"%i Sum from 1 to %i", number, number);
		NSLog(@"--  -----------");
		
		triangularNumber = 0;
		
		for (n = 1; n != number; ++n) {
			triangularNumber += n;
			NSLog(@" %2i          %i", n, triangularNumber );
		}
	}
	
	return 0;
}