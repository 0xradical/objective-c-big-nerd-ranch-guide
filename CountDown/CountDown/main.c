//
//  main.c
//  CountDown
//
//  Created by thiago on 5/17/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#include <readline/readline.h>
#include <stdio.h>
#include <stdlib.h>

int main(int argc, const char * argv[])
{
    printf("Where should I start counting from?");
    
    char *beginning = readline(NULL);

    for(int i = atoi(beginning); i >= 0; i = i - 3)
    {
        printf("%d\n",i);
        
        if (i % 5 == 0) {
            printf("Found one!\n");
        }
    }
    return 0;
}

