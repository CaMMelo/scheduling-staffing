************************************************************************
file with basedata            : md98_.bas
initial value random generator: 1585958269
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  14
horizon                       :  105
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     12      0       14       10       14
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          3           7   8  13
   3        3          3           5   6  12
   4        3          3           6   8   9
   5        3          3           8   9  13
   6        3          2          10  13
   7        3          3           9  10  12
   8        3          1          10
   9        3          1          11
  10        3          1          11
  11        3          1          14
  12        3          1          14
  13        3          1          14
  14        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0
  2      1     3       0    5    3    7
         2     3       8    0    3    7
         3    10       6    0    3    7
  3      1     4       6    0    4    3
         2     6       0    7    3    3
         3    10       0    1    1    3
  4      1     1       0   10    2    2
         2     5       0    8    2    2
         3     8       3    0    2    1
  5      1     1       3    0    8    6
         2     4       3    0    7    5
         3     4       2    0    8    6
  6      1     6       4    0    5    8
         2    10       0    5    4    7
         3    10       1    0    2    4
  7      1     5       0    8    3    6
         2     6       7    0    3    4
         3     9       7    0    3    3
  8      1     6       8    0    9    4
         2     7       0    4    9    4
         3    10       6    0    8    4
  9      1     1       0    4    7    7
         2     1       5    0    7    7
         3    10       0    3    5    7
 10      1     2       0    8    9    8
         2     4       0    7    9    8
         3     9       0    2    8    6
 11      1     1       0    3    8    2
         2     2       0    2    5    1
         3    10       8    0    1    1
 12      1     3       0    6    5    7
         2     5       9    0    4    7
         3     9       0    5    4    7
 13      1     1       6    0    9    6
         2     3       0    8    9    5
         3     6       0    5    7    3
 14      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
   14   12   56   55
************************************************************************
