//
//  main.m
//  Stringz
//
//  Created by thiago on 5/24/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
//        NSMutableString *str
//            = [[NSMutableString alloc] init];
//        
//        NSError *error;
//        
//        for (int i = 0; i < 10; i++) {
//            [str appendString:@"Aaron is cool!\n"];
//        }
//        
//        BOOL success = [str writeToFile:@"/Users/thiago/tmp/cool.txt"
//                             atomically:YES
//                               encoding:NSUTF8StringEncoding
//                                  error:&error];
//        
//        if (success) {
//            NSLog(@"Done writing /Users/thiago/tmp/cool.txt");
//        } else {
//            NSLog(@"Writing /Users/thiago/tmp/cool.txt failed: %@", [error localizedDescription]);
//        }
        
        
        NSError *error;
        
        NSString *str
            = [[NSString alloc] initWithContentsOfFile:@"/etc/resolv.conf"
                                              encoding:NSASCIIStringEncoding
                                                 error:&error];
        if (!str) {
            NSLog(@"read failed: %@", [error localizedDescription]);
        } else {
            NSLog(@"resolv.conf looks like this: %@", str);
        }                
    }
    return 0;
}

