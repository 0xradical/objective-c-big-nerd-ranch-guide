//
//  main.m
//  InterestingNames
//
//  Created by thiago on 5/20/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // Read in a file as a huge string (ignoring the possibility of an error
        NSString *nameString = [NSString stringWithContentsOfFile:@"/usr/share/dict/propernames"
                                                         encoding:NSUTF8StringEncoding
                                                            error:NULL];
        NSArray *names = [nameString componentsSeparatedByString:@"\n"];
        
        NSString *wordString = [NSString stringWithContentsOfFile:@"/usr/share/dict/words"
                                                         encoding:NSUTF8StringEncoding error:NULL];
        NSArray *words = [wordString componentsSeparatedByString:@"\n"];
        
        for (NSString *name in names) {
            for (NSString *word in words) {
                if ([word compare:[name lowercaseString]] == NSOrderedSame) {
                    NSLog(@"%@", word);
                    break;
                }
            }
        }
        
    }
    return 0;
}

