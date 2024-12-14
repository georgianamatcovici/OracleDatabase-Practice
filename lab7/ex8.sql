SQL> select prenume from (select prenume from studenti order by prenume) where rownum=5;

no rows selected

SQL> select prenume from studenti order by prenume;

PRENUME                                                                         
----------                                                                      
Alexandra                                                                       
Alexandru                                                                       
Andrada                                                                         
Andreea                                                                         
Andrei                                                                          
Bogdan                                                                          
Ciprian                                                                         
George                                                                          
Ioana                                                                           
Ioana                                                                           
Ioana                                                                           

PRENUME                                                                         
----------                                                                      
Radu                                                                            
Raluca                                                                          

13 rows selected.

SQL> select * from (select prenume from studenti order by prenume);

PRENUME                                                                         
----------                                                                      
Alexandra                                                                       
Alexandru                                                                       
Andrada                                                                         
Andreea                                                                         
Andrei                                                                          
Bogdan                                                                          
Ciprian                                                                         
George                                                                          
Ioana                                                                           
Ioana                                                                           
Ioana                                                                           

PRENUME                                                                         
----------                                                                      
Radu                                                                            
Raluca                                                                          

13 rows selected.

SQL> select * from (select prenume from studenti order by prenume) where rownum=5;

no rows selected

SQL> select * from (select prenume from studenti order by prenume) where rownum<4;

PRENUME                                                                         
----------                                                                      
Alexandra                                                                       
Alexandru                                                                       
Andrada                                                                         

SQL> select * from (select prenume from studenti order by prenume) where rownum=5;

no rows selected

SQL> select * from (select prenume, rownum nr_ord from studenti order by prenume) where nr_ord=5;

PRENUME        NR_ORD                                                           
---------- ----------                                                           
Alexandru           5                                                           

SQL> select * from (select prenume, rownum nr_ord from studenti order by prenume);

PRENUME        NR_ORD                                                           
---------- ----------                                                           
Alexandra          11                                                           
Alexandru           5                                                           
Andrada             7                                                           
Andreea            13                                                           
Andrei             10                                                           
Bogdan              1                                                           
Ciprian             8                                                           
George             12                                                           
Ioana               3                                                           
Ioana               9                                                           
Ioana               6                                                           

PRENUME        NR_ORD                                                           
---------- ----------                                                           
Radu                2                                                           
Raluca              4                                                           

13 rows selected.

SQL> select prenume from(select prenume, rownum nr_ord from studenti order by prenume) where nr_ord = 5;

PRENUME                                                                         
----------                                                                      
Alexandru                                                                       

SQL> select prenume from(select prenume, rownum nr_ord from studenti order by prenume) where nr_ord = 5;

PRENUME                                                                         
----------                                                                      
Alexandru                                                                       

SQL> select * from (select prenume from studenti order by prenume) where rownum=5;

no rows selected

SQL> select * from (select prenume, rownum() nr_ord from studenti order by prenume) where nr_ord;
select * from (select prenume, rownum() nr_ord from studenti order by prenume) where nr_ord
                                     *
ERROR at line 1:
ORA-00923: FROM keyword not found where expected 


SQL> select * from (select prenume, rownum() nr_ord from studenti order by prenume) where nr_ord=5;
select * from (select prenume, rownum() nr_ord from studenti order by prenume) where nr_ord=5
                                     *
ERROR at line 1:
ORA-00923: FROM keyword not found where expected 


SQL> select prenume, rownum() nr_ord from studenti order by prenume;
select prenume, rownum() nr_ord from studenti order by prenume
                      *
ERROR at line 1:
ORA-00923: FROM keyword not found where expected 


SQL> select prenume, rownum nr_ord from studenti order by prenume;

PRENUME        NR_ORD                                                           
---------- ----------                                                           
Alexandra          11                                                           
Alexandru           5                                                           
Andrada             7                                                           
Andreea            13                                                           
Andrei             10                                                           
Bogdan              1                                                           
Ciprian             8                                                           
George             12                                                           
Ioana               3                                                           
Ioana               9                                                           
Ioana               6                                                           

PRENUME        NR_ORD                                                           
---------- ----------                                                           
Radu                2                                                           
Raluca              4                                                           

13 rows selected.

SQL> select prenume, rownum as nr_ord from (select prenume, from studenti order by prenume);
select prenume, rownum as nr_ord from (select prenume, from studenti order by prenume)
                                                       *
ERROR at line 1:
ORA-00936: missing expression 


SQL> select prenume, rownum nr_ord from (select prenume, from studenti order by prenume);
select prenume, rownum nr_ord from (select prenume, from studenti order by prenume)
                                                    *
ERROR at line 1:
ORA-00936: missing expression 


SQL> select prenume from (select prenume, from studenti order by prenume);
select prenume from (select prenume, from studenti order by prenume)
                                     *
ERROR at line 1:
ORA-00936: missing expression 


SQL> select prenume, rownum as nr_ord from (select prenume from studenti order by prenume);

PRENUME        NR_ORD                                                           
---------- ----------                                                           
Alexandra           1                                                           
Alexandru           2                                                           
Andrada             3                                                           
Andreea             4                                                           
Andrei              5                                                           
Bogdan              6                                                           
Ciprian             7                                                           
George              8                                                           
Ioana               9                                                           
Ioana              10                                                           
Ioana              11                                                           

PRENUME        NR_ORD                                                           
---------- ----------                                                           
Radu               12                                                           
Raluca             13                                                           

13 rows selected.

SQL> select prenume, rownum as nr_ord from (select prenume from studenti order by prenume) where nr_ord=5;
select prenume, rownum as nr_ord from (select prenume from studenti order by prenume) where nr_ord=5
                                                                                            *
ERROR at line 1:
ORA-00904: "NR_ORD": invalid identifier 


SQL> select prenume, rownum as nr_ord from (select prenume from studenti order by prenume) where 2=5;

no rows selected

SQL> select prenume, rownum as "nr_ord" from (select prenume from studenti order by prenume) where nr_ord=5;
select prenume, rownum as "nr_ord" from (select prenume from studenti order by prenume) where nr_ord=5
                                                                                              *
ERROR at line 1:
ORA-00904: "NR_ORD": invalid identifier 


SQL> select prenume, rownum as "nr_ord" from (select prenume from studenti order by prenume);

PRENUME        nr_ord                                                           
---------- ----------                                                           
Alexandra           1                                                           
Alexandru           2                                                           
Andrada             3                                                           
Andreea             4                                                           
Andrei              5                                                           
Bogdan              6                                                           
Ciprian             7                                                           
George              8                                                           
Ioana               9                                                           
Ioana              10                                                           
Ioana              11                                                           

PRENUME        nr_ord                                                           
---------- ----------                                                           
Radu               12                                                           
Raluca             13                                                           

13 rows selected.

SQL> select prenume, rownum as "nr_ord" from (select prenume from studenti order by prenume) where nr_ord=5;
select prenume, rownum as "nr_ord" from (select prenume from studenti order by prenume) where nr_ord=5
                                                                                              *
ERROR at line 1:
ORA-00904: "NR_ORD": invalid identifier 


SQL> select prenume from (select prenume, rownum as "nr_ord" from (select prenume from studenti order by prenume) ) where nr_ord=5;
select prenume from (select prenume, rownum as "nr_ord" from (select prenume from studenti order by prenume) ) where nr_ord=5
                                                                                                                     *
ERROR at line 1:
ORA-00904: "NR_ORD": invalid identifier 


SQL> select prenume from (select prenume, rownum as "nr_ord" from (select prenume from studenti order by prenume) ) where 2=5;

no rows selected

SQL> select prenume from (select prenume, rownum as "nr_ord" from (select prenume from studenti order by prenume) ) where "nr_ord"=5;

PRENUME                                                                         
----------                                                                      
Andrei                                                                          

SQL> spool off
