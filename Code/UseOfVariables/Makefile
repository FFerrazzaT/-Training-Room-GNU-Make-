SRC = ./src
OBJ = ./obj
BIN = ./bin
MOD = ./mod
CC = gfortran

all: ./bin/program.x
	@$(BIN)/program.x

$(BIN)/program.x:	$(SRC)/program.f90 $(OBJ)/lib.o
	@$(CC) $(OBJ)/lib.o $(SRC)/program.f90 -I $(MOD) -o $(BIN)/program.x

$(OBJ)/lib.o:	$(SRC)/lib.f90
	@mkdir mod
	@mkdir obj
	@mkdir bin
	@$(CC) -c $(SRC)/lib.f90 -J $(MOD) -o $(OBJ)/lib.o

clean:
	@rm -rf $(OBJ)
	@rm -rf $(MOD)
	@rm -rf $(BIN)
