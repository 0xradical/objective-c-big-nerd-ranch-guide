//
//  main.m
//  ChallengeComputerName
//
//  Created by thiago on 5/18/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSHost *host = [NSHost currentHost];
        NSString *name = [host localizedName];
        NSLog(@"My computer's name is %@",name);
        
    }
    return 0;
}

