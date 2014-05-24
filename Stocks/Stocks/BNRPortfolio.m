//
//  BNRPortfolio.m
//  Stocks
//
//  Created by thiago on 5/22/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import "BNRPortfolio.h"
#import "BNRStockHolding.h"

@interface BNRPortfolio ()

@property (nonatomic, copy) NSMutableArray *holdings;

@end


@implementation BNRPortfolio

- (void)addHolding:(BNRStockHolding *)h
{
    if (!_holdings) {
        _holdings = [[NSMutableArray alloc] init];
    }
    
    [_holdings addObject:h];
}

- (void)removeHolding:(BNRStockHolding *)h
{
    [_holdings removeObject:h];
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

// challenge top holdings
- (NSArray *)topThreeMostValuable
{
    NSSortDescriptor *vid
        = [NSSortDescriptor sortDescriptorWithKey:@"valueInDollars"
                                        ascending:NO];
    NSArray *sorted
        = [self.holdings sortedArrayUsingDescriptors:@[vid]];
    
    return [sorted subarrayWithRange:NSMakeRange(0, 3)];
    
}

// sorted holdings
- (NSArray *)holdingsSortedAlphabetically
{
    NSSortDescriptor *alpha
        = [NSSortDescriptor sortDescriptorWithKey:@"symbol"
                                        ascending:YES];
    
    return [self.holdings sortedArrayUsingDescriptors:@[alpha]];
    
}

@end
