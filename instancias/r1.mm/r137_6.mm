************************************************************************
file with basedata            : cr137_.bas
initial value random generator: 217837175
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  129
RESOURCES
  - renewable                 :  1   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       21       12       21
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          3           5   9  10
   3        3          2           5   7
   4        3          3           9  11  14
   5        3          2           6  12
   6        3          3           8  11  16
   7        3          3           9  10  15
   8        3          2          14  15
   9        3          2          12  16
  10        3          2          12  13
  11        3          1          15
  12        3          1          17
  13        3          2          14  16
  14        3          1          17
  15        3          1          18
  16        3          1          18
  17        3          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0
  2      1     1       6    4    5
         2     2       4    4    5
         3    10       4    2    5
  3      1     2       7    7    8
         2     6       7    6    5
         3     9       5    6    3
  4      1     2       6    5    7
         2     8       5    5    7
         3     9       2    3    6
  5      1     2       4    1    9
         2     3       4    1    7
         3     6       3    1    7
  6      1     1       8    3    7
         2     4       4    2    6
         3     6       4    2    5
  7      1     3      10    8    8
         2     5       9    6    7
         3     7       8    6    5
  8      1     6       7    7   10
         2     8       6    6    2
         3     8       5    7    1
  9      1     5       8    6    8
         2     5       8    5   10
         3     6       7    3    7
 10      1     7       6    8    5
         2    10       2    5    4
         3    10       4    6    3
 11      1     5       5    6    6
         2     8       5    5    5
         3     9       4    5    4
 12      1     6       8    3    2
         2     8       7    2    1
         3     8       6    3    1
 13      1     1       8    7    6
         2     5       5    7    6
         3    10       4    5    2
 14      1     2       6    5    9
         2     4       6    4    8
         3     6       5    3    6
 15      1     1       8    6    8
         2     2       8    4    6
         3    10       7    2    4
 16      1     5       7    5    9
         2     6       4    5    9
         3     7       3    5    8
 17      1     3       5   10    4
         2     6       4    8    4
         3     8       3    4    3
 18      1     0       0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  N 1  N 2
   13   68   81
************************************************************************
