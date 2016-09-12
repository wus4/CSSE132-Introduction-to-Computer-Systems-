/*
 * CSSE 132
 * Rose-Hulman Institute of Technology
 * Computer Science and Software Engineering
 *
 * problem1.c: this file is where you implement your solutions
 *             for the homework assignment.
 *
 * This file contains code for homework in the CSSE 132 class.
 * When you edit this file for class, be sure to put your name here!
 *
 * Edited by
 * NAME:Muqing Zheng
 *
 */
#include <stdlib.h>
#include <stdio.h>


/**
 * This function counts the number of characters in the given string.
 *
 * For example: length("Thing") returns 5.
 * For this function, You MUST use the array brackets: [ and ].
 *
 * @param str - a string to measure
 * @returns the number of characters, excluding the null terminator.
 */
int length(char* string)
{
  int len=0;
  while (string[len]!='\0') {
    len++;
}
  return len;
}


/**
 * This function is the same as length() but doesn't use array operators.
 *
 * For this function, You MUST NOT use the square brackets: [ or ].
 *
 * @param str - a string to measure
 * @returns the number of characters, excluding the null terminator.
 */
int lengthNoArrays(char* string)
{
  int length=0;
  while (*string!=0){
	length++;
	string++;
  }
  return length;
}


/**
 * This function takes an integer and zeroes out every second bit.
 * For example: Since 0xF = 1111 and 0xA = 1010,
 *              bitDropper(0xFFFFFFFF) returns 0xAAAAAAAA
 * @param input - the integer to modify
 * @return the same integer except with every other bit zeroed.
 */
int bitDropper(int input)
{
  unsigned int k=0xAAAAAAAA;
  return input & k;
}


/**
 * This function iterates through a string and changes any lowercase vowels 
 * (a, e, i, o, u) to their uppercase equivalents.
 *
 * This function modifies the string (it does not make a copy).
 * You can assume the string is properly null-terminated.
 * Write this function yourself using a for loop.
 *
 * @param tochange - the string to change
 * @return the number of vowels up-cased.
 */
int upcaseVowels(char* tochange)
{
  int count=0;
  int i;
  for (i=0;i<length(tochange);i=i+1) {
    if (tochange[i]=='a') {
      tochange[i]='A';
      count++;
    }
    if (tochange[i]=='e') {
      tochange[i]='E';
      count++;
    }
    if (tochange[i]=='i') {
      tochange[i]='I';
      count++;
    }
    if (tochange[i]=='o') {
      tochange[i]='O';
      count++;
    }
    if (tochange[i]=='u') {
      tochange[i]='U';
      count++;
    }
 }
  return count;
}


/**
 * This function allocates a new string that contains every other character
 * from the input string.  
 * For example, skipper("AbAbAb") returns "AAA"
 *
 * BE SURE to allocate the right number of bytes, no more and no less.
 * DO NOT de-allocate or free the string after you make it.
 *
 * IMPORTANT: any code using this function MUST de-allocate the string.
 *
 * @param input - the string to copy some characters from
 * @return the address of a newly allocated string
 */
char* skipper(char* input)
{
  int leng=length(input)/2;
  int tail=length(input)-2*leng;
  char* res;
  res=(char*) malloc(sizeof(char)*(leng+tail));
  int i;
  for (i=0;i<leng;i++) {
    res[i]=input[2*i];
  }
  if (tail==1) {
    res[leng]=input[length(input)-1];
  }

  return res;
}

/** DO NOT create a main function in this file or the test executable won't work. **/
