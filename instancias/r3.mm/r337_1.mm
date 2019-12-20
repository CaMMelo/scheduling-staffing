************************************************************************
file with basedata            : cr337_.bas
initial value random generator: 10731
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  127
RESOURCES
  - renewable                 :  3   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       21        6       21
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          3           7  13  17
   3        3          3           5   6  10
   4        3          3          10  11  13
   5        3          3           7  13  17
   6        3          2           8  17
   7        3          1           8
   8        3          1           9
   9        3          3          11  14  15
  10        3          3          12  14  15
  11        3          1          12
  12        3          1          16
  13        3          2          14  15
  14        3          1          16
  15        3          1          18
  16        3          1          18
  17        3          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  R 3  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0    0
  2      1     2       4    1    5   10    6
         2     6       3    1    5    9    5
         3     9       2    1    5    7    3
  3      1     1       4   10    3    5    8
         2     9       3    7    3    5    7
         3    10       2    5    2    4    5
  4      1     2      10    9    7    2   10
         2     3       9    8    5    2    8
         3     7       8    8    3    1    6
  5      1     1       4    2    4    8    6
         2     3       3    2    4    7    5
         3     8       2    2    3    5    3
  6      1     3       4    9    6    8    5
         2     5       3    4    5    7    4
         3     6       2    2    4    7    4
  7      1     1       5    5   10    9    7
         2     3       4    4   10    7    6
         3     5       2    4    9    6    5
  8      1     2       7    9    7    7    2
         2     4       3    4    7    6    2
         3     4       5    4    7    5    1
  9      1     1       8    4    6    8    2
         2     3       7    4    4    7    2
         3     9       5    3    3    7    2
 10      1     5       6    5    8    4    7
         2     8       5    4    7    3    3
         3    10       5    2    7    2    1
 11      1     3       6    4    6    6    8
         2     5       3    4    6    4    8
         3    10       2    2    5    1    8
 12      1     2       5    6   10    8    2
         2     5       5    5    8    4    2
         3     8       3    4    3    1    2
 13      1     1       8    7    6    4    5
         2     6       3    3    6    3    5
         3     6       5    4    6    2    5
 14      1     8       6    8    3    5    9
         2     8       5    7    3    6    9
         3     9       5    3    2    2    5
 15      1     1       1    7    8    6    4
         2     9       1    5    7    5    4
         3    10       1    2    6    5    3
 16      1     6       3    8    5    8    6
         2     7       3    8    4    8    5
         3     9       2    8    3    7    3
 17      1     5       8    9    6    7    5
         2     5       9    9    6    7    4
         3     7       7    7    5    4    2
 18      1     0       0    0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  R 3  N 1  N 2
   12   13   14   76   67
************************************************************************
