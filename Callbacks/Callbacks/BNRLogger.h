//
//  BNRTimer.h
//  Callbacks
//
//  Created by thiago on 5/24/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRLogger : NSObject <NSURLConnectionDelegate, NSURLConnectionDataDelegate>
{
    NSMutableData *_incomingData;
}

@property (nonatomic) NSDate *lastTime;

- (NSString *)lastTimeString;
- (void)updateLastTime:(NSTimer *)t;

@end
