************************************************************************
file with basedata            : c1540_.bas
initial value random generator: 1112817935
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  124
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       32        5       32
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          1           9
   3        3          1           8
   4        3          3           5  10  12
   5        3          3           6   7  17
   6        3          1          14
   7        3          2           8  14
   8        3          2           9  11
   9        3          2          13  15
  10        3          1          16
  11        3          1          13
  12        3          2          13  14
  13        3          1          16
  14        3          1          15
  15        3          1          18
  16        3          1          18
  17        3          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0
  2      1     4      10    5    3    5
         2     4       6    6    3    4
         3     6       4    3    2    4
  3      1     6       3    5    8    6
         2     6       4    5    6    7
         3     7       1    4    2    5
  4      1     4       6    4    8    7
         2     7       4    3    7    6
         3     7       3    4    8    4
  5      1     6      10    8    6    6
         2     8       8    4    6    6
         3    10       7    2    5    4
  6      1     2       8    6    8    5
         2     8       4    3    4    5
         3     8       6    4    2    4
  7      1     3       6    8    8    5
         2     3       5    9    7    5
         3     4       5    5    6    5
  8      1     2       2    7    8    5
         2     5       2    7    7    4
         3     6       1    5    6    3
  9      1     8       8   10    8    7
         2     8       7   10    9    6
         3    10       7    9    7    6
 10      1     2       8    3    6    8
         2     6       7    2    5    8
         3     6       7    3    4    8
 11      1     2       8    8   10    9
         2     7       7    8    9    6
         3    10       5    7    9    4
 12      1     1       3    5    7    4
         2     3       3    5    5    4
         3    10       2    4    3    4
 13      1     3       8    9    7    7
         2     3       7    6    7    8
         3     4       4    6    6    3
 14      1     2       6    6    8    2
         2     6       5    4    8    2
         3    10       1    4    8    2
 15      1     2       1    9    2   10
         2     9       1    9    2    7
         3    10       1    9    1    4
 16      1     6      10    5    8    6
         2     7       6    5    5    4
         3     8       5    4    4    4
 17      1     6       6    7    8   10
         2     6       6    5    9   10
         3     8       6    4    8   10
 18      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
   25   25   89   82
************************************************************************
