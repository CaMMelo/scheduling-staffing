************************************************************************
file with basedata            : cn151_.bas
initial value random generator: 1093239815
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  122
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  1   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       18       10       18
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          3           5   6  10
   3        3          2          11  14
   4        3          3          12  13  16
   5        3          3           7  11  12
   6        3          3           8   9  14
   7        3          2           8  15
   8        3          1          16
   9        3          2          13  17
  10        3          3          11  13  16
  11        3          1          17
  12        3          2          14  15
  13        3          1          15
  14        3          1          17
  15        3          1          18
  16        3          1          18
  17        3          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1
------------------------------------------------------------------------
  1      1     0       0    0    0
  2      1     1       0    2    8
         2     5       0    1    5
         3     7       0    1    2
  3      1     3       0    7    4
         2     6       8    0    4
         3     8       0    4    4
  4      1     4       4    0    4
         2     5       4    0    3
         3     7       4    0    2
  5      1     1       0    8    7
         2     4       0    5    7
         3     5       6    0    6
  6      1     4       0    3   10
         2     4       0    5    9
         3     9       0    1    8
  7      1     4       0    6    8
         2     8       7    0    6
         3    10       0    4    2
  8      1     2       0    6    8
         2     3       4    0    7
         3     9       4    0    4
  9      1     7       8    0    5
         2     8       6    0    4
         3    10       0    2    3
 10      1     2       0    8    3
         2     6       6    0    3
         3     8       3    0    3
 11      1     2       0   10    9
         2     3       0    5    6
         3     7       8    0    3
 12      1     4       4    0    9
         2     6       0    8    9
         3     7       3    0    9
 13      1     3       0    7    4
         2     4       3    0    3
         3     9       0    4    1
 14      1     7       6    0    3
         2     8       6    0    2
         3    10       3    0    2
 15      1     2       0    2    7
         2     3       8    0    6
         3     4       5    0    3
 16      1     1       0    7    8
         2     6       9    0    8
         3     8       0    4    8
 17      1     3       0    3    2
         2     3       9    0    2
         3     4       0    3    1
 18      1     0       0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1
   23   22   90
************************************************************************
