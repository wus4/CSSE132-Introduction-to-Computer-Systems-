#
# CSSE 132
# Rose-Hulman Institute of Technology
# Computer Science and Software Engineering
#
# Makefile - This is used to make the lab.  This is not a 
# 					file you need to hand in, unless you modify it.
#


# By default, make both "lab5" and "test"
default: lab5 test

# Produce the app
lab5: data.h data.c lab5.c
	gcc -g -o lab5 lab5.c data.c

test: data.h data.c test.c unity/unity.o
	gcc -g -Wl,-wrap,fprintf -o test test.c data.c unity/unity.o 

unity/unity.o: unity/unity.c
	gcc -c -o unity/unity.o -Iunity unity/unity.c

clean:
	rm lab5 test unity/unity.o
simple: simple.c data.c
	gcc -g -o simple simple.c data.c 
