************************************************************************
file with basedata            : cm239_.bas
initial value random generator: 1024302391
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  130
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       34        2       34
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        2          3           5   6   7
   3        2          1          15
   4        2          3           5   6   7
   5        2          3           8  10  16
   6        2          3           9  10  12
   7        2          2          13  17
   8        2          2          12  14
   9        2          2          11  13
  10        2          2          13  14
  11        2          2          14  16
  12        2          2          15  17
  13        2          1          15
  14        2          1          17
  15        2          1          18
  16        2          1          18
  17        2          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0
  2      1     7       6    7    3    2
         2     7       6    6    4    4
  3      1     9       8    3    9    5
         2    10       4    3    6    4
  4      1     5       8    4    8    9
         2     7       7    4    5    5
  5      1     6       5    9    6    4
         2     9       5    8    5    4
  6      1     8       7   10    9    3
         2     9       6    9    7    3
  7      1     3       6    9    8    8
         2     6       5    9    4    6
  8      1     5      10    6    9    8
         2     8      10    1    9    5
  9      1     5       5    9    8    8
         2     9       5    7    4    5
 10      1     5       9    9    4    3
         2    10       8    5    2    3
 11      1     4       6    7    7    8
         2     7       4    5    4    5
 12      1     4       7    9    9    2
         2     6       4    9    5    1
 13      1     2       6    6    7    2
         2     5       5    6    5    1
 14      1     1      10    6    2   10
         2    10       5    5    2    3
 15      1     2       3    7    6    6
         2    10       2    6    5    5
 16      1     3       4    7    5    4
         2     7       4    7    2    2
 17      1     9       8    8    4    9
         2    10       4    6    3    9
 18      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
   22   26   80   71
************************************************************************
