//
//  BNROwnedAppliance.m
//  Appliances
//
//  Created by thiago on 5/27/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import "BNROwnedAppliance.h"


@interface BNROwnedAppliance ()
{
    NSMutableSet *_ownerNames;
}
@end


@implementation BNROwnedAppliance

- (instancetype)initWithProductName:(NSString *)pn
{
    return [self initWithProductName:pn
                          firstOwnerName:nil];
}

- (instancetype)initWithProductName:(NSString *)pn
                         firstOwnerName:(NSString *)n
{
    self = [super initWithProductName:pn];
    
    if (self) {
        _ownerNames = [[NSMutableSet alloc] init];
        
        if (n) {
            [_ownerNames addObject:n];
        }
    }
    
    return self;
}

- (void)addOwnerName:(NSString *)n
{
    [_ownerNames addObject:n];
}

- (void)removeOwnerName:(NSString *)n
{
    [_ownerNames removeObject:n];
}

- (NSSet *)ownerNames
{
    return [_ownerNames copy];
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"<%@: %d volts, owned by %@>",
            self.productName,
            self.voltage,
            self.ownerNames];
}

@end
