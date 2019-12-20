************************************************************************
file with basedata            : cr153_.bas
initial value random generator: 5731
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  130
RESOURCES
  - renewable                 :  1   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       24        5       24
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          3           6  10  12
   3        3          2          12  16
   4        3          2           5  11
   5        3          3           8  12  13
   6        3          2           7   8
   7        3          3           9  13  14
   8        3          2           9  14
   9        3          1          16
  10        3          3          11  13  16
  11        3          1          14
  12        3          2          15  17
  13        3          1          15
  14        3          2          15  17
  15        3          1          18
  16        3          1          18
  17        3          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0
  2      1     1       6    3   10
         2     6       4    2    7
         3     8       1    2    5
  3      1     2       6    5    7
         2     3       4    4    6
         3     8       3    4    5
  4      1     2       4    9   10
         2     4       3    9    9
         3     8       3    6    9
  5      1     1       6    6   10
         2     7       6    5    9
         3     9       5    4    9
  6      1     4       8    7    7
         2     4       9    9    6
         3     9       2    6    5
  7      1     1       7    7    4
         2     6       6    6    3
         3     7       5    4    2
  8      1     1       6   10    5
         2     2       4    7    5
         3     2       2    9    5
  9      1     2       8    9    8
         2     7       8    7    8
         3    10       7    6    4
 10      1     8       5    6    6
         2     8       3    7    5
         3    10       3    4    2
 11      1     5       7    9    9
         2     6       6    5    8
         3     9       2    3    3
 12      1     1       8    3    8
         2     3       7    3    7
         3    10       5    1    5
 13      1     5       9    6    7
         2     7       8    6    7
         3     9       8    5    6
 14      1     3       7    4   10
         2     3       5    6    8
         3     5       4    2    3
 15      1     1       9    9    8
         2     5       9    7    6
         3     6       8    7    4
 16      1     4       6    9   10
         2     5       5    9    8
         3    10       5    7    7
 17      1     7       8    4    7
         2     7       7    5   10
         3    10       3    3    2
 18      1     0       0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  N 1  N 2
   12  102  116
************************************************************************
