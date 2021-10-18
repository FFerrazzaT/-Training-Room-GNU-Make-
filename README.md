<div align="center">

![_Training_Room_GNU_Make](https://user-images.githubusercontent.com/63831714/137644071-31bc2eda-cbfb-458f-ace4-726ed70b859a.png)



![Stop, StudyArea](https://user-images.githubusercontent.com/63831714/137644059-3b055353-eaa2-4ec9-bf5a-a1fe6088100d.png)



#### Repository to train and consult makefile programs 


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



### Variables

To make it easier to rewrite if necessary, you can assign important items (usually folder locations) to a global wide range.

```fortran
SRC = ./src

$(SRC) ! Call of the variable

gfortran -c $(SRC)/program.f90
```



### Tags

-n : Shows all commands without running the program (great for debugging)

-c <File>: Compile the file

-o <File>: Directs the output to the selected file

-J <Folder>: Directs .mod to selected directory

-I <Folder>: Search modules in directory



### Special Items

@: Always when using an @ in front of a command, a silent command will be executed, where the make file will not show the command that will be performed.

#: Make a comment.

$(variable): Call a variable.  

$<: First dependency.

$@: Target.

*.o:  Any .o in command.

%.o: Any .o in the target or dependency.

