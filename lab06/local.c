/*
 * CSSE 132
 * Rose-Hulman Institute of Technology
 * Computer Science and Software Engineering
 *
 * local.c - Source file with your solutions to the lab.  The 
 *           main functionality for this lab should be implemented
 *           in data.c and in here.  This file is used for running the lab's
 *           program.
 *
 *           This is a file you need to hand in!
 *
 * This file contains code used by labs in the CSSE 132 class.
 * When you edit this file for class, be sure to put your name(s) here!
 *
 * Edited by
 * NAMES: Muqing Zheng   Zezhi Xia
 *
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "data.h"


/**
 * Runloop that accepts commands from the user and prints out results.
 *
 * Commands to implement:
 *
 * q - quits the program.
 *
 * l - lists the database entries
 *       (do_list_database)
 *
 * a - adds an entry, prompting the user for name and values
 *       (do_add_entry)
 *
 * f - finds an entry, prompting user for a target and 
 *       printing the first entries with a matching name.
 *       (do_find_all_matches)
 *
 * r - prompts user for a target and removes the first matching
 *       entry from the database.  No effect if nothing matches.
 *       (do_remove_first_match)
 * 
 * e - prompts user for a filename, then saves all the database
 *       entries into that file (one per line, same format as
 *       how they're printed).
 *
 * i - prompts user for a filename, then loads database entries
 *       from that file (expecting one per line, same format as
 *       how they're printed).
 *
 * If given a command that doesn't match one in this list, print "help" to show
 * what commands are available.
 *
 * @param db: a pointer to the database structure
 */
void
handleLocalInput(struct db_entry** db)
{
  // This is a string you can print to give the user instructions.  
  // Be sure to update it as you implement new commands! 
  const char* instructions = " (a)dd, (l)ist, or (q)uit";
  char buf[512];
  char buf2[512];

  // loop forever
  for( ;; ) {
    printf("(Local)> ");

    // read input
    // TODO: Uncomment the next line once you've implemented getALine()
    getALine(buf, 512, stdin);

    // TODO: check to make sure the instruction is not a blank line

    // select instruction to run
    switch(buf[0]) {
    case 'q':
    case 'x':
      // TODO: somehow get out of this run loop
      exit(0);
      break;

    case 'a': // ADD
      // TODO:
      // 1. prompt for the name and value (use printf) and
      //    read the name and value into buffers (use getALine)
      // 2. call do_add_entry to add it to the database

      printf("name?");
      getALine(buf,512,stdin);
      printf("value?");
      getALine(buf2,512,stdin);
      do_add_entry(db,buf,buf2);
      break;

    case 'f': // FIND
      // TODO:
      // prompt for the name
      // find and print all the matches.
      break;

    case 'r': // FIND and REMOVE ONE
      // TODO:
      // prompt for the name
      // remove the first entry that matches the name.
      printf("name?");
      getALine(buf,512,stdin);
      do_remove_first_match(db,buf);
      break;

    case 'l': // LIST
      // TODO: implement this
      do_list_database(db);
      break;

    case 'e': // EXPORT
      // TODO
      // 1. prompt for the file name
      // 2. read the file name into a buffer
      // 3. run the export function you implemented.
      printf("filename?");
      getALine(buf2,512,stdin);
      do_export_db(db,buf2);
      break;

    case 'i': // IMPORT
      // TODO: implement this (similar to export)
      printf("filename?");
      getALine(buf2,812,stdin);
      do_import_db(db,buf2);
      break;

    default:
      // TODO:
      // The instruction was not one of the above instructions.
      // Print out a help screen that explains what instructions
      // are available.
      printf(instructions);
      break;
    }
  }
}

int
main(int argc, char** argv)
{
  // make a big, empty database in the heap
  // this is a _pointer_ to an _array_ of db_entry structs.
  struct db_entry** db = malloc(DB_MAX_SIZE * sizeof(struct db_entry*));

  // zero out the memory, just in case.
  memset(db, 0, DB_MAX_SIZE * sizeof(struct db_entry*));

  // go execute the run loop
  handleLocalInput(db);

  // return the used memory
  free(db);

  return 0;
}
