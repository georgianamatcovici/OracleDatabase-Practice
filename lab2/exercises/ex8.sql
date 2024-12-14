SQL> select nume, prenume, to_char(data_nastere, 'month') from studenti where bursa is null order by data_nastere;

NUME       PRENUME    TO_CHAR(DATA_NASTERE,'MONTH')                             
---------- ---------- ------------------------------------                      
Popescu    Bogdan     february                                                  
Panaite    Alexandru  april                                                     
Prelipcean Radu       may                                                       
Arhire     Raluca     december                                                  
Bodnar     Ioana      june                                                      
Bodnar     Ioana      august                                                    
Bucur      Andreea    may                                                       
Arhire     Alexandra  july                                                      

8 rows selected.

SQL> select nume, prenume, to_char(data_nastere, 'month') as "Birth month" from studenti where bursa is null order by "Birth month"
  2  select nume, prenume, to_char(data_nastere, 'month') as "Birth month" from studenti where bursa is null order by "Birth month";
select nume, prenume, to_char(data_nastere, 'month') as "Birth month" from studenti where bursa is null order by "Birth month"
*
ERROR at line 2:
ORA-00933: SQL command not properly ended 


SQL> select nume, prenume, to_char(data_nastere, 'month') as "Birth month" from studenti where bursa is null order by "Birth month";

NUME       PRENUME    Birth month                                               
---------- ---------- ------------------------------------                      
Panaite    Alexandru  april                                                     
Bodnar     Ioana      august                                                    
Arhire     Raluca     december                                                  
Popescu    Bogdan     february                                                  
Arhire     Alexandra  july                                                      
Bodnar     Ioana      june                                                      
Prelipcean Radu       may                                                       
Bucur      Andreea    may                                                       

8 rows selected.

SQL> select nume, prenume, to_char(data_nastere, 'month') as "Birth month" from studenti where bursa is null order by to_number(to_char(data_nastere, 'MM'));

NUME       PRENUME    Birth month                                               
---------- ---------- ------------------------------------                      
Popescu    Bogdan     february                                                  
Panaite    Alexandru  april                                                     
Bucur      Andreea    may                                                       
Prelipcean Radu       may                                                       
Bodnar     Ioana      june                                                      
Arhire     Alexandra  july                                                      
Bodnar     Ioana      august                                                    
Arhire     Raluca     december                                                  

8 rows selected.

SQL> spool off
