SQL> select * from studenti where bursa is not null and an = some(2, 3) order by nume asc, prenume desc;

NR_MAT NUME       PRENUME            AN GR      BURSA DATA_NAST                 
------ ---------- ---------- ---------- -- ---------- ---------                 
113    Antonie    Ioana               3 A2        450 03-JAN-95                 
117    Archip     Andrada             2 A1        350 03-APR-96                 
118    Ciobotariu Ciprian             2 A1        350 03-APR-96                 

SQL> spool off
