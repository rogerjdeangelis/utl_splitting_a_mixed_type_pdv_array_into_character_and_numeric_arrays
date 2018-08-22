Splitting a mixed type pdv array into character and numeric arrays

Problem:
  Split a table into two tables, one numeric and one character

Astounding profile
https://communities.sas.com/t5/user/viewprofilepage/user-id/4954

https://tinyurl.com/y98d4los
https://communities.sas.com/t5/SAS-Programming/Array-variables-numeric-and-character-start-same/m-p/488814


  Example 'Mixed Arrays'

     1. keep x1-x7

     2. set have(keep=x1-character-x7)
        set have(keep=x1-numeric-x7)

     3. array nums {*} x1-numeric-x7;
        array chars {*} x1-character-x7;

     4. sum(of x1-numeric-x7)


INPUT
=====

 WORK.HAVE

   Variables in Creation Order

  #    Variable    Type    Len

  1    X1          Num       8

  2    X2          Char      1
  3    X3          Char      1

  4    X4          Num       8
  5    X5          Num       8

  6    X6          Char      1

  7    X7          Num       8


EXAMPLE OUTPUT
--------------

 WORK.WANTCHR

   Variables in Creation Order

  #    Variable    Type    Len

  1    X2          Char      1
  2    X3          Char      1
  3    X6          Char      1


 WORK.WANTNUM

   Variables in Creation Order

  #    Variable    Type   Len

  1    X1          Num      8
  2    X4          Num      8
  3    X5          Num      8
  4    X7          Num      8


PROCESS
=======

data wantChr(keep=x1-character-x7)
     wantNum(keep=x1-numeric-x7);
  set have;
run;quit;

NOTE: There were 1 observations read from the data set WORK.HAVE.
NOTE: The data set WORK.WANTCHR has 1 observations and 3 variables.
NOTE: The data set WORK.WANTNUM has 1 observations and 4 variables.


OUTPUT
======

WORK.WANTCHR total obs=1

    X2    X3    X6

    A     B     C

WORK.WANTNUM total obs=1

    X1    X4    X5    X7

     0     1     2     9

*                _              _       _
 _ __ ___   __ _| | _____    __| | __ _| |_ __ _
| '_ ` _ \ / _` | |/ / _ \  / _` |/ _` | __/ _` |
| | | | | | (_| |   <  __/ | (_| | (_| | || (_| |
|_| |_| |_|\__,_|_|\_\___|  \__,_|\__,_|\__\__,_|

;

data have;
retain x1 0 x2 'A' x3 'B' x4 1 x5 2 x6 'C' x7 9;
run;quit;

*          _       _   _
 ___  ___ | |_   _| |_(_) ___  _ __
/ __|/ _ \| | | | | __| |/ _ \| '_ \
\__ \ (_) | | |_| | |_| | (_) | | | |
|___/\___/|_|\__,_|\__|_|\___/|_| |_|

;

see process
