#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int
counting_lines(FILE* file) {
  int countwords=0;
  int countlines=0;
  char c[512];
  while (fgets(c,512,file)>0) {
    countwords=countwords+count_in_line(c);
    countlines++;
  }
  printf("lines: %d\n",countlines);
  return countwords;
}

int
counting_characters(FILE* file) {
  fseek(file,0,SEEK_END);
  int b=0;
  b=ftell(file);
  return b;
}

int
count_in_line(char* line) {
  int count=0;
  line[strlen(line)]='\0';
  int i=0;
  while(line[i]!='\0') {
    if (line[i]==' '||line[i]=='\n') {
      count++;
    }
    i++;
  }
  return count;
}


int main(int argc, char** argv)
{
  FILE* read_f;
  int numchar;
  int numwords;

  if (argc < 2) {
    printf("Usage: ./words filename\n");
    return 1;
  }

  read_f  = fopen(argv[1], "r");
  
  numwords=counting_lines(read_f);
  numchar=counting_characters(read_f);

  printf("characters: %d\n",numchar);
  printf("words: %d\n",numwords);

  fclose(read_f);
  return 0;
}

