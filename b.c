/*
 * Best viewed with tabstop=3.
 *
 * Just an example of using the rdtsc with an asm
 * routine.
 *
 * LICENSE
 * 
 * I really don't care about what you'd like to do with this code, 
 * it wasn't that hard to make, but hey, i wont mind if you
 * liked it and want to buy me a beer ;)
 *
 * AUTHOR:
 *	marcelog@gmail.com
 *
 */
#include	<stdio.h>
#include	<unistd.h>
#include	<stdlib.h>

extern void rdtsc(long long *p);

int
main(void)
{
	unsigned long long p;
	p = 0;
	fprintf(stdout, "%llu\n", p);
	rdtsc(&p);
	fprintf(stdout, "%llu\n", p);
	p /= 700029297L;
	fprintf(stdout, "%llu\n", (p/3600)/24);
	return EXIT_SUCCESS;
}

