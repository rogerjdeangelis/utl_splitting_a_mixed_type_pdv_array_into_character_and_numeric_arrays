# utl_splitting_a_mixed_type_pdv_array_into_character_and_numeric_arrays
Splitting a mixed type pdv array into character and numeric arrays.  Keywords: sas sql join merge big data analytics macros oracle teradata mysql sas communities stackoverflow statistics artificial inteligence AI Python R Java Javascript WPS Matlab SPSS Scala Perl C C# Excel MS Access JSON graphics maps NLP natural language processing machine learning igraph DOSUBL DOW loop stackoverflow SAS community.
     SAS Forum: Splitting a mixed type pdv array x1-x7 into character and numeric arrays

    SOAPBOX ON
     Less is more
     Having just two datatypes leads to powerful data manipulation algorithms.
     R has 4 numeric(integer,numeric,logical and complex)  and 3 character types(charcater,raw and factor?).
     R is a big headache when inter operating with other applications and databases.
     SAS needs a 128bit double?
    SOAPBOX OFF

    Problem:
      Split a table into two tables, one numeric and one character

    see github
    https://tinyurl.com/ycg2chqm
    https://github.com/rogerjdeangelis/utl_splitting_a_mixed_type_pdv_array_into_character_and_numeric_arrays

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

     WORK.HAVE  (mixed type pdv)

      Variables in Creation Order

     #    Variable    Type    Len

     1    ROGER       Num       8
     2    X1          Num       8

     3    X2          Char      1
     4    X3          Char      1

     5    X4          Num       8
     6    X5          Num       8

     7    X6          Char      1
     8    X7          Num       8

     9    MARY        Char      4

    EXAMPLE OUTPUT
    --------------

    WORK.WANTCHR total obs=1

        X2    X3    X6

        A     B     C

       Variables in Creation Order

      #    Variable    Type    Len

      1    X2          Char      1
      2    X3          Char      1
      3    X6          Char      1


    WORK.WANTNUM total obs=1

        X1    X4    X5    X7

         0     4     2     9

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

    see example output

    *                _              _       _
     _ __ ___   __ _| | _____    __| | __ _| |_ __ _
    | '_ ` _ \ / _` | |/ / _ \  / _` |/ _` | __/ _` |
    | | | | | | (_| |   <  __/ | (_| | (_| | || (_| |
    |_| |_| |_|\__,_|_|\_\___|  \__,_|\__,_|\__\__,_|

    ;

    data have;
    retain  roger 1 x1 0 x2 'A' x3 'B' x4 4 x5 2 x6 'C' x7 9 mary 'MARY';
    run;quit;

    *          _       _   _
     ___  ___ | |_   _| |_(_) ___  _ __
    / __|/ _ \| | | | | __| |/ _ \| '_ \
    \__ \ (_) | | |_| | |_| | (_) | | | |
    |___/\___/|_|\__,_|\__|_|\___/|_| |_|

    ;

    see process
