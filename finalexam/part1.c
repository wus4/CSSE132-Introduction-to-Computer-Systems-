/*
 * part1.c
 *
 * This is one part of the CSSE 132 final exam coding part.
 * Complete the functions in this file and be sure to
 * TYPE YOUR NAME IN THIS FILE BELOW.
 *
 * REQUIREMENTS:
 * 1. Remove TODO comments after you complete it.
 * 2. Ensure this file compiles before you commit your changes
 * 3. If you use any code from standard libraries (like string.h) use a comment
 *    to explain what it does.
 * 4. If you want partial credit for a solution that doesn't fully work, describe
 *    what you are attempting to do in a comments.
 *
 * NAME: Muqing Zheng
 *
 */

#include <stdlib.h>
#include <stdio.h>
#include <string.h>

/**
 * computeAverage():
 * Computes the arithmetic mean of the three input values.
 *
 * Round down for partial amounts.  
 * For example, the average of 1, 1 and 2 is 1.
 *
 * @params a,b,c - input values to average
 * @return - average of the inputs.
 */
int computeAverage(int a, int b, int c)
{
  //TODO: finish this function
  return (a+b+c)/3;
}


/**
 * substring():
 * Returns a new string that is a substring including the start and end
 * character positions provided.  For example:
 *   substring("0123456789", 2, 4)
 *   returns a new string "234" (allocated on the heap).
 *
 *   substring("0123456789", 3, 7)
 *   returns a new string "34567" (allocated on the heap).
 * 
 * This function returns NULL if:
 *  - "start" or "end" are not a valid character locations in the input string
 *  - "start" comes after "end"
 *
 * @param input - the source string 
 * @param start - the index of the first character copied from input
 *                string to the returned substring.
 * @param start - the index of the last character copied from input
 *                string to the returned substring.
 * @return a pointer to the heap-allocated substring.
 */
char* substring(const char* input, int start, int end)
{
  int len = strlen(input);
  

  if (end>len||start>end) {
    return 0;
  }

  int lense=end-start+1;
  //TODO: finish this function
  char* newString = (char*)malloc(lense*sizeof(char));
  int i;

  for (i=0;i<lense;i++) {
   newString[i]=input[i+start];
  }

  newString[lense]='\0';
  return newString;
}

/**
 * groups():
 * Takes a string of characters that are either 'I' or 'X' and returns the
 * number of "groups" of the same value that occur in the array.  For example:
 *
 * groups("IIIIIII") returns 1
 * groups("IIIXXXI") returns 3
 * groups("IXIXXXI") returns 5
 *
 * If the string is NULL or empty (""), return 0.
 *
 * @param input - the string to scan for groups
 * @return the number of groups of equal characters in the string.
 */
int groups(const char* input)
{
  //TODO: finish this function
  if (strlen(input)==0) {
    return 0;
  }
  char sign=input[0];
  int count=1;
  int i;
  for (i=0;i<strlen(input);i++) {
    if (input[i]!=sign) {
      count++;
      sign=input[i];
    }
  }
  return count;
}

/**
 * The main function.  When you compile and run this program, this function
 * will test the code you write above.  You may add additional tests if you
 * wish, but it is not required.  Adding more tests may help you find errors in
 * your code.
 */
void main(int argc, char** argv)
{
  // some tests

  printf("TESTING COMPUTEAVERAGE:\n");
  printf(" computeAverage(0, 0, 0) = %d (0 expected)\n", computeAverage(0, 0, 0));
  printf(" computeAverage(1, 1, 2) = %d (1 expected)\n", computeAverage(1, 1, 2));
  printf(" computeAverage(1, 2, 3) = %d (2 expected)\n", computeAverage(1, 2, 3));

  char* substr;
  printf("TESTING SUBSTRING:\n");
  substr = substring("0123456789", 2, 4);
  printf(" substring(\"0123456789\", 2, 4) = \"%s\", (\"234\" expected)\n", substr);
  free(substr);

  substr = substring("0123456789", 3, 7);
  printf(" substring(\"0123456789\", 3, 7) = \"%s\", (\"34567\" expected)\n", substr);
  free(substr);

  substr = substring("0123456789", 7, 0);
  printf(" substring(\"0123456789\", 7, 0) = \"%s\", (null expected)\n", substr);
  free(substr);

  substr = substring("0123456789", 1, 100);
  printf(" substring(\"0123456789\", 1, 100) = \"%s\", (null expected)\n", substr);
  free(substr);


  printf("TESTING GROUPS:\n");
  printf(" groups(\"IIIIIII\") = %d (1 expected)\n", groups("IIIIIII"));
  printf(" groups(\"IIIXXXI\") = %d (3 expected)\n", groups("IIIXXXI"));
  printf(" groups(\"IXIXXXI\") = %d (5 expected)\n", groups("IXIXXXI"));
}
