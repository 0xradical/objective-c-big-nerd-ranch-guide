//
//  main.m
//  ChallengeHowManySecondsAlive
//
//  Created by thiago on 5/18/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSDateComponents *comps = [[NSDateComponents alloc] init];
        
        [comps setYear:1987];
        [comps setMonth:9];
        [comps setDay:16];
        [comps setHour:0];
        [comps setMinute:0];
        [comps setSecond:0];
        
        NSCalendar *g = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
        
        NSDate *dateOfBirth = [g dateFromComponents:comps];
        NSDate *now = [[NSDate alloc] init];
        
        unsigned long secondsAlive = [now timeIntervalSinceDate:dateOfBirth];
        
        NSLog(@"I've been alive %lu seconds", secondsAlive);
    }
    return 0;
}

