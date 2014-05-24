//
//  BNRStockHolding.m
//  Stocks
//
//  Created by thiago on 5/21/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import "BNRStockHolding.h"

@implementation BNRStockHolding

- (float)costInDollars
{
    return [self purchaseSharePrice] * [self numberOfShares];
}

- (float)valueInDollars
{
    return [self currentSharePrice] * [self numberOfShares];
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"<StockHolding %@ (US$ %.2f)>", [self symbol], [self valueInDollars]];
}

@end
