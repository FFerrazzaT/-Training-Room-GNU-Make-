all: ./bin/program.x
	@./bin/program.x

./bin/program.x:	./src/program.f90 ./obj/lib.o
	@gfortran ./obj/lib.o ./src/program.f90 -I ./mod -o ./bin/program.x

./obj/lib.o:	./src/lib.f90
	@mkdir mod
	@mkdir obj
	@mkdir bin
	@gfortran -c ./src/lib.f90 -J ./mod -o ./obj/lib.o

clean:
	@rm -rf ./obj
	@rm -rf ./mod
	@rm -rf ./bin
