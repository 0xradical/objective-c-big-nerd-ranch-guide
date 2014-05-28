//
//  BNRTimer.m
//  Callbacks
//
//  Created by thiago on 5/24/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import "BNRLogger.h"

@implementation BNRLogger

- (NSString *)lastTimeString
{
    static NSDateFormatter *dateFormatter = nil;
    
    if (!dateFormatter) {
        dateFormatter = [[NSDateFormatter alloc] init];
        
        [dateFormatter setTimeStyle:NSDateFormatterMediumStyle];
        [dateFormatter setDateStyle:NSDateFormatterMediumStyle];
        
        NSLog(@"created dateFormatter");
    }
    
    return [dateFormatter stringFromDate:self.lastTime];
}


- (void)updateLastTime:(NSTimer *)t
{
    NSDate *now = [NSDate date];
    
//    [self setLastTime:now];
    [self willChangeValueForKey:@"lastTime"];
    _lastTime = now;
    [self didChangeValueForKey:@"lastTime"];
    
    NSLog(@"Just set time to %@", self.lastTimeString);
}

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
    NSLog(@"received %lu bytes", [data length]);
    
    if(!_incomingData){
        _incomingData = [[NSMutableData alloc] init];
    }
    
    [_incomingData appendData:data];
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    NSLog(@"Got it all!");
    
    NSString *string = [[NSString alloc] initWithData:_incomingData
                                             encoding:NSUTF8StringEncoding];
    
    _incomingData = nil;
    
    NSLog(@"string has %lu characters", [string length]);
    
    NSLog(@"The whole string is %@", string);
}

- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error
{
    NSLog(@"connection failed: %@", [error localizedDescription]);
    
    _incomingData = nil;
}

//- (void)zoneChange:(NSNotification *)note
//{
//    NSLog(@"The system zone has changed!");
//}

@end
