SRC = ./src
OBJ = ./obj
BIN = ./bin
MOD = ./mod
CC = gfortran

all: ./bin/program.x
	@$<

$(BIN)/program.x:	$(SRC)/program.f90 $(OBJ)/lib.o
	@$(CC) $(OBJ)/lib.o $< -I $(MOD) -o $@

$(OBJ)/%.o:	$(SRC)/%.f90
	@mkdir mod
	@mkdir obj
	@mkdir bin
	@$(CC) -c $< -J $(MOD) -o $@

clean:
	@rm -rf $(OBJ)
	@rm -rf $(MOD)
	@rm -rf $(BIN)
