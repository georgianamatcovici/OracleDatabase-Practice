SQL> select * from studenti where bursa=NULL;

no rows selected

SQL> select * from studenti where bursa is null;

NR_MAT NUME       PRENUME            AN GR      BURSA DATA_NAST                 
------ ---------- ---------- ---------- -- ---------- ---------                 
111    Popescu    Bogdan              3 A2            17-FEB-95                 
112    Prelipcean Radu                3 A2            26-MAY-95                 
114    Arhire     Raluca              3 A4            26-DEC-95                 
115    Panaite    Alexandru           3 B3            13-APR-95                 
116    Bodnar     Ioana               2 A1            26-AUG-96                 
119    Bodnar     Ioana               2 B2            10-JUN-96                 
121    Arhire     Alexandra           1 B1            02-JUL-97                 
123    Bucur      Andreea             1 B2            10-MAY-97                 

8 rows selected.

SQL> spool off
