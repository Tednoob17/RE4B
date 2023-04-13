# Reverse Engineering for Beginners
> 
![RE4B-cover](./.img/RE4B-covers.png)
## Chapter 1

>

2.1 Void function
The simple function that you can write in C is
 
```C
void f()
{
	return;
};
```
>

compile this code
You can compile with [godbolt](https://godbolt.org/)
	Or 
You can use [dogbolt](https://dogbolt.org/)

> Output:

- ARM platform:
In ARM platform the return address isn't saved in local stack ,so here he  ** bx	lr ** instruction forced program to jump to this address and returned this last

- ARM with keil/2013(ASM Output)
```assembly
f	PROC
	BX	lr
	ENDP
```
- x86 with gcc

```assembly
f:
	push1 %ebp
	mov1 %esp,%ebp
	jmp .L1
.L1:
	leave
	ret
```
- x86 with msvc 

```assembly
_f	PROC
	push	ebp
	mov	eb, esp
	pop	ebp
	ret	0
_f	ENFP

```
- x86_64

```assembly




```

-MIPS
here are two naming conventions used in the world of MIPS when naming registers: by number (from $0 to $31) or by
pseudoname ($V0, $A0, etc) 

> Output with gcc
```assembly
j	$31
nop

```
> output give by IDA (disassembler software) with pseudonames


```assembly
j	$ra
nop
```


## Chapter 2



The simple function


C/C++ Code

```bash
touch 1_test.c && 1_test.c
```

```C
int f()
{
	return 123;	
};
```
Let's go to compile this!

> Output:

- x86 
```assembly
f:
	mov	eax, 123
	ret
```
- x86_64
``` bash
gcc 1_test.c -S
```

```assembly
f:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$123, %eax
	popq	%rbp
	ret
```


- ARM



- MIPS

```assembly

``` 

