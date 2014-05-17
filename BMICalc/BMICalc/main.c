//
//  main.c
//  BMICalc
//
//  Created by thiago on 5/17/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#include <stdio.h>
#include <time.h>

//typedef struct {
//    float heightInMeters;
//    int weightInKilos;
//} Person;
//
//
//float bodyMassIndex(Person p)
//{
//    return p.weightInKilos / (p.heightInMeters * p.heightInMeters);
//}

int main(int argc, const char * argv[])
{
//    Person mikey;
//    mikey.heightInMeters = 1.7;
//    mikey.weightInKilos = 96;
//    
//    Person aaron;
//    aaron.heightInMeters = 1.97;
//    aaron.weightInKilos = 84;
    
//    printf("mikey is %.2f meters tall\n", mikey.heightInMeters);
//    printf("mikey weighs %d kilograms\n", mikey.weightInKilos);
//    printf("aaron is %.2f meters tall\n", aaron.heightInMeters);
//    printf("aaron weighs %d kilograms\n", aaron.weightInKilos);
    
//    printf("mikey has a BMI of %.2f\n", bodyMassIndex(mikey));
//    printf("aaron has a BMI of %.2f\n", bodyMassIndex(aaron));
    
    long secondsSince1970 = time(NULL) + 4000000;
    struct tm future;
    
    localtime_r(&secondsSince1970, &future);
    
    printf("The time will be %d/%d/%d\n", future.tm_mday, future.tm_mon + 1, future.tm_year + 1900);
    
    return 0;
}

