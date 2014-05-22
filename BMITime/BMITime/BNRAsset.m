//
//  BNRAsset.m
//  BMITime
//
//  Created by thiago on 5/22/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import "BNRAsset.h"

@implementation BNRAsset

- (NSString*)description
{
    return [NSString stringWithFormat:@"<%@: %u>", [self label], [self resaleValue]];
}

- (void)dealloc
{
    NSLog(@"deallocation %@", self);
}

@end
