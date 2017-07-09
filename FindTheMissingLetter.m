//
//  FindTheMissingLetter.m
//  
//
//  Created by Lucyna Galik on 09/07/2017.
//
//

#import <Foundation/Foundation.h>

//Write a method that takes an array of consecutive (increasing) letters as input and that returns the missing letter in the array.

char findMissingLetter(char array[], int arrayLength)
{
    for (int i = 0; i < arrayLength-1; i++) {
        if ((array[i] + 1) != array[i+1]) {
            return (char)(array[i] + 1);
        }
    }
    return [@" " UTF8String];
}
