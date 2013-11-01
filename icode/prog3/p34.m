#import <Foundation/Foundation.h>
int main (int argc, const char *argv[])
{
	@autoreleasepool {
		// 	    char c, d;
		// c = 'd';
		// d = c;
		// NSLog(@"d = %c", d);
		
		// double x;
		// x = 2.55;
		// NSLog(@"The result is %f",3*x*x*x - 5*x*x + 6);
		
		double result;
		result = (3.31e-8 + 2.01e-7) / (7.16e-6 + 2.01e-8);
		NSLog(@"The result is %e", result);
	}
	return 0;
}