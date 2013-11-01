//
#import <Foundation/Foundation.h>

int main (int argc, char *argv[])
{
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    char c, d;
    c = 'd';
    d = c;
    NSLog(@"d = %c", d);
    [pool drain];
    return 0;

}

