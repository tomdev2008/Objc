// 

#import <Foundation/Foundation.h>

int main (int argc, char *argv[])
{
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    float x = 2.55;
    
    NSLog(@"3*x*x*x - 5*x*x + 6 = %f", 3*x*x*x - 5*x*x + 6);

    [pool drain];
    return 0;
}


