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

  FILE* file=fopen(argv[1],"r");
  char tmp[512];
  while (!feof(file)) {
    fgets(tmp,512,file);
    tmp[strlen(tmp)]='\0';
    char* result = transposeString(tmp, atoi(argv[2]));
    printf("%s",result);
    free(result);
  }

  fclose(file);

  return 0;
}

