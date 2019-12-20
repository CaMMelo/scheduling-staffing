************************************************************************
file with basedata            : cm217_.bas
initial value random generator: 3195
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  120
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       30        2       30
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        2          3           6   8  12
   3        2          3           5  10  17
   4        2          2           9  14
   5        2          3           8  12  13
   6        2          3           7  11  15
   7        2          2           9  14
   8        2          2          15  16
   9        2          2          10  17
  10        2          1          13
  11        2          2          13  14
  12        2          1          15
  13        2          1          16
  14        2          2          16  17
  15        2          1          18
  16        2          1          18
  17        2          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0
  2      1     4       0    8    0    3
         2    10       0    4    4    0
  3      1     3       6    0    4    0
         2     6       0    8    0    5
  4      1     5       0    6    0    1
         2     9       0    4    8    0
  5      1     4       9    0    0    9
         2     6       2    0    0    7
  6      1     6       8    0    4    0
         2     9       0    8    0    8
  7      1     8       4    0    5    0
         2     8       0    1    7    0
  8      1     6       0    8    0    8
         2     9       6    0    0    7
  9      1     2       0    6    0    2
         2     4       0    1    0    2
 10      1     3       0    7    0    3
         2     6       0    6    0    2
 11      1     8       0    7    0    2
         2     8       0    7    8    0
 12      1     4       0   10    0    5
         2     8       0    5    7    0
 13      1     3       0    8    2    0
         2     3       4    0    0    4
 14      1     7       7    0   10    0
         2    10       0    4    3    0
 15      1     1       0    7    0    1
         2     7       0    5    2    0
 16      1     4       0    5    9    0
         2    10       2    0    7    0
 17      1     4       7    0    0    7
         2     7       0    8    5    0
 18      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
    6   12   56   48
************************************************************************
