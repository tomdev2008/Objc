// 此程序引入while语句

#import <Foundation/Foundation.h>

int main (int argc, const char *argv[]) {
	@autoreleasepool {
	    int count = 1;
		while ( count <= 5) {
			NSLog(@"%i", count );
			++count;
		}
	}
	
	return 0;
}