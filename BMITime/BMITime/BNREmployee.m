//
//  BNREmployee.m
//  BMITime
//
//  Created by thiago on 5/21/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import "BNREmployee.h"

@implementation BNREmployee

- (double)yearsOfEmployment
{
    if ([self hireDate]) {
        NSDate *now = [NSDate date];
        NSTimeInterval secs = [now timeIntervalSinceDate:[self hireDate]];
        
        return secs / 31557600.0;
    } else {
        return 0;
    }
}

- (float)bodyMassIndex
{
    float normalBMI = [super bodyMassIndex];
    
    return normalBMI * 0.9;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"<Employee %d>", [self employeeID]];
}

@end
