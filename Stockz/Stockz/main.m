//
//  main.m
//  Stockz
//
//  Created by thiago on 5/25/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSMutableArray *stocks
            = [[NSMutableArray alloc] init];
        
        NSMutableDictionary *stock;
        
        stock = [NSMutableDictionary dictionary];
        
        [stock setObject:@"AAPL"
                  forKey:@"symbol"];
        
        [stock setObject:[NSNumber numberWithInt:200]
                  forKey:@"shares"];
        
        [stock setObject:[NSNumber numberWithDouble:25.0]
                  forKey:@"purchase price"];
        
        NSDate *date = [NSDate dateWithNaturalLanguageString:@"December 1st, 2010"];
        
        [stock setObject:date
                  forKey:@"purchase date"];
        
        [stock setObject:@YES forKey:@"in a fund"];        
        
        [stocks addObject:stock];
        
        stock = [NSMutableDictionary dictionary];
        
        [stock setObject:@"GOOG"
                  forKey:@"symbol"];
        
        [stock setObject:[NSNumber numberWithInt:160]
                  forKey:@"shares"];
        
        [stocks addObject:stock];
        
        [stocks writeToFile:@"/Users/thiago/tmp/stocks.plist"
                 atomically:YES];
        
        
        NSArray *stockList = [NSArray arrayWithContentsOfFile:@"/Users/thiago/tmp/stocks.plist"];
        
        for (NSDictionary *d in stockList) {
            NSLog(@"I have %@ shares of %@", [d objectForKey:@"shares"], [d objectForKey:@"symbol"]);
        }
        
    }
    return 0;
}

