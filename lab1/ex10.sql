SQL> select * from studenti where nume is "P%" and an is 1;
select * from studenti where nume is "P%" and an is 1
                                     *
ERROR at line 1:
ORA-00908: missing NULL keyword 


SQL> select * from studenti where nume like "P%" and an is 1;
select * from studenti where nume like "P%" and an is 1
                                                      *
ERROR at line 1:
ORA-00908: missing NULL keyword 


SQL> select * from studenti where nume like "P%" and an=1;
select * from studenti where nume like "P%" and an=1
                                       *
ERROR at line 1:
ORA-00904: "P%": invalid identifier 


SQL> select * from studenti where nume like 'P%' and an=1;

NR_MAT NUME       PRENUME            AN GR      BURSA DATA_NAST                 
------ ---------- ---------- ---------- -- ---------- ---------                 
120    Pintescu   Andrei              1 B1        250 26-AUG-97                 

SQL> spool off
