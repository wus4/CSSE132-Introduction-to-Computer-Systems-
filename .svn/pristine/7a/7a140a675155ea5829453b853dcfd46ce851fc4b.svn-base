#include <stdio.h>
#include <string.h>
#include <stdlib.h>

//
//
//  IMPORTANT: SEE main() below for more instructions.
//
//

/**
 * Returns 1 if the given character is an upper case letter, 0 otherwise.
 */
int isUpper(char c)
{
  return c >= 'A' && c <= 'Z';
}

/**
 * Returns 1 if the given character is a lower case letter, 0 otherwise.
 */
int isLower(char c)
{
  return c >= 'a' && c <= 'z';
}

/**
 * Transposes an upper-case input character "num" spots forward in the
 * alphabet, wrapping around to the beginning.
 * 
 * For example:
 *    rotate('A', 1) returns 'B'.
 *    rotate('Z', 1) returns 'A'.
 *    rotate('D', 3) returns 'G'.
 *
 * Assume:
 *  num will always be positive
 *  c is an UPPERCASE letter (no numbers or special characters).
 *
 *  @param c: the character to transpose
 *  @param num: the number of positions to transpose it
 *  @return the transposed character.
 */
char transposeUpper(char c, unsigned int num)
{
  // TODO: implement this
  if (isUpper(c+num)==1) {
    return c+num;
  } else {
    return c+num-26;
  }
}

/**
 * Same as transposeUpper, but for lower-case characters.
 */
char transposeLower(char c, unsigned int num)
{
  // TODO: implement this
  if (isLower(c+num)==1) {
    return c+num;
  } else {
    return c+num-26;
  }

}


/**
 * Transposes all the letters in the string, but leaves the non-letter characters alone.
 * This function also allocates space and COPIES the input string into the new
 * space.  Return a pointer to the new string.
 *
 * For example, after this line:
 *   char* result = transposeString("A big Fox.", 2);
 * result points to "C dki Hqz." and needs to be free()'ed.
 *
 * HINT: use isUpper and isLower!
 * HINT: You will also need to use malloc.
 *
 * It is ok to assume:
 *  - the inputString is well-formed (null-terminated)
 *  - num is positive
 *
 * @param inputString: a C string to read and transpose
 * @param num: the number of positions to transpose each letter
 */
char* transposeString(const char* inputString, unsigned int num)
{
  // TODO: implement this
  char* tmp=(char*)malloc(sizeof(char)*strlen(inputString));
  int i=0;
  while(inputString[i]!=0) {
    if (isUpper(inputString[i])==1) {
      tmp[i]=transposeUpper(inputString[i],num);
    }
    else if (isLower(inputString[i])==1) {
      tmp[i]=transposeLower(inputString[i],num);
    }
    else {
      tmp[i]=inputString[i];
    }
    i++;
  }
  return tmp;
}



int
main(int argc, char** argv)
{

  // This uses printf to print the name of the program on its own line (hint:
  // it is the first argument value).  For example, if the program is run like this:
  //   ./part1 foo bar
  // it will print:
  //   ./part1
  printf("%s\n", argv[0]);

  // TODO:  Finish transposeUpper() (there are printf tests here)
  printf("transposeUpper('A', 1) = %c (Should be 'B')\n", transposeUpper('A', 1));
  printf("transposeUpper('Z', 1) = %c (Should be 'A')\n", transposeUpper('Z', 1));
  printf("transposeUpper('Z', 3) = %c (Should be 'C')\n", transposeUpper('Z', 3));
  printf("transposeUpper('D', 3) = %c (Should be 'G')\n", transposeUpper('D', 3));
  // TODO: Finish transposeLower() (you can put tests here if you want)
  printf("transposeUpper('a', 1) = %c (Should be 'b')\n", transposeLower('a', 1));
  printf("transposeUpper('z', 1) = %c (Should be 'a')\n", transposeLower('z', 1));
  printf("transposeUpper('z', 3) = %c (Should be 'c')\n", transposeLower('z', 3));
  printf("transposeUpper('d', 3) = %c (Should be 'g')\n", transposeLower('d', 3));

  // TODO: Finish transposeString() (this tests it)
  char* result;
  result = transposeString("A big Fox.", 2);
  printf("Transposed: %s (Should be C dki Hqz.)\n", result);
  free(result);

  return 0;
}

