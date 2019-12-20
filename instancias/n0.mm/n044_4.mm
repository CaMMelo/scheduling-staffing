************************************************************************
file with basedata            : me44_.bas
initial value random generator: 610789500
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  22
horizon                       :  152
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  0   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     20      0       20       18       20
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          3           5   6   8
   3        3          3           7  12  15
   4        3          2           6   9
   5        3          3          15  20  21
   6        3          3          14  18  19
   7        3          1          11
   8        3          3           9  12  18
   9        3          1          10
  10        3          3          14  16  17
  11        3          3          13  17  18
  12        3          2          13  14
  13        3          2          16  20
  14        3          1          20
  15        3          1          19
  16        3          1          21
  17        3          1          19
  18        3          1          21
  19        3          1          22
  20        3          1          22
  21        3          1          22
  22        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2
------------------------------------------------------------------------
  1      1     0       0    0
  2      1     1       0    9
         2     6       3    0
         3    10       2    0
  3      1     2       9    0
         2     2       0    5
         3     3       0    2
  4      1     3       8    0
         2     4       0    7
         3     8       0    6
  5      1     6       8    0
         2     6       0    9
         3     9       0    7
  6      1     4       7    0
         2     6       6    0
         3    10       0    6
  7      1     1       0    6
         2     2       0    4
         3     6       4    0
  8      1     6       0    6
         2     6       6    0
         3     8       0    5
  9      1     6       0    5
         2     6       5    0
         3     9       3    0
 10      1     1      10    0
         2     1       0    7
         3     5       0    4
 11      1     2       6    0
         2     6       0    8
         3     8       3    0
 12      1     3       6    0
         2     3       0    6
         3     8       0    5
 13      1     5       8    0
         2     6       4    0
         3     9       0    6
 14      1     2       0    4
         2     5       0    3
         3     7       0    2
 15      1     4       0    3
         2     7       4    0
         3    10       2    0
 16      1     3       9    0
         2     5       0    5
         3     7       0    4
 17      1     4       0    2
         2     5      10    0
         3     8       5    0
 18      1     3       0    5
         2     5       0    3
         3     6       2    0
 19      1     2       9    0
         2     4       7    0
         3     6       5    0
 20      1     1       0    9
         2     1       5    0
         3    10       2    0
 21      1     2       0    4
         2     5       8    0
         3     5       0    3
 22      1     0       0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2
   27   30
************************************************************************
