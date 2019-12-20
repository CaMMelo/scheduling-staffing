************************************************************************
file with basedata            : mf29_.bas
initial value random generator: 994833171
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  32
horizon                       :  245
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     30      0       30       21       30
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          3           6   7   9
   3        3          3           5   8  11
   4        3          2          13  22
   5        3          2          10  30
   6        3          1          16
   7        3          2          15  26
   8        3          3          12  14  21
   9        3          3          14  18  20
  10        3          2          16  27
  11        3          2          16  23
  12        3          2          22  28
  13        3          3          15  17  19
  14        3          2          23  29
  15        3          3          25  29  31
  16        3          1          28
  17        3          2          21  26
  18        3          1          22
  19        3          1          20
  20        3          3          21  24  25
  21        3          2          23  29
  22        3          2          24  25
  23        3          1          27
  24        3          2          26  31
  25        3          1          30
  26        3          1          30
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
  2      1     5       9    2    5    0
         2     6       6    2    0    7
         3    10       2    2    0    1
  3      1     3       6    3    5    0
         2     4       6    3    4    0
         3     5       3    2    4    0
  4      1     1       8    8    7    0
         2    10       4    5    0    6
         3    10       6    5    3    0
  5      1     2       7    7    0    4
         2     2       7    7    7    0
         3     9       7    7    2    0
  6      1     5       5    7    0    6
         2     7       4    6    0    4
         3     9       2    5    0    4
  7      1     4       3    7    6    0
         2     6       2    6    0    7
         3     9       1    6    6    0
  8      1     7       1    7    0    7
         2     8       1    7    4    0
         3    10       1    2    0    4
  9      1     1       7    8    6    0
         2     4       5    8    0    7
         3     6       2    7    0    5
 10      1     3      10   10    4    0
         2    10       6   10    0    9
         3    10       8    9    2    0
 11      1     3       5    6    0    6
         2     5       4    6    1    0
         3     7       2    6    0    1
 12      1     2      10    7    0    8
         2     6       8    4    9    0
         3    10       7    1    0    7
 13      1     7       7    5    0    3
         2     7       7    6    6    0
         3     9       6    3    5    0
 14      1     1       5    6    7    0
         2     2       5    3    5    0
         3     9       5    2    0    8
 15      1     1       9    9    3    0
         2     3       7    9    2    0
         3     6       4    7    1    0
 16      1     6       4    8    4    0
         2    10       4    5    0    3
         3    10       3    7    0    2
 17      1     2       6    5    0    5
         2     4       6    5    6    0
         3     6       5    5    4    0
 18      1     1       7    9    6    0
         2     3       5    9    4    0
         3     6       2    7    0    3
 19      1     4       8    8    5    0
         2     4       7    8    6    0
         3     8       7    8    0    2
 20      1     2       7    5    8    0
         2     6       7    5    7    0
         3     9       4    3    5    0
 21      1     3       3    8    0    8
         2     4       2    6    7    0
         3     8       2    4    0    5
 22      1     1      10    9    6    0
         2     7      10    7    0    8
         3    10       9    5    0    7
 23      1     3       6    7    6    0
         2     6       5    7    4    0
         3     8       4    7    0    9
 24      1     1       7   10    0    2
         2     7       6    8   10    0
         3     9       5    7    8    0
 25      1     5       7    9    0    4
         2     7       6    8    2    0
         3     9       6    6    0    4
 26      1     2       6    6    8    0
         2     2       6    6    0    7
         3     3       3    4    0    6
 27      1     3       4    8    2    0
         2     3       4    6    0    8
         3     6       3    6    0    5
 28      1     2      10    8    0    9
         2     4       9    8    0    5
         3     8       9    8    0    4
 29      1     1       7    6    0    8
         2     2       6    5    7    0
         3     9       4    4    3    0
 30      1     2       5    8    5    0
         2     6       5    8    0    9
         3     8       4    5    0    8
 31      1     5       6    8    7    0
         2     7       5    7    7    0
         3     9       5    7    0    1
 32      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
   16   20  160  164
************************************************************************
