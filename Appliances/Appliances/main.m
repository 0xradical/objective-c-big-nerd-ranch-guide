//
//  main.m
//  Appliances
//
//  Created by thiago on 5/27/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRAppliance.h"
#import "BNROwnedAppliance.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        BNRAppliance *a = [[BNRAppliance alloc] init];
        
        NSLog(@"a is %@", a);
        
        a.productName = @"Washing Machine";
        a.voltage = 240;
        
        NSLog(@"a is %@", a);
        
        BNROwnedAppliance *oa = [[BNROwnedAppliance alloc] init];
        
        NSLog(@"oa is %@", oa);
        
        oa.productName = @"Blender";
        oa.voltage = 240;
        
        [oa addOwnerName:@"Thiago"];
        [oa addOwnerName:@"Mario"];
        
        NSLog(@"oa is %@", oa);
    }
    return 0;
}

