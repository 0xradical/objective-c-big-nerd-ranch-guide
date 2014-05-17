//
//  main.c
//  Squarer
//
//  Created by thiago on 5/17/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#include <stdio.h>

int square(int number)
{
    return number * number;
}

int main(int argc, const char * argv[])
{

    int number = 5;
    
    printf("\"%d\" squared is \"%d\"\n", number, square(number));
    return 0;
}

