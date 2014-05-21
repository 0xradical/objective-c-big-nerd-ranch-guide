//
//  main.m
//  BMITime
//
//  Created by thiago on 5/20/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNREmployee.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        BNREmployee *mikey = [[BNREmployee alloc] init];
        
        [mikey setWeightInKilos:96];
        [mikey setHeightInMeters:1.80];
        [mikey setEmployeeID:12];
        [mikey setHireDate:[NSDate dateWithNaturalLanguageString:@"Aug 2nd, 2010"]];
        
        float height = [mikey heightInMeters];
        int weight = [mikey weightInKilos];
        
        NSLog(@"mikey is %.2f meters tall and weighs %d kg", height, weight);
        NSLog(@"%@ hired on %@", mikey, [mikey hireDate]);
        
        float bmi = [mikey bodyMassIndex];
        double years = [mikey yearsOfEmployment];
        
        NSLog(@"BMI of %f, has worked with us for %.2f years", bmi, years);
        
    }
    return 0;
}

