//
//  BNRStockHolding.h
//  Stocks
//
//  Created by thiago on 5/21/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRStockHolding : NSObject
{
    float _purchaseSharePrice;
    float _currentSharePrice;
    int _numberOfShares;
}

- (float)purchaseSharePrice;
- (void)setPurchaseSharePrice:(float)psp;

- (float)currentSharePrice;
- (void)setCurrentSharePrice:(float)csp;

- (int)numberOfShares;
- (void)setNumberOfShares:(int)nos;

- (float)costInDollars;
- (float)valueInDollars;

@end
