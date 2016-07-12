#include	"err_handler.h"

#include	<stdio.h>
#include	<stdlib.h>

void err_quit(const char *str)
{
	fprintf(stderr, "%s\n", str);
	exit(1);
}

