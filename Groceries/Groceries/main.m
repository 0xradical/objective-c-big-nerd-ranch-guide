//
//  main.m
//  Groceries
//
//  Created by thiago on 5/20/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSMutableArray *groceryList = [NSMutableArray array];
        [groceryList addObject:@"Loaf of bread"];
        [groceryList addObject:@"Container of milk"];
        [groceryList addObject:@"Stick of butter"];
        
        
        NSLog(@"My grocery list is:");
        
        for (NSString *item in groceryList) {
            NSLog(@"%@", item);
        }
    }
    return 0;
}

