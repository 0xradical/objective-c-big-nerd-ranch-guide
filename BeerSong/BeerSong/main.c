//
//  main.c
//  BeerSong
//
//  Created by thiago on 5/17/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#include <stdio.h>

void singSongFor(int numberOfBottles)
{
    if (numberOfBottles == 0) {
        printf("There are no more bottles of beers on the wall.\n\n");
    }
    else {
        printf("%d bottles of beers on the wall. %d bottles of beer.\n", numberOfBottles, numberOfBottles);
        
        int oneFewer = numberOfBottles - 1;
    
        printf("Take one down, pass it around, %d bottles of beer on the wall.\n\n", oneFewer);
    
        singSongFor(oneFewer);
    
        printf("Put a bottle in the recycling, %d empty bottles in the bin.\n", numberOfBottles);
    }
}

int main(int argc, const char * argv[])
{

    singSongFor(4);
    return 0;
}

