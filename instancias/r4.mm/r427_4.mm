************************************************************************
file with basedata            : cr427_.bas
initial value random generator: 312046749
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  118
RESOURCES
  - renewable                 :  4   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       15        5       15
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          3           6   9  16
   3        3          3           5   6   7
   4        3          3           7  14  16
   5        3          3           9  14  16
   6        3          2          11  15
   7        3          2           8  10
   8        3          1           9
   9        3          2          11  12
  10        3          2          11  13
  11        3          1          17
  12        3          2          13  17
  13        3          1          15
  14        3          2          15  17
  15        3          1          18
  16        3          1          18
  17        3          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  R 3  R 4  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0    0    0
  2      1     1       8    3    7    0    4    0
         2     5       6    0    7    6    4    0
         3    10       0    0    5    6    4    0
  3      1     3       0    8    2    6    7    0
         2     7       5    5    0    5    4    0
         3     8       0    5    0    0    0    6
  4      1     3       5    0    0    8    9    0
         2     4       0    0    6    0    7    0
         3    10       0    0    0    5    4    0
  5      1     1       6    0    0    0    9    0
         2     2       0    7    0   10    8    0
         3    10       0    0    0    9    0    4
  6      1     1      10    0    2    7    9    0
         2     3       8    0    0    5    9    0
         3     4       6    6    2    2    6    0
  7      1     3       8    4    0    0    2    0
         2     5       0    3    5    0    0    4
         3     9       7    0    0    0    0    3
  8      1     2       8    7    0    7    0    7
         2     4       0    0    0    6    0    6
         3     5       8    0    4    2    0    6
  9      1     1       0    0   10    0    8    0
         2     2       8    0    9    7    8    0
         3     5       0    3    0    0    7    0
 10      1     2       9    9    0    0    0    9
         2     5       6    0    0    3    0    8
         3     6       5    9    1    0    6    0
 11      1     2       0    3   10    3    4    0
         2     2       7    0   10    9    4    0
         3     5       6    0    0    0    0    2
 12      1     3       7    0    0    0    9    0
         2     4       0    9    0    0    8    0
         3     6       5    0    0    0    8    0
 13      1     1       0    1    0    9    0    4
         2     2       7    0    0    9    3    0
         3     8       5    0    5    8    0    2
 14      1     6      10    0    5    6    0    3
         2     8       9   10    3    0    6    0
         3    10       9    0    0    6    0    2
 15      1     2       0    0    0    7    0    2
         2     5       5    7    0    0    8    0
         3     6       0    0    5    5    0    1
 16      1     2       0    7    0    8    8    0
         2     5       4    0    9    0    7    0
         3     7       0    6    8    0    7    0
 17      1     1       8    0    0    6    8    0
         2     2       5    0    0    0    0    7
         3     9       0    0    0    5    6    0
 18      1     0       0    0    0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  R 3  R 4  N 1  N 2
   26   31   16   20  100   48
************************************************************************
