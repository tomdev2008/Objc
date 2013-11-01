// while
#import <Foundation/Foundation.h>
int main (int agrc, const char *argv[])
{
    @autoreleasepool {
        int n, triangularNumber;
        
        n = 1;
        triangularNumber = 0;
        while ( n <= 200) {
            triangularNumber += n;
            ++n;
        }
        NSLog(@"The 200th triangular number is %i", triangularNumber );
    }
    return 0;
}