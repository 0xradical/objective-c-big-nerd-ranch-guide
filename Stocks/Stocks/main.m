//
//  main.m
//  Stocks
//
//  Created by thiago on 5/21/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRForeignStockHolding.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        BNRStockHolding *stockOne = [[BNRStockHolding alloc] init];
        BNRStockHolding *stockTwo = [[BNRStockHolding alloc] init];
        BNRForeignStockHolding *stockThree = [[BNRForeignStockHolding alloc] init];
        
        [stockOne setPurchaseSharePrice:2.30];
        [stockOne setCurrentSharePrice:4.50];
        [stockOne setNumberOfShares:40];
        
        [stockTwo setPurchaseSharePrice:12.19];
        [stockTwo setCurrentSharePrice:10.56];
        [stockTwo setNumberOfShares:90];
        
        [stockThree setPurchaseSharePrice:45.10];
        [stockThree setCurrentSharePrice:49.51];
        [stockThree setNumberOfShares:210];
        [stockThree setConversionRate:0.94];
        
        NSMutableArray *stocks = [NSMutableArray array];
        
        [stocks addObject:stockOne];
        [stocks addObject:stockTwo];
        [stocks addObject:stockThree];
        
        for (BNRStockHolding *stock in stocks) {
            NSLog(@"Value of stock is %f", [stock valueInDollars]);
        }
        
    }
    return 0;
}

