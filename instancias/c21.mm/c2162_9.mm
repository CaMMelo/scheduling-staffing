************************************************************************
file with basedata            : c2162_.bas
initial value random generator: 1766078566
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  139
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       22       14       22
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          3           5   7  10
   3        3          3           6   7  13
   4        3          3           8   9  10
   5        3          3           6  11  12
   6        3          3           8   9  14
   7        3          3           8  11  12
   8        3          3          15  16  17
   9        3          2          16  17
  10        3          3          11  12  13
  11        3          2          14  15
  12        3          1          14
  13        3          2          15  16
  14        3          1          17
  15        3          1          18
  16        3          1          18
  17        3          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0
  2      1     4       5    8    7    4
         2     4       5    8    6    5
         3     7       3    7    5    3
  3      1     4       8    7    4    9
         2     6       7    6    4    9
         3     9       7    3    4    8
  4      1     7       2    2    3    6
         2     9       2    2    3    3
         3     9       1    2    3    4
  5      1     1       8    6    3    8
         2     1       6    5    4    7
         3    10       4    4    3    4
  6      1     4      10    9    2    3
         2     6       9    8    2    2
         3    10       8    5    2    2
  7      1     3       8    7    6    3
         2     6       6    6    6    2
         3     7       2    6    5    2
  8      1     4       8    8    7    3
         2     7       8    8    7    2
         3    10       4    6    7    2
  9      1     4       3    7    3    4
         2     4       3    9    4    3
         3     8       3    5    3    3
 10      1     5      10    9    9    7
         2     7       9    9    9    7
         3     9       7    9    8    5
 11      1     3       7    6    7    9
         2     8       6    5    4    9
         3    10       4    5    2    8
 12      1     1       3    9    8    9
         2     5       2    9    8    9
         3    10       2    9    6    8
 13      1     4       8    3    1    5
         2     5       7    2    1    5
         3     9       6    2    1    5
 14      1     2       8   10    7    9
         2     4       8    7    5    9
         3     8       7    7    2    9
 15      1     1       4   10    6   10
         2     5       4    9    5    5
         3     8       1    9    5    2
 16      1     3       3    8    8    6
         2     4       3    8    5    5
         3     5       3    8    5    3
 17      1     5       8    9    3    7
         2     9       7    7    3    4
         3    10       6    7    2    4
 18      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
   19   22   86  103
************************************************************************
