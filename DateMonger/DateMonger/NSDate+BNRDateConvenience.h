//
//  NSDate+BNRDateConvenience.h
//  DateMonger
//
//  Created by thiago on 5/27/14.
//  Copyright (c) 2014 bignerdranch. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (BNRDateConvenience)

+ (NSDate *)bnr_midnightOnDay:(int)day
                        month:(int)month
                         year:(int)year;

@end
