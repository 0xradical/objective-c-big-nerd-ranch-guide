//
//  main.c
//  Coolness
//
//  Created by thiago on 5/17/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{

    int i = 0;
    
    for (i = 0; i < 12; i++) {
        if (i % 3 == 0) {
            continue;
        }
        printf("Checking i = %d\n", i);
        
        if (i + 90 == i * i) {
            break;
        }
    }
    
    printf("The answer is %d\n",i);
    
    return 0;
}

