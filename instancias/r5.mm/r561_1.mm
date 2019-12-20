************************************************************************
file with basedata            : cr561_.bas
initial value random generator: 25469
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  130
RESOURCES
  - renewable                 :  5   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       23        8       23
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          3           6   7  11
   3        3          3           5  11  15
   4        3          3           5  11  15
   5        3          3           8  12  16
   6        3          3          10  12  16
   7        3          2           8   9
   8        3          1          17
   9        3          2          10  13
  10        3          2          15  17
  11        3          2          12  16
  12        3          1          13
  13        3          1          14
  14        3          1          17
  15        3          1          18
  16        3          1          18
  17        3          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  R 3  R 4  R 5  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0    0    0    0
  2      1     1       7   10    6    7    9    1    5
         2     1       7   10    5    8    8    1    5
         3     7       6   10    1    5    5    1    5
  3      1     1       6    5    9    5   10    9    5
         2     6       3    5    8    5   10    9    4
         3     9       3    2    8    2    9    8    3
  4      1     1       7    6    7    4    6    6    5
         2     6       5    4    7    4    6    5    4
         3    10       3    3    6    3    6    4    3
  5      1     5       3    4    7    9    2    4    7
         2     5       4    4    5    8    2    5    9
         3    10       2    4    4    6    2    1    4
  6      1     1      10    4   10    9    7    5    9
         2     3       8    4    6    9    5    5    8
         3     4       3    3    5    9    4    2    6
  7      1     1       9    6    6    3    8    7    9
         2     7       9    2    2    3    6    4    5
         3     7       9    4    4    1    7    5    7
  8      1     5       6    8    6    8    3    7    8
         2     5       7    7    5    9    3    9    7
         3     9       4    5    3    7    1    5    4
  9      1     1       4   10    9    2    6    8    9
         2     7       3    8    9    2    4    7    8
         3     8       3    4    8    2    2    6    7
 10      1     6       6    9    9    9    3   10    9
         2     9       1    7    8    7    1   10    7
         3     9       1    7    9    7    1    9    6
 11      1     3       8   10    4    9    5    7    8
         2     3       8    9    4    7    7    8    7
         3     6       8    8    3    5    4    7    6
 12      1     7       5    8    9    3    6   10    5
         2     7       5    8    9    3    9    7    5
         3    10       5    6    8    2    2    6    5
 13      1     4       6    5    8    4    6    6    5
         2     7       5    4    7    3    6    6    5
         3     9       5    3    7    3    6    3    4
 14      1     2       8    7    8    2    7    8    4
         2     5       6    5    8    2    4    7    4
         3     8       4    4    8    2    3    5    4
 15      1     6       6    2    5    8    7    8    6
         2     7       6    1    3    4    7    7    5
         3     7       5    2    4    7    7    8    2
 16      1     1      10    8    9    3   10    6    8
         2     5       9    7    9    2    7    5    7
         3     8       9    6    6    1    5    5    7
 17      1     4       8    7    4   10   10    9    9
         2     7       6    6    3   10    6    9    4
         3     9       5    4    2   10    1    8    1
 18      1     0       0    0    0    0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  R 3  R 4  R 5  N 1  N 2
   15   16   14   15   13  115  113
************************************************************************
