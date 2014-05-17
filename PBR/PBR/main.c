//
//  main.c
//  PBR
//
//  Created by thiago on 5/17/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#include <stdio.h>
#include <math.h>

void metersToFeetAndInches(double meters, unsigned int *ftPtr, double *inPtr)
{
    double feet;
    double inches;

    inches = modf(meters * 3.281, &feet) * 12.0;
    
    if (ftPtr) {
        printf("Storing %.0f to the address %p\n", feet, ftPtr);
        *ftPtr = feet;
    }
    
    if (inPtr) {
        printf("Storing %.2f to the address %p\n", inches, inPtr);
        *inPtr = inches;
    }
}

int main(int argc, const char * argv[])
{

    double meters = 1.70;
    unsigned int feet;
    double inches;
    
    metersToFeetAndInches(meters, &feet, &inches);
    
    printf("%.1f meters is equal to %d feet and %.1f inches.", meters, feet, inches);
    
    return 0;
}

