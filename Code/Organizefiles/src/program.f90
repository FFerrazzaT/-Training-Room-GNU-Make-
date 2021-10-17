PROGRAM program
USE lib
IMPLICIT NONE

REAL:: c
REAL:: a=2, b=1

c = addition(a,b)

WRITE(*,*) "Result are: ", c

END PROGRAM
