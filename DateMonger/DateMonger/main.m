//
//  main.m
//  DateMonger
//
//  Created by thiago on 5/27/14.
//  Copyright (c) 2014 bignerdranch. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSDate+BNRDateConvenience.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSLog(@"%@", [NSDate bnr_midnightOnDay:16
                                         month:9
                                          year:1987]);
        
    }
    return 0;
}

