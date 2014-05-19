//
//  main.m
//  ReadlineChallenge
//
//  Created by thiago on 5/19/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <readline/readline.h>
#import <stdlib.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSLog(@"Where should I start counting from?");
        NSString *beginning = [NSString stringWithUTF8String:readline(NULL)];
        
        for(long i = [beginning integerValue]; i >= 0; i = i - 3)
        {
            NSLog(@"%ld",i);
            
            if (i % 5 == 0) {
                NSLog(@"Found one!");
            }
        }
        
        NSLog(@"Hello, World!");
        
    }
    return 0;
}

