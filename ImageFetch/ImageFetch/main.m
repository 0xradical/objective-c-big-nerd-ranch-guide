//
//  main.m
//  ImageFetch
//
//  Created by thiago on 5/24/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSURL *url
            = [NSURL URLWithString:@"http://www.google.com/images/srpr/logo11w.png"];
        
        NSURLRequest *request
            = [NSURLRequest requestWithURL:url];
        
        NSError *error;
        
        NSData *data = [NSURLConnection sendSynchronousRequest:request
                                             returningResponse:NULL
                                                         error:&error];
        
        if (!data) {
            NSLog(@"fetch failed: %@", [error localizedDescription]);
            
            return 1;
        }
        
        NSLog(@"The file is %lu bytes", (unsigned long)[data length]);
        
        BOOL written = [data writeToFile:@"/Users/thiago/tmp/google.png"
                                 options:NSDataWritingAtomic
                                   error:&error];
        
        if (!written) {
            NSLog(@"write failed: %@", [error localizedDescription]);
            
            return 1;
        }
        
        NSLog(@"Sucess!");
        
        NSData *readData
            = [NSData dataWithContentsOfFile:@"/Users/thiago/tmp/google.png"];
        
        NSLog(@"The file read from the disk has %lu bytes", [readData length]);
        
    }
    return 0;
}

