SQL> SELECT * FROM STUDENTI WHERE PRENUME LIKE '%a%a%';
SP2-0640: Not connected
SQL> conn STUDENT
Connected.
SQL> SELECT * FROM STUDENTI WHERE PRENUME LIKE '%a%a%';

NR_MAT NUME       PRENUME            AN GR      BURSA DATA_NAST                 
------ ---------- ---------- ---------- -- ---------- ---------                 
113    Antonie    Ioana               3 A2        450 03-JAN-95                 
114    Arhire     Raluca              3 A4            26-DEC-95                 
116    Bodnar     Ioana               2 A1            26-AUG-96                 
117    Archip     Andrada             2 A1        350 03-APR-96                 
119    Bodnar     Ioana               2 B2            10-JUN-96                 
121    Arhire     Alexandra           1 B1            02-JUL-97                 

6 rows selected.

SQL> SELECT * FROM STUDENTI WHERE (PRENUME LIKE '%a%a%' OR PRENUME LIKE 'A%a%') AND (PRENUME NOT LIKE 'A%a%a%' AND PRENUME NOT LIKE '%a%a%a%');

NR_MAT NUME       PRENUME            AN GR      BURSA DATA_NAST                 
------ ---------- ---------- ---------- -- ---------- ---------                 
113    Antonie    Ioana               3 A2        450 03-JAN-95                 
114    Arhire     Raluca              3 A4            26-DEC-95                 
115    Panaite    Alexandru           3 B3            13-APR-95                 
116    Bodnar     Ioana               2 A1            26-AUG-96                 
119    Bodnar     Ioana               2 B2            10-JUN-96                 
123    Bucur      Andreea             1 B2            10-MAY-97                 

6 rows selected.

SQL> spool off
