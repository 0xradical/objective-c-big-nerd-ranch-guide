//
//  BNRPortfolio.h
//  Stocks
//
//  Created by thiago on 5/22/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>
@class BNRStockHolding;

@interface BNRPortfolio : NSObject
{
    NSMutableArray *_holdings;
}

@property (nonatomic) NSArray *holdings;

- (float)totalValue;
- (void)addHolding:(BNRStockHolding *)h;

@end
