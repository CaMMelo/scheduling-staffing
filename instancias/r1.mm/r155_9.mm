************************************************************************
file with basedata            : cr155_.bas
initial value random generator: 1804081948
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  126
RESOURCES
  - renewable                 :  1   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       14        9       14
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          3           5   9  12
   3        3          3          11  12  14
   4        3          2          12  14
   5        3          2           6   8
   6        3          2           7  11
   7        3          3          10  13  17
   8        3          2          15  16
   9        3          3          10  13  17
  10        3          2          14  16
  11        3          2          13  15
  12        3          1          17
  13        3          1          16
  14        3          1          15
  15        3          1          18
  16        3          1          18
  17        3          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0
  2      1     2       9    5    7
         2     5       8    4    7
         3     9       8    2    6
  3      1     4      10    3    5
         2     4       8    3    9
         3     6       8    3    5
  4      1     3       8    3    5
         2     7       7    3    5
         3     8       7    3    2
  5      1     1       5    7    5
         2     1       5    6    7
         3     8       5    5    1
  6      1     2       8    6    6
         2     6       7    3    6
         3     9       6    3    5
  7      1     1       6    6    8
         2     4       3    5    7
         3     6       3    2    6
  8      1     1       9    7    8
         2     2       7    4    6
         3     4       4    3    4
  9      1     1       6   10   10
         2    10       5   10    5
         3    10       5    9    7
 10      1     4       9   10    6
         2     8       5    7    5
         3    10       4    6    5
 11      1     4       9    3    9
         2     4       8    4    5
         3     5       5    3    1
 12      1     1      10   10    5
         2     9       9    9    5
         3    10       8    9    3
 13      1     3       9    3    8
         2     5       8    3    7
         3    10       5    3    7
 14      1     1       9   10    6
         2     1       9    9    7
         3     5       8    9    6
 15      1     1       8    4    5
         2     1       6    5    7
         3     8       3    2    2
 16      1     2      10    7    8
         2     5       8    7    8
         3    10       3    5    7
 17      1     3       5    9    7
         2     4       5    7    5
         3     8       5    7    3
 18      1     0       0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  N 1  N 2
   24   97  105
************************************************************************
