// 

#import <Foundation/Foundation.h>

int main (int argc, char *argv[])
{
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    double ans;
    ans = (3.31e-8 + 2.01e-7) / (7.16e-6 + 2.01e-8);
    
    NSLog(@"第四章第五题答案 %ef", ans);

    [pool drain];
    return 0;
}


