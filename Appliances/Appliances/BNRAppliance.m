//
//  BNRAppliance.m
//  Appliances
//
//  Created by thiago on 5/27/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import "BNRAppliance.h"

@implementation BNRAppliance

#pragma mark - Initializers

- (instancetype)init
{
    return [self initWithProductName:@"Unknown"];
}

// instancetype is like id
// in that it returns a pointer to an object
// except instancetype ensures the pointer
// to object points to only instances of the class
// that currently calls the method init
- (instancetype)initWithProductName:(NSString *)pn
{
    // in case there's change in self
    // due to memory allocation optimization
    // Apple requires to assign self
    // to the new value
    self = [super init];
    
    
    // in case the super init method
    // fails in allocating space
    // Apple recommends to check if
    // self is nil
    if (self) {
        self.productName = [pn copy];
        self.voltage = 120;
    }
    
    return self;
    
}

#pragma mark - Common methods

- (NSString *)description
{
    return [NSString stringWithFormat:@"<%@: %d volts>",
                                      self.productName,
                                      self.voltage];
}



@end
