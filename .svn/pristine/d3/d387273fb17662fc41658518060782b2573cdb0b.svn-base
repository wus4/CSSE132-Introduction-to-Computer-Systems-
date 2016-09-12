/*
 * CSSE 132
 * Rose-Hulman Institute of Technology
 * Computer Science and Software Engineering
 *
 * server.c - Source file with your solutions to the lab.  The 
 *            main functionality for this lab should be implemented
 *            in data.c and in here.  This file is used for running the lab's
 *            program as a SERVER.
 *
 *            This is a file you need to hand in!
 *
 * This file contains code used by labs in the CSSE 132 class.
 * When you edit this file for class, be sure to put your name(s) here!
 *
 * Edited by
 * NAMES: Muqing Zheng Zezhi Xia
 *
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/socket.h>
#include <arpa/inet.h>

#include "data.h"

/* Some constants for the servers and such */
const char*               TRACKER_ADDR    = "137.112.40.225";
const unsigned short      TRACKER_PORT    = 22222;
const unsigned short      SERVER_PORT     = 20000;


/**
 * Remotely lists the database.
 * Very much like do_list_database, but uses sockets.
 */
void
do_remote_list_database(int sock, struct db_entry** db)
{
  // TODO: implement this.
  // It is very similar to do_list_database, but instead of using
  // printf, you'll be sending to the socket "sock".
  //
  // Hint: use sprintf and a local string variable to construct each
  //       text line you want to send, then send it.
  int i;
  char buff[512];
  for(i=0; i < DB_MAX_SIZE && db[i] != NULL; i++) {
    struct db_entry* entry = db[i];
    sprintf(buff,"%s => %s\n", entry->name, entry->value);
    send(sock,(const void*) buff,strlen(buff),0);
  }
}

/**
 * Remotely finds some matches.
 * Very much like do_find_all_matches, but uses sockets.
 *
 * @param db: a pointer to the database structure
 * @param target: a string to match in names of entries to find
 */
void
do_remote_find_all_matches(int sock, struct db_entry** db, const char* target)
{
  // TODO: implement this.
  // It is very similar to do_find_all_matches, but instead of using
  // printf, you'll be sending to the socket "sock".  The changes to
  // this function are almost identical to the changes you made for
  // do_remote_list_database.
  //
  // Hint: use sprintf and a local string variable to construct each
  //       text line you want to send, then send it.
  int i=0;
  char buff[512];
  while(db_find_one(db,target,i)!=-1) {
    i=db_find_one(db,target,i);
    struct db_entry* entry =db[i];
    sprintf(buff,"%s => %s\n", entry->name, entry->value);
    send(sock,(const void*) buff,strlen(buff),0);
    i++;
  }
}


/**
 * Runloop that accepts commands from a client socket and responds with
 * results.
 *
 * Commands to implement:
 *
 * q - quits the program.
 *
 * l - lists the database entries
 *       (do_remote_list_database)
 *
 * a - adds an entry, prompting the user for name and values
 *       (do_add_entry)
 *
 * f - finds an entry, prompting user for a target and 
 *       printing the first entries with a matching name.
 *       (do_remote_find_all_matches)
 *
 * r - prompts user for a target and removes the first matching
 *       entry from the database.  No effect if nothing matches.
 *       (do_remove_first_match)
 * 
 * If given a command that doesn't match one in this list, print "help" to show
 * what commands are available.
 *
 * @param db: a pointer to the database structure
 * @param clientsock: the socket descriptor for a remote client
 */
void
handleRemoteInput(struct db_entry** db, int clientsock)
{
  // TODO: Implement the command/response run loop.
  // It will be very similar to the handleLocalInput() in your local.c file.
  // The main difference is that instead of getALine and printf, you'll be
  // sending and receiving to and from clientsock.
  //
  // Some hints: see the manpages for send and recv.  (They're in section 2 of the manual).
  const char* instructions = " (a)dd, (r)emove, (l)ist, (f)ind, or (q)uit";
  char buf[512];
  char buf2[512];
  char buf3[512];

  // loop forever
  for( ;; ) {
    sprintf(buf, "(Remote)> ");
    send(clientsock,(const void*) buf,strlen(buf),0);

    // read input
    int bytes=recv(clientsock, (void *)buf3,512,0);
    buf3[bytes] = '\0';

    // check to make sure the instruction is not a blank line
    if(strlen(buf3) < 1) {
      sprintf(buf,"Invalid instruction.\n");
      send(clientsock,(const void*) buf,strlen(buf),0);
      sprintf(buf," %s\n", instructions);
      send(clientsock,(const void*) buf,strlen(buf),0);
      continue;
    }

    // select instruction to run
    switch(buf3[0]) {
    case 'q':
    case 'x':
      return;

    case 'a': // ADD
      // 1. prompt for the name and value (use sprintf) and
      //    read the name and value into buffers
      sprintf(buf,"name? ");
      send(clientsock,(const void*) buf,strlen(buf),0);
      bytes=recv(clientsock,(void*)buf2, 512, 0);
      buf2[bytes]='\0';
      
      sprintf(buf,"value? ");
      send(clientsock,(const void*) buf,strlen(buf),0);
      bytes=recv(clientsock,(void*)buf, 512,0);
      buf[bytes]='\0';
      
      do_add_entry(db, buf2, buf);
      break;

    case 'f': // FIND
      // TODO:
      // prompt for the name
      // find and print all the matches.
      sprintf(buf,"whcih name? ");
      send(clientsock,(const void*) buf,strlen(buf),0);
      bytes=recv(clientsock,(void*)buf,512,0);
      buf[bytes]='\0';
      do_remote_find_all_matches(clientsock,db,buf);
      break;

    case 'r': // FIND and REMOVE ONE
      sprintf(buf2,"name to remove? ");
      send(clientsock,(const void*) buf2,strlen(buf2),0);
      bytes=recv(clientsock,(void*)buf2, 512,0);
      buf2[bytes]='\0';
      do_remove_first_match(db, buf2);
      break;

    case 'l': // LIST
      do_remote_list_database(clientsock,db);
      break;

    default:
      // The instruction was not one of the above instructions.
      // Print out a help screen that explains what instructions
      // are available
      sprintf(buf2, "Invalid instruction.\n");
      send(clientsock,(const void*) buf2,strlen(buf2),0);
      sprintf(buf," %s\n", instructions);
      send(clientsock,(const void*) buf,45,0);
      break;
    }
  }
}

void
runServer(struct db_entry** database)
{
  // In this function ou'll want to open a server socket, set it up, then loop 
  // forever while listening for clients and handling them one at a time.
  
  // The first step is to create a server socket.  For this, you must create an
  // address structure (type: struct sockaddr_in). We'll do this for you:
  int sock;       // server socket
  int clientsock; //client socket
  int result=0;

  struct sockaddr_in serv_addr;   // local address
  struct sockaddr_in cli_addr;    //remote address
  // Construct local addr structure
  memset(&serv_addr, 0, sizeof(serv_addr));   //zero out
  //memset(&cli_addr,0,sizeof(cli_addr));
  serv_addr.sin_family = AF_INET;
  serv_addr.sin_addr.s_addr = htonl(INADDR_ANY);  // accept on any interface
  serv_addr.sin_port = htons(SERVER_PORT);

  // TODO: Create a socket (family is AF_INET, type is stream, and protocol
  // is TCP).  See the manpage for socket for more info.
  sock = socket(AF_INET, SOCK_STREAM, IPPROTO_TCP);
  if (sock < 1) {
    printf("Failed to create server socket\n");
    exit(1);
  }

  // TODO: bind and listen!
  // To convert a variable of type (struct sockaddr_in*) to a (struct sockaddr*)
  // you will have to typecast it.

  result=bind(sock, (struct sockaddr*) &serv_addr, sizeof(serv_addr));
  if (result < 0) {
    printf("Failed to bind server to address and port\n");
    exit(1);
  }

  result=listen(sock,5);
  if (result < 0) {
    printf("Failed to start listening\n");
    exit(1);
  }
  
  // run loop
  while(1)
  {
    // TODO: accept a connection
    // It may be helpful to display the remote client's IP address after
    // accepting a connection. TO do this, you can use getpeername.  See the
    // manpage for details.
    unsigned int sock_addr_len = sizeof(struct sockaddr*);
    clientsock=accept(sock, (struct sockaddr*)&cli_addr,&sock_addr_len);
    printf("Connected to client socket %d\n", clientsock);
    printf("                      len: %d\n", sock_addr_len);

    // HANDLE ONE CLIENT
    handleRemoteInput(database, clientsock);

    // TODO: shut down and close the client socket.
    // When handleRemoteInput() returns, the client is done interacting.
    printf("Closing connection to client %s\n", inet_ntoa(cli_addr.sin_addr));
    shutdown(clientsock,SHUT_RDWR);
    close(clientsock);

  }

  // TODO: outside the loop, the server has nothing left to do.  Close the
  // server socket.
  close(sock);
}


int
main(int argc, char** argv)
{
  // make a big, empty database in the heap
  // this is a _pointer_ to an _array_ of db_entry structs.
  struct db_entry** db = malloc(DB_MAX_SIZE * sizeof(struct db_entry*));

  // zero out the memory, just in case.
  memset(db, 0, DB_MAX_SIZE * sizeof(struct db_entry*));

  
  // Uncomment the next line when you've implemented this function.
  runServer(db);

  // return the used memory
  free(db);

  return 0;
}
