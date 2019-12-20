************************************************************************
file with basedata            : md306_.bas
initial value random generator: 37354817
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  20
horizon                       :  154
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     18      0       14        9       14
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          3           7  11  15
   3        3          3          10  13  15
   4        3          3           5   6  14
   5        3          2          15  18
   6        3          2           8  12
   7        3          3           9  14  17
   8        3          1          13
   9        3          2          13  18
  10        3          3          12  16  19
  11        3          3          12  14  17
  12        3          1          18
  13        3          1          19
  14        3          1          19
  15        3          1          16
  16        3          1          17
  17        3          1          20
  18        3          1          20
  19        3          1          20
  20        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0
  2      1     1       0    8   10    6
         2     3       0    7    9    6
         3    10       9    0    9    6
  3      1     5       0    5    8    7
         2     6       6    0    7    7
         3     9       0    3    4    6
  4      1     4      10    0    7   10
         2     5       0    6    4    9
         3     8      10    0    3    9
  5      1     2       7    0    4    8
         2     6       0    4    3    8
         3    10       3    0    2    8
  6      1     1       7    0    6    6
         2     4       0    5    3    5
         3    10       2    0    1    4
  7      1     2       0    7    9    7
         2     4       0    5    9    6
         3     9       0    3    9    5
  8      1     3       0    9    9    5
         2     3       1    0    9    5
         3     6       1    0    5    5
  9      1     3       0    5    9    5
         2     5       0    5    6    3
         3    10       2    0    5    3
 10      1     2       6    0    8    5
         2     2       0    8   10    5
         3     4       8    0    8    4
 11      1     2       8    0    6    9
         2     4       0    7    6    6
         3     9       0    2    6    5
 12      1     2       0   10    5   10
         2     9       0    8    4    8
         3    10       5    0    3    6
 13      1     5       0    8    8    9
         2     7       0    7    8    5
         3     8       0    5    8    3
 14      1     1       0    6    3    8
         2     4       7    0    2    7
         3     9       3    0    2    7
 15      1     4       0    5    6   10
         2     5       0    5    6    8
         3     8       3    0    6    6
 16      1     2       6    0    5    9
         2     6       3    0    4    9
         3     7       0    8    4    8
 17      1     2       0    2    7    4
         2     3       0    2    6    4
         3     7       9    0    5    3
 18      1     4       9    0    8    9
         2     7       8    0    8    8
         3    10       5    0    7    6
 19      1     1      10    0    7    7
         2     8       0    5    7    6
         3    10       8    0    6    6
 20      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
   17   17  119  126
************************************************************************
