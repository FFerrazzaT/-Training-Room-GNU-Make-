<div align="center">

![_Training_Room_GNU_Make](https://user-images.githubusercontent.com/63831714/137644071-31bc2eda-cbfb-458f-ace4-726ed70b859a.png)



![Stop, StudyArea](https://user-images.githubusercontent.com/63831714/137644059-3b055353-eaa2-4ec9-bf5a-a1fe6088100d.png)



Repository to train and consult makefile programs 


<div align="left">

## Why use makefile

They can be used to compile programs, install programs, build shared and static libraries.



## Running makefile programs

### Running program without parameters

```bash
~$ make
```

This command will run on your bash terminal and fetch the makefile file in your source folder.



### Running program with parameters

```bash
~$ make target
```

This command will be run on your bash terminal and fetch the makefile file in your source folder, running from the requested target.



## Basic language model

```makefile
Target:		Dependency(Optional)
			(...)
			Comand 1
			Comand 2
			(...)
```



### Compiling program

```makefile
Target:		Source Code File
			(...)
			Build instruction 
			Comand 2
			(...)
```



### Hello World

```makefile
all:		
		@echo "Hello World"
```



### Calling module

```makefile
all:	mensage
		@echo "Hello World"

mensage:
		@echo "A new world"
```

if not called, the module will not run

```makefile
all:	mensage
		@echo "Hello World"

mensage:
		@echo "A new world"

mensage2:
		@echo "this command will not run because it is not connected with any other"
```



## Complex language model

### Arbitrary targets

To have a standardization in the writing of make files, we can use some standard targets to facilitate reading:

NOTE: These targets are only intended to standardize the code, you can use other target names if you prefer



#### Target Clean

When there is this target all files written there will be deleted at the end of the makefile run



#### Target All

Will run only with the make command

-----
	
### Variables

To make it easier to rewrite if necessary, you can assign important items (usually folder locations) to a global wide range.

```fortran
SRC = ./src

$(SRC) ! Call of the variable

gfortran -c $(SRC)/program.f90
```



### Conditional IF

```makefile
equal:
ifeq ( Item to compare, Variable ) 
		(...)
		Command 1 
		Command 2
		(...)
else
		(...)
		Command
		(...)
endif

different:
ifneq ( Item to compare, Variable ) 
		(...)
		Command 1 
		Command 2
		(...)
else
		(...)
		Command
		(...)
endif
```



### Function

To define a function, you must use define, ending with endef. To call it, just type call.

```makefile
define FUNCTION
	(...)
	Command
	(...)
endef

#Start of program
all:
	$(call FUNCTION)
```



### Wildcard

Allows the use of * in commands (All command), so it is allowed to change the extension of the files.

```makefile
#Exemple

SRC = $(wildcard ./src/*.f90)

#Changing .f90 for .o

OBJ = $(SRC:.f90=.o)
```



### Tags

```reStructuredText
-n : Shows all commands without running the program (great for debugging)

```



### Special Items

```reStructuredText
@: Always when using an @ in front of a command, a silent command will be executed, where the make file will not show the command that will be performed.

#: Make a comment.

$(variable): Call a variable.  

$<: First dependency.

$@: Target.

*.o:  Any .o in command.

%.o: Any .o in the target or dependency.

addprefix <Text>: adds text at the beginning of a file (e.g. folder/, prog1.f90 will turn folder/prog1.f90).

addsuffix<Text>: adds text at the end of a file (ex:.x, prog1.f90 will turn prog1.f90.x).

( : )<Text>: allows you to change the chosen item.
```
