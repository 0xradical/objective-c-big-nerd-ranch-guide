//
//  main.m
//  Stocks
//
//  Created by thiago on 5/21/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRForeignStockHolding.h"
#import "BNRPortfolio.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        BNRPortfolio *portfolio
            = [[BNRPortfolio alloc] init];
        
        BNRStockHolding *holdingOne
            = [[BNRStockHolding alloc] init];
        BNRStockHolding *holdingTwo
            = [[BNRStockHolding alloc] init];
        BNRForeignStockHolding *holdingThree
            = [[BNRForeignStockHolding alloc] init];
        BNRForeignStockHolding *holdingFour
            = [[BNRForeignStockHolding alloc] init];
        
        [holdingOne setPurchaseSharePrice:2.30];
        [holdingOne setCurrentSharePrice:4.50];
        [holdingOne setNumberOfShares:40];
        [holdingOne setSymbol:@"XYZ"];
        
        [portfolio addHolding:holdingOne];
        
        [holdingTwo setPurchaseSharePrice:12.19];
        [holdingTwo setCurrentSharePrice:10.56];
        [holdingTwo setNumberOfShares:90];
        [holdingTwo setSymbol:@"ABC"];
        
        [portfolio addHolding:holdingTwo];
        
        [holdingThree setPurchaseSharePrice:45.10];
        [holdingThree setCurrentSharePrice:49.51];
        [holdingThree setNumberOfShares:210];
        [holdingThree setConversionRate:0.94];
        [holdingThree setSymbol:@"LMN"];

        [portfolio addHolding:holdingThree];
        
        [holdingFour setPurchaseSharePrice:20.10];
        [holdingFour setCurrentSharePrice:90.32];
        [holdingFour setNumberOfShares:100];
        [holdingFour setConversionRate:0.80];
        [holdingFour setSymbol:@"TBD"];
        
        [portfolio addHolding:holdingFour];
        
        NSLog(@"%@", portfolio);
        
        NSLog(@"Top three most valuable: %@", [portfolio topThreeMostValuable]);
        
        NSLog(@"Sorted portfolio: %@", [portfolio holdingsSortedAlphabetically]);
        
    }
    
    return 0;
}

