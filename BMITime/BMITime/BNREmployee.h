//
//  BNREmployee.h
//  BMITime
//
//  Created by thiago on 5/21/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRPerson.h"
@class BNRAsset;

@interface BNREmployee : BNRPerson

@property (nonatomic) unsigned int employeeID;
@property (nonatomic) NSDate *hireDate;
// should still use copy
// because someone could set an NSMutableArray
// in the API, a user won't be able to use addObject
// generated automatically (because NSSet is immutable,
// and this method is not present)
// The user will have to use addAsset
@property (nonatomic, copy) NSSet *assets;

- (double)yearsOfEmployment;
- (void)addAsset:(BNRAsset *)a;
- (void)removeAsset:(BNRAsset *)a;
- (unsigned int)valueOfAssets;

@end
