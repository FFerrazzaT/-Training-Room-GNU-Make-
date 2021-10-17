



#### Repository to train and consult makefile programs 



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



### Tags

-n : Shows all commands without running the program (great for debugging)

-c <File>: Compile the file

-o <File>: Directs the output to the selected file

-J <Folder>: Directs .mod to selected directory

-I <Folder>: Search modules in directory



### Compiling program

```makefile
Target:		Source Code File
			(...)
			Build instruction 
			Comand 2
			(...)
```



### Special Items

@: Always when using an @ in front of a command, a silent command will be executed, where the make file will not show the command that will be performed.



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



### Arbitrary targets

To have a standardization in the writing of make files, we can use some standard targets to facilitate reading:

NOTE: These targets are only intended to standardize the code, you can use other target names if you prefer



#### Target Clean

When there is this target all files written there will be deleted at the end of the makefile run



#### Target All

Will run only with the make command

