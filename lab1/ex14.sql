SQL> select * from studenti where (prenume like '%a%' or prenume like 'A%') and (prenume not like 'A%a%' and prenume not '%a%a%');
select * from studenti where (prenume like '%a%' or prenume like 'A%') and (prenume not like 'A%a%' and prenume not '%a%a%')
                                                                                    *
ERROR at line 1:
ORA-00920: invalid relational operator 


SQL> select * from studenti where (prenume like '%a%' or prenume like 'A%') and (prenume not like 'A%a%' and prenume not like '%a%a%');

NR_MAT NUME       PRENUME            AN GR      BURSA DATA_NAST                 
------ ---------- ---------- ---------- -- ---------- ---------                 
111    Popescu    Bogdan              3 A2            17-FEB-95                 
112    Prelipcean Radu                3 A2            26-MAY-95                 
118    Ciobotariu Ciprian             2 A1        350 03-APR-96                 
120    Pintescu   Andrei              1 B1        250 26-AUG-97                 

SQL> spool off
