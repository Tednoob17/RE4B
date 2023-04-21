## Just Memo

   This Lab Instroduction is Inspired by  [0xax](https://0xax.github.io/asm_1/)

Here after thhat we started we must prepare some things (environment).Personnaly i use one Unix-Like Os Family (Pop!_OS) v 21.04 
64bits who is `ubuntu debian` distro ,so all Linux distro based from debian can walk here.


1- Install nasm
> For Debian/Ubuntu 
```bash
sudo apt install nasm
```

```bash
nasm -v
```
> Stdout

```bash
NASM version 2.14
```
> Begin 

When tou write a simple C code like this
```c
#include <stdio.h>

int main(void) {
	printf("JoJo Bizarre Adventure is cool\n");
  return 0;
}
 ```
Here every us understand what  this C code does ,but how this can work at low level ?(i think that 1% can  answer this question and me too)

### NASM Assembly Syntax

Firstly i begin with two (02) sections ,Why section ? because NASM is devided into section

- data section 
- text section 

The data section is used to deckare a constant variable (who can't change when the programs is in runtime), you can declare multiple and math constants 
The Syntax for this section is :

```asm
section .data
```
The text section is for code .This section begin after declaration of `global _start` (he tells the kernel where te execution program begin)

```asm
        section .text
	global _start
	_start:
```
In nasm comment start with `;` and all struction can be write like that 

`[label:] instruction [operands] [; comment]`


A  part in a braces can be ignored (it's optional)
The fisrt command is the name of instruction who must be executed and the second is the operand of this command.


```asm
MOV COUNT, 48 ; Put value 48 in the COUNT variable
``` 

### Hello world
Let's write The legendary Hello World in assembly








































































































































































































































































































