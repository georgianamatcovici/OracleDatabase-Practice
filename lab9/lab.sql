SQL> SELECT nume, prenume, bursa, an
  2     FROM studenti s1
  3     WHERE bursa >=
  4           (SELECT AVG(bursa)
  5               FROM studenti s2
  6                  GROUP BY an HAVING s1.an = s2.an
  7           );

NUME       PRENUME         BURSA         AN                                     
---------- ---------- ---------- ----------                                     
Antonie    Ioana             450          3                                     
Archip     Andrada           350          2                                     
Ciobotariu Ciprian           350          2                                     
Cobzaru    George            350          1                                     

SQL>  SELECT *
  2     FROM studenti NATURAL JOIN note
  3     WHERE valoare >=
  4           (SELECT ROUND(AVG(valoare))
  5              FROM note
  6           );

NR_MAT NUME       PRENUME            AN GR      BURSA DATA_NAST ID_C    VALOARE 
------ ---------- ---------- ---------- -- ---------- --------- ---- ---------- 
DATA_NOTA                                                                       
---------                                                                       
111    Popescu    Bogdan              3 A2            17-FEB-95 21            8 
17-FEB-14                                                                       
                                                                                
111    Popescu    Bogdan              3 A2            17-FEB-95 22            9 
19-FEB-14                                                                       
                                                                                
111    Popescu    Bogdan              3 A2            17-FEB-95 23           10 
24-JUN-14                                                                       
                                                                                

NR_MAT NUME       PRENUME            AN GR      BURSA DATA_NAST ID_C    VALOARE 
------ ---------- ---------- ---------- -- ---------- --------- ---- ---------- 
DATA_NOTA                                                                       
---------                                                                       
111    Popescu    Bogdan              3 A2            17-FEB-95 24            9 
17-FEB-15                                                                       
                                                                                
111    Popescu    Bogdan              3 A2            17-FEB-95 26            8 
21-JUN-15                                                                       
                                                                                
113    Antonie    Ioana               3 A2        450 03-JAN-95 21            9 
17-FEB-14                                                                       
                                                                                

NR_MAT NUME       PRENUME            AN GR      BURSA DATA_NAST ID_C    VALOARE 
------ ---------- ---------- ---------- -- ---------- --------- ---- ---------- 
DATA_NOTA                                                                       
---------                                                                       
113    Antonie    Ioana               3 A2        450 03-JAN-95 22            9 
19-FEB-14                                                                       
                                                                                
113    Antonie    Ioana               3 A2        450 03-JAN-95 24           10 
17-FEB-15                                                                       
                                                                                
114    Arhire     Raluca              3 A4            26-DEC-95 22            9 
19-FEB-14                                                                       
                                                                                

NR_MAT NUME       PRENUME            AN GR      BURSA DATA_NAST ID_C    VALOARE 
------ ---------- ---------- ---------- -- ---------- --------- ---- ---------- 
DATA_NOTA                                                                       
---------                                                                       
114    Arhire     Raluca              3 A4            26-DEC-95 23           10 
24-JUN-14                                                                       
                                                                                
115    Panaite    Alexandru           3 B3            13-APR-95 21           10 
17-FEB-14                                                                       
                                                                                
115    Panaite    Alexandru           3 B3            13-APR-95 23           10 
24-JUN-14                                                                       
                                                                                

NR_MAT NUME       PRENUME            AN GR      BURSA DATA_NAST ID_C    VALOARE 
------ ---------- ---------- ---------- -- ---------- --------- ---- ---------- 
DATA_NOTA                                                                       
---------                                                                       
115    Panaite    Alexandru           3 B3            13-APR-95 24           10 
17-FEB-15                                                                       
                                                                                
115    Panaite    Alexandru           3 B3            13-APR-95 25            8 
20-JUN-15                                                                       
                                                                                
115    Panaite    Alexandru           3 B3            13-APR-95 26            9 
21-JUN-15                                                                       
                                                                                

NR_MAT NUME       PRENUME            AN GR      BURSA DATA_NAST ID_C    VALOARE 
------ ---------- ---------- ---------- -- ---------- --------- ---- ---------- 
DATA_NOTA                                                                       
---------                                                                       
116    Bodnar     Ioana               2 A1            26-AUG-96 21           10 
18-FEB-15                                                                       
                                                                                
116    Bodnar     Ioana               2 A1            26-AUG-96 22           10 
20-FEB-15                                                                       
                                                                                
116    Bodnar     Ioana               2 A1            26-AUG-96 23            9 
21-JUN-15                                                                       
                                                                                

NR_MAT NUME       PRENUME            AN GR      BURSA DATA_NAST ID_C    VALOARE 
------ ---------- ---------- ---------- -- ---------- --------- ---- ---------- 
DATA_NOTA                                                                       
---------                                                                       
119    Bodnar     Ioana               2 B2            10-JUN-96 22            8 
20-FEB-15                                                                       
                                                                                
119    Bodnar     Ioana               2 B2            10-JUN-96 23            9 
21-JUN-15                                                                       
                                                                                
111    Popescu    Bogdan              3 A2            17-FEB-95 30           10 
04-DEC-24                                                                       
                                                                                

NR_MAT NUME       PRENUME            AN GR      BURSA DATA_NAST ID_C    VALOARE 
------ ---------- ---------- ---------- -- ---------- --------- ---- ---------- 
DATA_NOTA                                                                       
---------                                                                       
112    Prelipcean Radu                3 A2            26-MAY-95 30           10 
04-DEC-24                                                                       
                                                                                
113    Antonie    Ioana               3 A2        450 03-JAN-95 30           10 
04-DEC-24                                                                       
                                                                                
114    Arhire     Raluca              3 A4            26-DEC-95 30           10 
04-DEC-24                                                                       
                                                                                

NR_MAT NUME       PRENUME            AN GR      BURSA DATA_NAST ID_C    VALOARE 
------ ---------- ---------- ---------- -- ---------- --------- ---- ---------- 
DATA_NOTA                                                                       
---------                                                                       
115    Panaite    Alexandru           3 B3            13-APR-95 30           10 
04-DEC-24                                                                       
                                                                                

25 rows selected.

SQL> SELECT nume, prenume, bursa, an
  2     FROM studenti s1
  3     WHERE bursa >=
  4           (SELECT AVG(bursa)
  5               FROM studenti s2
  6                  GROUP BY an HAVING s1.an = s2.an
  7           );

NUME       PRENUME         BURSA         AN                                     
---------- ---------- ---------- ----------                                     
Antonie    Ioana             450          3                                     
Archip     Andrada           350          2                                     
Ciobotariu Ciprian           350          2                                     
Cobzaru    George            350          1                                     

SQL> select nume, prenume, bursa, an from studenti s1;

NUME       PRENUME         BURSA         AN                                     
---------- ---------- ---------- ----------                                     
Popescu    Bogdan                         3                                     
Prelipcean Radu                           3                                     
Antonie    Ioana             450          3                                     
Arhire     Raluca                         3                                     
Panaite    Alexandru                      3                                     
Bodnar     Ioana                          2                                     
Archip     Andrada           350          2                                     
Ciobotariu Ciprian           350          2                                     
Bodnar     Ioana                          2                                     
Pintescu   Andrei            250          1                                     
Arhire     Alexandra                      1                                     

NUME       PRENUME         BURSA         AN                                     
---------- ---------- ---------- ----------                                     
Cobzaru    George            350          1                                     
Bucur      Andreea                        1                                     

13 rows selected.

SQL> select * where bursa>=0;
select * where bursa>=0
         *
ERROR at line 1:
ORA-00923: FROM keyword not found where expected 


SQL> select * from studenti where bursa>=0;

NR_MAT NUME       PRENUME            AN GR      BURSA DATA_NAST                 
------ ---------- ---------- ---------- -- ---------- ---------                 
113    Antonie    Ioana               3 A2        450 03-JAN-95                 
117    Archip     Andrada             2 A1        350 03-APR-96                 
118    Ciobotariu Ciprian             2 A1        350 03-APR-96                 
120    Pintescu   Andrei              1 B1        250 26-AUG-97                 
122    Cobzaru    George              1 B1        350 29-APR-97                 

SQL> spool off
