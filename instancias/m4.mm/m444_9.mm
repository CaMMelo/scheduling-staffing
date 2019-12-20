************************************************************************
file with basedata            : cm444_.bas
initial value random generator: 1775697118
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  137
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       18       15       18
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        4          3           5   7   9
   3        4          3          12  15  16
   4        4          3           7   9  14
   5        4          2           6   8
   6        4          2          12  15
   7        4          2          11  13
   8        4          1          10
   9        4          2          13  16
  10        4          3          11  13  14
  11        4          2          12  16
  12        4          1          17
  13        4          1          17
  14        4          2          15  17
  15        4          1          18
  16        4          1          18
  17        4          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0
  2      1     2       7    0    9    7
         2     3       0    5    8    6
         3     6       5    0    8    6
         4     8       0    1    5    6
  3      1     1       5    0    4   10
         2     3       0   10    2    8
         3     3       0    7    4    8
         4     8       0    4    2    4
  4      1     1      10    0    7    6
         2     1       0    8    7    5
         3     6       9    0    7    5
         4     7       7    0    7    5
  5      1     2      10    0    5    5
         2     3       8    0    5    4
         3     8       7    0    3    4
         4     9       0    8    3    2
  6      1     1       4    0    6    8
         2     2       3    0    4    8
         3     8       0    5    3    7
         4     8       3    0    3    8
  7      1     1       4    0    7    9
         2     2       0    2    6    8
         3     4       4    0    6    8
         4     5       4    0    5    7
  8      1     2       0    7    5    9
         2     4       0    5    3    9
         3     8       7    0    3    6
         4    10       0    4    1    4
  9      1     1       0   10    8    6
         2     6       0    9    7    6
         3     9       4    0    6    5
         4    10       3    0    4    4
 10      1     1       0   10    5    7
         2     1       0    7    5    9
         3     3       4    0    5    6
         4     5       4    0    5    3
 11      1     1       6    0    7    3
         2     4       6    0    6    3
         3     7       0    7    5    2
         4    10       0    4    2    1
 12      1     8       0   10    5    5
         2     9       0    8    4    5
         3     9       7    0    4    5
         4    10       0    7    3    4
 13      1     2       8    0    9    7
         2     9       2    0    6    4
         3     9       0    6    7    5
         4     9       0    1    5    6
 14      1     2       6    0    2    6
         2     2       8    0    2    5
         3     4       0    5    2    3
         4    10       5    0    1    1
 15      1     2      10    0    3    3
         2     3       0    9    3    2
         3     3      10    0    2    3
         4     9       0    9    2    2
 16      1     3       0    7    5    9
         2     6       8    0    5    8
         3     7       0    5    5    8
         4    10       0    3    3    7
 17      1     2       0    3    8    6
         2     5       0    2    7    6
         3     6       5    0    4    5
         4     9       3    0    1    4
 18      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
   31   32   74   87
************************************************************************
