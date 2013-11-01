// 声称三角数的程序
#import <Foundation/Foundation.h>
int main (int argc, const char *argv[])
{
	@autoreleasepool {
	    int n,triangularNumber;
		
		NSLog(@"TABLE OF TRIANGULAR NUMBERS");
		NSLog(@"n Sum from 1 to n");
		NSLog(@"--  -----------");
		
        n = 1;
		triangularNumber = 0;
        
        while ( n <= 10) {
            triangularNumber += n;
            NSLog(@" %2i          %i", n, triangularNumber );
            ++n;
        }        
	}	
	return 0;
}