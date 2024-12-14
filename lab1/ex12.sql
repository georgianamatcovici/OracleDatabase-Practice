SQL> select * from studenti where prenume = some ('Alexandru', 'Ioana',  'Marius');

NR_MAT NUME       PRENUME            AN GR      BURSA DATA_NAST                 
------ ---------- ---------- ---------- -- ---------- ---------                 
113    Antonie    Ioana               3 A2        450 03-JAN-95                 
115    Panaite    Alexandru           3 B3            13-APR-95                 
116    Bodnar     Ioana               2 A1            26-AUG-96                 
119    Bodnar     Ioana               2 B2            10-JUN-96                 

SQL> spool off
