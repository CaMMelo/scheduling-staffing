************************************************************************
file with basedata            : md160_.bas
initial value random generator: 2056026109
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  16
horizon                       :  117
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     14      0       20        7       20
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          3           5   6   9
   3        3          3           5   8  10
   4        3          3           5   6   9
   5        3          1           7
   6        3          2           8  10
   7        3          2          11  13
   8        3          2          14  15
   9        3          2          11  13
  10        3          2          12  13
  11        3          1          12
  12        3          2          14  15
  13        3          1          16
  14        3          1          16
  15        3          1          16
  16        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0
  2      1     2      10    6    0    8
         2     4       9    6    4    0
         3    10       9    5    0    4
  3      1     3       6    9    9    0
         2     5       6    9    7    0
         3     9       5    9    0    6
  4      1     5       6    8    6    0
         2     8       4    7    0    6
         3     9       4    7    6    0
  5      1     6      10    5    0    2
         2     6       6    7    5    0
         3     7       3    3    5    0
  6      1     4       7    3    0    2
         2     5       5    2    0    1
         3    10       2    2    0    1
  7      1     1       8    9    0    7
         2     6       5    8    0    7
         3     7       2    6    0    6
  8      1     4       2    7    0    1
         2     5       2    7   10    0
         3     9       1    6    9    0
  9      1     2       6    5    0    5
         2     3       6    3    0    4
         3     8       1    1    0    3
 10      1     7      10    6    9    0
         2     8       6    5    6    0
         3     9       4    3    1    0
 11      1     1       3    7    0    6
         2     1       4    6    0    5
         3     2       2    5    0    1
 12      1     2      10   10    6    0
         2     3       7   10    0    3
         3     9       3    9    0    3
 13      1     3       7    8    9    0
         2     7       6    7    6    0
         3    10       5    5    4    0
 14      1     1       1    8    9    0
         2     4       1    8    8    0
         3    10       1    7    0    6
 15      1     2       7    9    0    4
         2     5       5    8   10    0
         3     8       5    8    0    3
 16      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
   23   25   77   56
************************************************************************
