************************************************************************
file with basedata            : md183_.bas
initial value random generator: 1258901118
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  16
horizon                       :  102
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     14      0       14       12       14
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          2           5   6
   3        3          3           5   7   9
   4        3          3           5   8  12
   5        3          1          13
   6        3          2           7   9
   7        3          3           8  10  11
   8        3          2          14  15
   9        3          2          10  11
  10        3          1          13
  11        3          2          12  14
  12        3          2          13  15
  13        3          1          16
  14        3          1          16
  15        3          1          16
  16        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0
  2      1     1       4    6    8    6
         2     7       3    5    6    5
         3     8       3    5    3    2
  3      1     3       9    5    7    6
         2     6       6    3    5    4
         3     6       5    4    5    4
  4      1     3      10    3    6    4
         2     6       9    3    6    3
         3    10       9    1    6    3
  5      1     5      10    7    7   10
         2     6       9    6    5   10
         3    10       8    6    2   10
  6      1     3       9    6   10   10
         2     5       9    6    8   10
         3     5       8    6    9   10
  7      1     3       5    3    6    7
         2     5       4    3    6    7
         3     8       2    3    6    7
  8      1     2       8    4    6    6
         2     3       6    2    5    6
         3     4       4    1    5    4
  9      1     3       8    5    4    6
         2     5       5    4    3    3
         3     5       2    4    3    5
 10      1     1       2    8    2    6
         2     3       2    5    2    5
         3     9       2    4    1    5
 11      1     2       7    9    8    6
         2     4       3    8    6    5
         3    10       1    6    6    4
 12      1     1       2    6    6    9
         2     3       2    5    6    8
         3     5       2    2    6    6
 13      1     1       3    5    9    5
         2     4       3    4    5    3
         3     7       3    4    3    1
 14      1     5       3    8    8    5
         2     8       3    7    6    3
         3     8       3    6    4    4
 15      1     3      10    2    9    6
         2     4       5    2    6    6
         3     7       2    2    4    4
 16      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
   23   23   88   86
************************************************************************
