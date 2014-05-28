//
//  BNROwnedAppliance.h
//  Appliances
//
//  Created by thiago on 5/27/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import "BNRAppliance.h"

@interface BNROwnedAppliance : BNRAppliance

@property (nonatomic, readonly) NSSet *ownerNames;

// the designated initializer
- (instancetype)initWithProductName:(NSString *)pn
                     firstOwnerName:(NSString *)n;

- (void)addOwnerName:(NSString *)n;

- (void)removeOwnerName:(NSString *)n;

@end
