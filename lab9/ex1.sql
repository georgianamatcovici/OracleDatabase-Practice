SQL> select nume, prenume from studenti s1 where data_nastere > (select data_nastere from studenti s2 group by an having s1.an=s2.an);
select nume, prenume from studenti s1 where data_nastere > (select data_nastere from studenti s2 group by an having s1.an=s2.an)
                                                                   *
ERROR at line 1:
ORA-00979: not a GROUP BY expression 


SQL> select an from studenti group by an;

        AN                                                                      
----------                                                                      
         1                                                                      
         2                                                                      
         3                                                                      

SQL> select data_nastere, an from studenti group by an, data_nastere;

DATA_NAST         AN                                                            
--------- ----------                                                            
13-APR-95          3                                                            
26-AUG-97          1                                                            
02-JUL-97          1                                                            
17-FEB-95          3                                                            
26-MAY-95          3                                                            
03-JAN-95          3                                                            
26-DEC-95          3                                                            
10-JUN-96          2                                                            
03-APR-96          2                                                            
26-AUG-96          2                                                            
10-MAY-97          1                                                            

DATA_NAST         AN                                                            
--------- ----------                                                            
29-APR-97          1                                                            

12 rows selected.

SQL> select s.nume, s.prenume from studenti s1 where exists(select * from studenti s2 where s1.an=s2.an and s1.data_nastere<s2.data_nastere);
select s.nume, s.prenume from studenti s1 where exists(select * from studenti s2 where s1.an=s2.an and s1.data_nastere<s2.data_nastere)
               *
ERROR at line 1:
ORA-00904: "S"."PRENUME": invalid identifier 


SQL> select nume, prenume from studenti s1 where exists(select * from studenti s2 where s1.an=s2.an and s1.data_nastere<s2.data_nastere);

NUME       PRENUME                                                              
---------- ----------                                                           
Antonie    Ioana                                                                
Panaite    Alexandru                                                            
Popescu    Bogdan                                                               
Prelipcean Radu                                                                 
Bodnar     Ioana                                                                
Ciobotariu Ciprian                                                              
Archip     Andrada                                                              
Bucur      Andreea                                                              
Cobzaru    George                                                               
Arhire     Alexandra                                                            

10 rows selected.

SQL> spool off
