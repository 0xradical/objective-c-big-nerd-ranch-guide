//
//  BNRPortfolio.m
//  Stocks
//
//  Created by thiago on 5/22/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import "BNRPortfolio.h"
#import "BNRStockHolding.h"

@implementation BNRPortfolio

- (void)addHolding:(BNRStockHolding *)h
{
    if (!_holdings) {
        _holdings = [[NSMutableArray alloc] init];
    }
    
    [_holdings addObject:h];
}

- (float)totalValue
{
    float sum;
    
    for (BNRStockHolding *h in _holdings) {
        sum += [h valueInDollars];
    }
    
    return sum;
}

- (NSString *)description
{
    return [_holdings description];
}

@end
