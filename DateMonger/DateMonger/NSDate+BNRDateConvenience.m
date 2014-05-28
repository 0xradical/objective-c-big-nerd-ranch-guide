//
//  NSDate+BNRDateConvenience.m
//  DateMonger
//
//  Created by thiago on 5/27/14.
//  Copyright (c) 2014 bignerdranch. All rights reserved.
//

#import "NSDate+BNRDateConvenience.h"

@implementation NSDate (BNRDateConvenience)

+ (NSDate *)bnr_midnightOnDay:(int)day
                        month:(int)month
                         year:(int)year
{
    NSDateComponents *comp = [[NSDateComponents alloc] init];
    
    [comp setDay:day];
    [comp setMonth:month];
    [comp setYear:year];
    [comp setHour:0];
    [comp setMinute:0];
    [comp setSecond:0];
    
    NSCalendar *g = [NSCalendar calendarWithIdentifier:NSCalendarIdentifierGregorian];
    
    return [g dateFromComponents:comp];

}

@end
