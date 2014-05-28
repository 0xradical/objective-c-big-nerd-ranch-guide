//
//  main.m
//  VowelCounter
//
//  Created by thiago on 5/27/14.
//  Copyright (c) 2014 bignerdranch. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+BNRVowelCounting.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSString *string = @"Hello, World!";
        NSLog(@"%@ has %d vowels", string, [string bnr_vowelCount]);
        
    }
    return 0;
}

