//
//  main.m
//  BMITime
//
//  Created by thiago on 5/20/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRPerson.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        BNRPerson *mikey = [[BNRPerson alloc] init];
        
        [mikey setWeightInKilos:96];
        [mikey setHeightInMeters:1.80];
        
        float height = [mikey heightInMeters];
        int weight = [mikey weightInKilos];
        
        NSLog(@"mikey is %.2f meters tall and weighs %d kg", height, weight);
        
        float bmi = [mikey bodyMassIndex];
        
        NSLog(@"mikey has a BMI of %f", bmi);
        
    }
    return 0;
}

