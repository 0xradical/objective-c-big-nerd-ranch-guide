//
//  BNRObserver.m
//  Callbacks
//
//  Created by thiago on 5/27/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import "BNRObserver.h"

@implementation BNRObserver

- (void)observeValueForKeyPath:(NSString *)keyPath
                      ofObject:(id)object
                        change:(NSDictionary *)change
                       context:(void *)context
{
    NSString *oldValue = [change objectForKey:NSKeyValueChangeOldKey];
    NSString *newValue = [change objectForKey:NSKeyValueChangeNewKey];
    
    NSLog(@"Observed: %@ of %@ was changed from %@ to %@", keyPath, object, oldValue, newValue);
}

+ (NSSet *)keyPathsForValuesAffectingLastTimeString
{
    return [NSSet setWithObject:@"lastTime"];
}

@end
