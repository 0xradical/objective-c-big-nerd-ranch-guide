//
//  main.m
//  BMITime
//
//  Created by thiago on 5/20/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNREmployee.h"
#import "BNRAsset.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
                
        NSMutableArray *employees = [[NSMutableArray alloc] init];
        NSMutableDictionary *executives = [[NSMutableDictionary alloc] init];
        
        for (int i = 0; i < 10; i++) {
            BNREmployee *employee = [[BNREmployee alloc] init];
            
            [employee setWeightInKilos:90 + i];
            [employee setHeightInMeters:1.8 - i/10.0];
            [employee setEmployeeID:i];
            [employees addObject:employee];
            
            if (i == 0) {
                [executives setObject:employee
                               forKey:@"CEO"];
            }
            
            if (i == 1) {
                [executives setObject:employee
                               forKey:@"CTO"];
            }
        }
        
        NSMutableArray *allAssets = [[NSMutableArray alloc] init];
        
        for (int i = 0; i < 10; i++) {
            BNRAsset *asset = [[BNRAsset alloc] init];
            
            NSString *currentLabel = [NSString stringWithFormat:@"Laptop %d", i];
            
            [asset setLabel:currentLabel];
            [asset setResaleValue:350  + i * 17];
            
            NSUInteger randomIndex = random() % [employees count];
            
            BNREmployee *randomEmployee = [employees objectAtIndex:randomIndex];
            
            [randomEmployee addAsset:asset];
            [allAssets addObject:asset];
        }
        
        NSSortDescriptor *voa = [NSSortDescriptor sortDescriptorWithKey:@"valueOfAssets"
                                                              ascending:YES];
        NSSortDescriptor *eid = [NSSortDescriptor sortDescriptorWithKey:@"employeeID"
                                                              ascending:YES];
        
        [employees sortUsingDescriptors:@[voa, eid]];
        
        NSLog(@"Employees: %@", employees);
        
        NSLog(@"Giving up ownership of one employee");
        
        [employees removeObjectAtIndex:5];
        
        NSLog(@"allAssets: %@", allAssets);
        
        NSLog(@"executives: %@", executives);
        
        NSLog(@"CEO: %@", executives[@"CEO"]);
        
        executives = nil;
        
        NSPredicate *predicate = [NSPredicate predicateWithFormat:@"holder.valueOfAssets > 70"];
        
        NSArray *toBeReclaimed = [allAssets filteredArrayUsingPredicate:predicate];
        
        NSLog(@"toBeReclaimed: %@", toBeReclaimed);
        
        toBeReclaimed = nil;
                
        NSLog(@"Giving up ownership of arrays");
        
        allAssets = nil;
        employees = nil;
                
    }
    
    return 0;
}

