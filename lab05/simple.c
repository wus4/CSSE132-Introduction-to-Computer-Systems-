// CSSE 132 Lab 5:simple.c
// Names: Muqing Zheng Zezhi Xia

#include "data.h"
#include <stdlib.h>

void main()
{
  struct db_entry stack;
  stack.name="name";
  stack.value="vale";
  dbe_print(&stack);

  struct db_entry* heap = (struct db_entry*) malloc(sizeof(struct db_entry));
  heap->name="na2";
  heap->value="va2";
  dbe_print(heap);
  free(heap);

  struct db_entry* data=dbe_alloc("My Name","My Value");
  dbe_print(data);
  dbe_free(data);  
}
