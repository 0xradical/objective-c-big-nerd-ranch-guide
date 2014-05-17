//
//  main.c
//  Addresses
//
//  Created by thiago on 5/17/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{

    int i = 17;
    int *addressOfI = &i;
    
    printf("i stores its value at %p\n", addressOfI);
    printf("this function starts at %p\n", main);
    printf("the int stored at addressOfI is %d\n",*addressOfI);
    
    *addressOfI = 89;
    printf("now addressOfI is %d\n", *addressOfI);
    
    printf("An int is %zu bytes\n", sizeof(int));
    printf("A pointer is %zu bytes\n", sizeof(int *));
    printf("A float consumes %zu bytes\n", sizeof(float));
    return 0;
}

