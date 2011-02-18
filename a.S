/*
 * 
 *  Best viewed with tabstop=3.
 * 
 *  Just an example of using the rdtsc with an asm
 *  routine.
 * 
 *  LICENSE
 *  
 *  I really don't care about what you'd like to do with this code, 
 *  it wasn't that hard to make, but hey, i wont mind if you
 *  liked it and want to buy me a beer ;)
 * 
 *  AUTHOR:
 * 	marcelog@gmail.com
 * 
 * 
 */
.text
.p2align 4,0x90

.globl rdtsc
.type rdtsc,@function

rdtsc:
	pushl %ebp
	movl %esp, %ebp

	pushl %ecx
	movl 8(%ebp), %ecx

	rdtsc
	movl %eax, (%ecx)
	movl %edx, 4(%ecx)

	popl %ecx
	leave
	ret

