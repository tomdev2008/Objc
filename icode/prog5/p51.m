// 计算第200个三角的程序
// 介绍for语句
#import <Foundation/Foundation.h>

int main (int argc, const char *argv[])
{
	@autoreleasepool {
	    int n, triangularNumber;
		triangularNumber = 0;
		for ( n = 1; n <= 200; n = n + 1 )
			triangularNumber += n;
		NSLog(@"The 200th triangular number is %i", triangularNumber );
	}
	return 0;
}
