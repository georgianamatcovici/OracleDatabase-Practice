SQL> SELECT max(valoare), min(valoare), avg(valoare), nr_matricol from note group by nr_matricol;

MAX(VALOARE) MIN(VALOARE) AVG(VALOARE) NR_MAT                                   
------------ ------------ ------------ ------                                   
          10            7            9 115                                      
           9            7            8 119                                      
          10            7          8.5 111                                      
           7            4   5.83333333 112                                      
          10            4   7.66666667 113                                      
          10            4   6.33333333 114                                      
          10            9   9.66666667 116                                      
           7            4   5.66666667 117                                      
           7            7            7 118                                      

9 rows selected.

SQL> SELECT max(valoare), min(valoare), round(avg(valoare), 2), nr_matricol from note group by nr_matricol;

MAX(VALOARE) MIN(VALOARE) ROUND(AVG(VALOARE),2) NR_MAT                          
------------ ------------ --------------------- ------                          
          10            7                     9 115                             
           9            7                     8 119                             
          10            7                   8.5 111                             
           7            4                  5.83 112                             
          10            4                  7.67 113                             
          10            4                  6.33 114                             
          10            9                  9.67 116                             
           7            4                  5.67 117                             
           7            7                     7 118                             

9 rows selected.

SQL> SELECT max(valoare), min(valoare), round(avg(valoare), 2), nr_matricol from note group by nr_matricol, id_curs;

MAX(VALOARE) MIN(VALOARE) ROUND(AVG(VALOARE),2) NR_MAT                          
------------ ------------ --------------------- ------                          
           8            8                     8 111                             
           6            6                     6 112                             
           4            4                     4 112                             
           9            9                     9 115                             
          10           10                    10 116                             
          10           10                    10 116                             
           4            4                     4 114                             
          10           10                    10 115                             
          10           10                    10 115                             
           8            8                     8 115                             
           9            9                     9 116                             

MAX(VALOARE) MIN(VALOARE) ROUND(AVG(VALOARE),2) NR_MAT                          
------------ ------------ --------------------- ------                          
           7            7                     7 117                             
           9            9                     9 119                             
           7            7                     7 112                             
           6            6                     6 112                             
           7            7                     7 112                             
           6            6                     6 114                             
           8            8                     8 111                             
           9            9                     9 111                             
           5            5                     5 112                             
           7            7                     7 113                             
           4            4                     4 113                             

MAX(VALOARE) MIN(VALOARE) ROUND(AVG(VALOARE),2) NR_MAT                          
------------ ------------ --------------------- ------                          
           4            4                     4 117                             
           7            7                     7 111                             
           9            9                     9 113                             
           7            7                     7 113                             
          10           10                    10 114                             
           7            7                     7 118                             
           7            7                     7 118                             
          10           10                    10 111                             
           9            9                     9 111                             
           9            9                     9 113                             
           5            5                     5 114                             

MAX(VALOARE) MIN(VALOARE) ROUND(AVG(VALOARE),2) NR_MAT                          
------------ ------------ --------------------- ------                          
           4            4                     4 114                             
           7            7                     7 119                             
           7            7                     7 115                             
          10           10                    10 115                             
           6            6                     6 117                             
           8            8                     8 119                             
          10           10                    10 113                             
           9            9                     9 114                             
           7            7                     7 118                             

42 rows selected.

SQL> SELECT max(valoare), id_curs from note group by nr_matricol;
SELECT max(valoare), id_curs from note group by nr_matricol
                     *
ERROR at line 1:
ORA-00979: not a GROUP BY expression 


SQL> SELECT max(valoare), id_curs from note group by id_curs;

MAX(VALOARE) ID_C                                                               
------------ ----                                                               
          10 22                                                                 
          10 21                                                                 
          10 24                                                                 
          10 23                                                                 
           9 26                                                                 
           8 25                                                                 

6 rows selected.

SQL> select an, count(*) from cursuri group by an
  2  ;

        AN   COUNT(*)                                                           
---------- ----------                                                           
         1          3                                                           
         2          4                                                           
         3          2                                                           

SQL> select credite, count(*) from cursuri group by credite;

   CREDITE   COUNT(*)                                                           
---------- ----------                                                           
         6          1                                                           
         5          6                                                           
         4          1                                                           
         8          1                                                           

SQL> SELECT credite, count(*) FROM cursuri GROUP BY credite; --Cate grupuri?
  2  SELECT an, credite, count(*) FROM cursuri GROUP BY an, credite ORDER BY an, credite;
SELECT credite, count(*) FROM cursuri GROUP BY credite; --Cate grupuri?
                                                      *
ERROR at line 1:
ORA-00911: invalid character 


SQL> SELECT an, credite, count(*) FROM cursuri GROUP BY an, credite ORDER BY an, credite;

        AN    CREDITE   COUNT(*)                                                
---------- ---------- ----------                                                
         1          4          1                                                
         1          5          2                                                
         2          5          3                                                
         2          8          1                                                
         3          5          1                                                
         3          6          1                                                

6 rows selected.

SQL> SELECT id_curs, COUNT(valoare) FROM note GROUP BY id_curs HAVING COUNT(valoare)>8;

ID_C COUNT(VALOARE)                                                             
---- --------------                                                             
22                9                                                             
21                9                                                             
23                9                                                             

SQL> select count(*) from studenti group by an;

  COUNT(*)                                                                      
----------                                                                      
         4                                                                      
         4                                                                      
         5                                                                      

SQL> select count(*) from studenti group by substr(grupa, 1, 1);

  COUNT(*)                                                                      
----------                                                                      
         7                                                                      
         6                                                                      

SQL> select count(*) from studenti group by an, grupa order by an, grupa;

  COUNT(*)                                                                      
----------                                                                      
         3                                                                      
         1                                                                      
         3                                                                      
         1                                                                      
         3                                                                      
         1                                                                      
         1                                                                      

7 rows selected.

SQL> select count(*) from studenti group by grupa, an order by an, grupa;

  COUNT(*)                                                                      
----------                                                                      
         3                                                                      
         1                                                                      
         3                                                                      
         1                                                                      
         3                                                                      
         1                                                                      
         1                                                                      

7 rows selected.

SQL> select count(*) from studenti group by an, grupa order by an, grupa;

  COUNT(*)                                                                      
----------                                                                      
         3                                                                      
         1                                                                      
         3                                                                      
         1                                                                      
         3                                                                      
         1                                                                      
         1                                                                      

7 rows selected.

SQL> select count(*), an, grupa from studenti group by an, grupa order by an, grupa;

  COUNT(*)         AN GR                                                        
---------- ---------- --                                                        
         3          1 B1                                                        
         1          1 B2                                                        
         3          2 A1                                                        
         1          2 B2                                                        
         3          3 A2                                                        
         1          3 A4                                                        
         1          3 B3                                                        

7 rows selected.

SQL> select count(*), count(bursa), an, grupa from studenti group by an,  an, grupa;

  COUNT(*) COUNT(BURSA)         AN GR                                           
---------- ------------ ---------- --                                           
         3            1          3 A2                                           
         1            0          1 B2                                           
         1            0          2 B2                                           
         1            0          3 A4                                           
         3            2          2 A1                                           
         3            2          1 B1                                           
         1            0          3 B3                                           

7 rows selected.

SQL> select sum(bursa) from studentil
  2  ;
select sum(bursa) from studentil
                       *
ERROR at line 1:
ORA-00942: table or view does not exist 


SQL> select sum(bursa) from studenti;

SUM(BURSA)                                                                      
----------                                                                      
      1750                                                                      

SQL> select avg(bursa) from studenti;

AVG(BURSA)                                                                      
----------                                                                      
       350                                                                      

SQL> select avg(nvl(bursa)) from studenti;
select avg(nvl(bursa)) from studenti
           *
ERROR at line 1:
ORA-00909: invalid number of arguments 


SQL> select avg(nvl(bursa, 0)) from studenti;

AVG(NVL(BURSA,0))                                                               
-----------------                                                               
       134.615385                                                               

SQL> select sum(nvl(bursa, 0))/count(*) from studenti;

SUM(NVL(BURSA,0))/COUNT(*)                                                      
--------------------------                                                      
                134.615385                                                      

SQL> select valoare, count(valoare) from note group by valoare;

   VALOARE COUNT(VALOARE)                                                       
---------- --------------                                                       
         6              4                                                       
         5              2                                                       
         4              5                                                       
         8              4                                                       
         7             11                                                       
         9              8                                                       
        10              8                                                       

7 rows selected.

SQL> spool off
