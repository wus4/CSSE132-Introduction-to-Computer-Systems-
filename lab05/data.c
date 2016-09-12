/*
 * CSSE 132
 * Rose-Hulman Institute of Technology
 * Computer Science and Software Engineering
 *
 * data.c - Source file with your solutions to the lab.  The 
 *          main functionality for this lab should be implemented
 *          here.  This file is used for running the lab's program
 *          and also for running the unit tests.
 *
 *          This is a file you need to hand in!
 *
 * This file contains code used by labs in the CSSE 132 class.
 * When you edit this file for class, be sure to put your name(s) here!
 *
 * Edited by
 * NAMES:Muqing Zheng Zezhi Xia
 *
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "data.h"

// This is the size of our "database" array: it has this many slots and can't
// grow any larger.
const unsigned int DB_MAX_SIZE = 128;

/** 
 * This formats and prints out a db_entry nicely.
 * We're providing this for you so the output is uniform.  You'll modify this
 * in the next lab!
 *
 * @param entry: the db_entry struct to print
 */
void
dbe_print(struct db_entry* entry)
{
  fprintf(stdout, "%s => %s\n", entry->name, entry->value);
}

/**
 * Allocates space for a db_entry's members and copies the strings into the
 * newly allocated memory.  If you need space for a string, this is where you
 * allocate it.  This function "constructs" the structure and fills it up.
 *
 * dbe_alloc("me", "val") must allocate contiguous space for two string
 * pointers.  Once that's allocated, it needs to create the space for each
 * string and point the structure's values to the strings.  This example
 * creates a structure in memory that looks like this:
 *
 * db_entry* -> {
 *                char* name: -------> ['m', 'e', '\0']
 *                char* value: ------> ['v', 'a', 'l', '\0']
 *              }
 * The structure itself only needs space for the two pointers, but to figure
 * out how to initialize the pointers, you need to make space for the strings
 * first.
 *
 * @return: a pointer to where the allocated
 */
struct db_entry*
dbe_alloc(const char* name, const char* value)
{

  struct db_entry* teml = (struct db_entry*) malloc(sizeof(struct db_entry));
  teml->name =(char*) malloc(sizeof(char)*strlen(name)+1);
  teml->value = (char*) malloc(sizeof(char)*strlen(value)+1);
  
  memcpy(teml->name,name,strlen(name)+1);
  memcpy(teml->value,value,strlen(value)+1);
  
  teml->name[strlen(teml->name)]='\0';
  teml->value[strlen(teml->value)]='\0';

  return teml;
}


/**
 * Releases the memory held by the a db_entry struct.
 * Anything that needed to be malloc()'ed when the structure was created must
 * be free()'ed here.
 *
 * @param entry: a pointer to the structure to free.
 */
void
dbe_free(struct db_entry* entry)
{

  free(entry->name);
  free(entry->value);
  free(entry);
}

/**
 * Returns the number of non-null entries in the database.
 * For example, given this database:
 *   db = [("A" => "aval"), ("C" => "cval"), 0, 0]
 * db_count_entries(db) returns 2.
 *
 * @param database: a pointer to the database structure
 * @return: the entry count
 */
int
db_count_entries(struct db_entry** database)
{
 
  int length=0;
  while (database[length] != 0) {
    length++;
  } 
  return length;
}

/**
 * Removes the entry at index "index" and shifts the trailing items down.
 * For example, if a database looks like this:
 *   db = [("A" => "aval"), ("B" => "bval"), ("C" => "cval"), 0]
 * when db_remove(db, 1) completes, db will look like this:
 *   db = [("A" => "aval"), ("C" => "cval"), 0, 0]
 *
 * @param database: a pointer to the database structure
 * @param index: the index of the item to remove.
 */
void
db_remove(struct db_entry** database, int index)
{ 
  int len=index;
  if (database[len]==0) return;
  while (database[len] != 0) {
    database[len]=database[len+1];
    len++;
  } 
}

/**
 * This looks for "target" in the database and returns the index if found.
 *
 * For example, db_find_one(db, "bob", 0) will search db for any entries with
 * the name starting with "bob", beginning with the first (0th) index.
 *
 * @param database: a pointer to the database structure
 * @param target: a string to look for in the database's names
 * @param initialIndex: a starting index in case you want to search part 
 *           of the database
 * @returns the index of the first matching entry or -1 if it wasn't found.
 */
int
db_find_one(struct db_entry** database,
            const char* target,
            int initialIndex)
{
  
  int ind=initialIndex;
  while(database[ind]!= 0) {
    if (strncmp(target,database[ind]->name,strlen(target))==0) {
      return ind;
    }
    ind++;
  }
  return -1;
}

/**
 * This allocates some memory for a new entry and adds a pointer to it to the
 * end of the database.  
 *
 * @param db: a pointer to the database structure
 * @param name: a string for the name of the entry
 * @param value: a string for the entry's contents
 */
void
do_add_entry(struct db_entry** db, const char* name, const char* value)
{

  struct db_entry* teml = dbe_alloc(name,value);
  int length = 0;
  while (db[length]!=0) {
    length++;
  }
  db[length]=teml;

}

/**
 * Prints out all the entries in the database.
 *
 * @param db: a pointer to the database structure
 */
void
do_list_database(struct db_entry** db)
{

  int ind=0;
  while (db[ind] != 0) {
    dbe_print(db[ind]);
    ind++;
  }
}

/**
 * Complete this function:
 * When do_remove_first_match is called, remove the first entry in the database
 * with a name that starts with the value of target.  If no entries start with
 * the string contained in the target parameter, nothing is removed.
 *
 * @param db: a pointer to the database structure
 * @param target: a name of an entry to remove
 * @return: 1 if something was removed, 0 if not. 
 */
int
do_remove_first_match(struct db_entry** db, const char* target)
{
  int te=db_find_one(db, target,0);
  if (te==-1) {
    return 0;
  }
  db_remove(db,te);
  return 1;
}

