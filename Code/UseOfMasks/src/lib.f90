MODULE lib
IMPLICIT NONE

CONTAINS

      FUNCTION addition(a,b)
              REAL, INTENT(IN):: a
              REAL, INTENT(IN):: b
              REAL:: addition

              addition = a+b

      END FUNCTION

END MODULE
