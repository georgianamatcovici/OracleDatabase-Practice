SQL> select * from studenti where bursa not null and grupa like 'A%';
select * from studenti where bursa not null and grupa like 'A%'
                                       *
ERROR at line 1:
ORA-00920: invalid relational operator 


SQL> select * from studenti where bursa is not null and grupa like 'A%';

NR_MAT NUME       PRENUME            AN GR      BURSA DATA_NAST                 
------ ---------- ---------- ---------- -- ---------- ---------                 
113    Antonie    Ioana               3 A2        450 03-JAN-95                 
117    Archip     Andrada             2 A1        350 03-APR-96                 
118    Ciobotariu Ciprian             2 A1        350 03-APR-96                 

SQL> spool off
