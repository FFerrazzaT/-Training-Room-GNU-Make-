SRC = $(wildcard ./src/*.f90)
DEP = $(SRC:.f90=.o)
SRCBIN = $(wildcard ./app/*.f90)
BIN = $(SRCBIN:.f90=.x)
CC = gfortran

all:	$(DEP) $(BIN)
	@$(BIN)

%.x:	%.f90
	@$(CC) $(DEP) $< -I ./src -o $@

%.o:	%.f90
	@$(CC) -c $< -J ./src -o $@

clean:
	@rm $(DEP) $(DEP:.o=.mod) $(BIN)
