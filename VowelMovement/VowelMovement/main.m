//
//  main.m
//  VowelMovement
//
//  Created by thiago on 5/24/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^ArrayEnumerationBlock)(id, NSUInteger, BOOL *);

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSArray *originalStrings
            = @[@"Sauerkraut",
                @"Raygun",
                @"Big Nerd Ranch",
                @"Mississipi"];
        
        NSLog(@"Original strings: %@", originalStrings);
        
        NSMutableArray *devowelizedStrings
            = [NSMutableArray array];
        
        NSArray *vowels
            = @[@"a", @"e", @"i", @"o", @"u"];
        
        [originalStrings enumerateObjectsUsingBlock:^(id string, NSUInteger idx, BOOL *stop) {
            NSRange yRange = [string rangeOfString:@"y"
                              
                                           options:NSCaseInsensitiveSearch];
            
            if (yRange.location != NSNotFound) {
                *stop = YES;
                return;
            }
            
            NSMutableString *newString
            = [NSMutableString stringWithString:string];
            
            for (NSString *vowel in vowels) {
                NSRange fullRange = NSMakeRange(0, [newString length]);
                
                [newString replaceOccurrencesOfString:vowel
                                           withString:@""
                                              options:NSCaseInsensitiveSearch
                                                range:fullRange];
                
            }
            
            [devowelizedStrings addObject:newString];

        }];
        
        NSLog(@"devowelized strings: %@", devowelizedStrings);
    }
    return 0;
}

