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

- (float)totalValue;
- (void)addHolding:(BNRStockHolding *)h;
- (void)removeHolding:(BNRStockHolding *)h;

@end
