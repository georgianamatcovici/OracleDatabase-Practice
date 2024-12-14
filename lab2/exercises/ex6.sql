SQL> select upper(nume) as "Nume", length(nume) as "Dimensiune" from profesori where nume like "B%";
select upper(nume) as "Nume", length(nume) as "Dimensiune" from profesori where nume like "B%"
                                                                                          *
ERROR at line 1:
ORA-00904: "B%": invalid identifier 


SQL> select upper(nume) as "Nume", length(nume) as "Dimensiune" from profesori where nume like 'B%';

Nume       Dimensiune                                                           
---------- ----------                                                           
BURAGA             10                                                           
BREABAN            10                                                           

SQL> select lower(substr(nume, 1 ,1)) || upper(substr(nume, 2)) as "Nume", length(nume) as "Dimensiune" from profesori where nume like 'B%';

Nume                                     Dimensiune                             
---------------------------------------- ----------                             
bURAGA                                           10                             
bREABAN                                          10                             

SQL> spool off
