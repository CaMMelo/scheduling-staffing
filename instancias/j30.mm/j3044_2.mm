************************************************************************
file with basedata            : mf44_.bas
initial value random generator: 659839276
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  32
horizon                       :  232
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     30      0       25       22       25
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          3          13  14  17
   3        3          3           5   7   8
   4        3          1          20
   5        3          3           6  10  27
   6        3          2          15  22
   7        3          2          12  27
   8        3          3           9  14  18
   9        3          3          11  12  21
  10        3          3          18  19  23
  11        3          2          16  19
  12        3          1          20
  13        3          1          25
  14        3          1          24
  15        3          3          16  23  25
  16        3          1          26
  17        3          3          19  20  26
  18        3          1          24
  19        3          2          25  31
  20        3          2          22  30
  21        3          1          31
  22        3          1          29
  23        3          2          24  26
  24        3          3          28  29  30
  25        3          2          29  30
  26        3          1          28
  27        3          1          28
  28        3          1          31
  29        3          1          32
  30        3          1          32
  31        3          1          32
  32        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0
  2      1     3       0    5   10    7
         2     7       0    3    8    7
         3     8       0    3    5    6
  3      1     4       0   10    2    5
         2     4       5    0    2    7
         3     9       0   10    1    5
  4      1     1       0    8    6    4
         2     7      10    0    6    3
         3     7       0    8    6    3
  5      1     2       7    0    2    6
         2     4       0    6    2    3
         3     7       6    0    1    2
  6      1     1       8    0    5    9
         2     2       6    0    3    7
         3     5       6    0    3    6
  7      1     2       4    0   10    7
         2     5       4    0    9    7
         3     7       0    8    9    6
  8      1     4       0   10    8    6
         2     4       6    0    9    6
         3     7       2    0    7    6
  9      1     2       0    6    4    6
         2     5       6    0    4    4
         3     7       5    0    3    4
 10      1     5       0    9    7    9
         2     5       0   10    6    9
         3    10       0    3    4    7
 11      1     4       0    3   10    9
         2     7       5    0    7    7
         3     8       0    2    6    5
 12      1     1       2    0    7    8
         2     2       2    0    5    8
         3    10       1    0    2    7
 13      1     2       8    0    9    7
         2     5       8    0    8    7
         3    10       8    0    8    5
 14      1     3       8    0    6    7
         2     6       5    0    5    7
         3     8       0    3    3    6
 15      1     1       0    7    7    2
         2     5       0    6    6    2
         3     6       0    3    5    1
 16      1     2       0    4   10    5
         2     9       7    0   10    4
         3    10       6    0    9    3
 17      1     4       5    0    5    7
         2     6       0    7    5    7
         3     7       0    4    4    5
 18      1     4       0    3    7    9
         2     5       6    0    6    6
         3     9       3    0    5    5
 19      1     5       8    0    4    6
         2     6       0    4    3    4
         3     9       7    0    3    1
 20      1     1       3    0    6    6
         2     6       0    3    5    6
         3     7       1    0    3    5
 21      1     1       6    0    4    3
         2     5       0    3    3    3
         3     9       4    0    3    2
 22      1     2       0    9    4    7
         2     3       0    4    3    6
         3     9       9    0    3    4
 23      1     1       0    6    6    6
         2     2       6    0    5    6
         3     3       2    0    3    6
 24      1     1       0    7    6    7
         2     2       0    5    6    5
         3     3       0    3    6    5
 25      1     3       0   10    4    6
         2     4       0    8    3    6
         3     7       7    0    3    2
 26      1     1       0    5    5    5
         2     4       0    4    4    4
         3     6       1    0    2    2
 27      1     3       3    0    6    5
         2     4       3    0    5    4
         3     9       2    0    4    3
 28      1     1       0    5    4    3
         2     9       3    0    3    3
         3    10       3    0    1    2
 29      1     3       0    9    5    7
         2     5       0    8    5    7
         3     6       4    0    3    6
 30      1     1       0    8    6    9
         2     7       0    7    5    8
         3     9       6    0    5    4
 31      1     3       4    0    9    9
         2     3       6    0    9    8
         3    10       0    6    7    8
 32      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
   40   34  156  163
************************************************************************
