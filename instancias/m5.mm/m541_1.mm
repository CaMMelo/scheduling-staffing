************************************************************************
file with basedata            : cm541_.bas
initial value random generator: 16367
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
    1     16      0       14       15       14
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        5          1           6
   3        5          2           6  12
   4        5          3           5   7   9
   5        5          3          10  11  12
   6        5          3           7   9  10
   7        5          1           8
   8        5          2          15  17
   9        5          2          15  16
  10        5          2          14  16
  11        5          2          13  14
  12        5          2          13  14
  13        5          3          15  16  17
  14        5          1          17
  15        5          1          18
  16        5          1          18
  17        5          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0
  2      1     1       9    0    9    7
         2     2       9    0    9    6
         3     3       8    0    8    6
         4     8       8    0    8    5
         5    10       6    0    8    3
  3      1     1       0    8    2    8
         2     7       6    0    2    7
         3     8       4    0    1    6
         4     9       2    0    1    4
         5    10       0    4    1    4
  4      1     1       9    0   10    5
         2     5       7    0    8    5
         3     5       0    7    9    5
         4     8       9    0    7    5
         5    10       0    4    6    4
  5      1     2       0    7   10    7
         2     3       0    6    9    7
         3     4      10    0    7    5
         4     7       0    6    5    4
         5     7      10    0    6    2
  6      1     3       7    0    5    9
         2     5       0    9    5    8
         3     6       0    8    4    8
         4     9       5    0    3    8
         5     9       5    0    4    7
  7      1     2       1    0    7    6
         2     3       1    0    7    5
         3     4       1    0    6    4
         4     5       1    0    6    3
         5     5       0    5    6    3
  8      1     1       6    0    5    8
         2     2       0    5    4    8
         3     5       4    0    3    7
         4     7       0    5    2    7
         5    10       0    4    1    6
  9      1     1       0    3    9    8
         2     3       0    3    9    5
         3     5       7    0    7    5
         4     7       0    2    6    3
         5     8       0    2    5    2
 10      1     1       6    0    6    7
         2     3       0    6    5    7
         3     3       5    0    5    7
         4     9       0    6    3    7
         5    10       4    0    3    7
 11      1     2       0    9    5    9
         2     4       2    0    4    6
         3     6       0    8    4    6
         4     7       0    7    3    5
         5    10       1    0    3    2
 12      1     1       6    0    4    8
         2     1       2    0    5    9
         3     1       3    0    4    9
         4     1       0    8    4    9
         5     3       0    4    3    8
 13      1     1       9    0   10    9
         2     4       9    0    9    9
         3     5       0    7    8    9
         4     6       9    0    8    8
         5     8       9    0    7    8
 14      1     8       0   10    7    3
         2     9       0    6    7    3
         3     9       7    0    7    3
         4    10       4    0    7    2
         5    10       0    4    7    2
 15      1     2       0    5    9    8
         2     3       7    0    7    7
         3     8       0    3    7    4
         4     8       0    4    6    3
         5     9       7    0    6    1
 16      1     1       0    3   10    9
         2     2       0    2    8    8
         3     6       5    0    6    6
         4     8       0    2    3    6
         5     8       3    0    4    6
 17      1     1      10    0   10    8
         2     1       0    4    8    8
         3     5      10    0    8    6
         4     8      10    0    6    6
         5    10      10    0    3    4
 18      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
   11    7   95   95
************************************************************************
