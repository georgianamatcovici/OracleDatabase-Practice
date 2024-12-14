SQL> describe STUDENTI
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 NR_MATRICOL                               NOT NULL CHAR(6)
 NUME                                               VARCHAR2(10)
 PRENUME                                            VARCHAR2(10)
 AN                                                 NUMBER(1)
 GRUPA                                              CHAR(2)
 BURSA                                              NUMBER(6,2)
 DATA_NASTERE                                       DATE

SQL> select NUME, PRENUME, AN, DATA_NASTERE from STUDENTI;

NUME       PRENUME            AN DATA_NAST                                      
---------- ---------- ---------- ---------                                      
Popescu    Bogdan              3 17-FEB-95                                      
Prelipcean Radu                3 26-MAY-95                                      
Antonie    Ioana               3 03-JAN-95                                      
Arhire     Raluca              3 26-DEC-95                                      
Panaite    Alexandru           3 13-APR-95                                      
Bodnar     Ioana               2 26-AUG-96                                      
Archip     Andrada             2 03-APR-96                                      
Ciobotariu Ciprian             2 03-APR-96                                      
Bodnar     Ioana               2 10-JUN-96                                      
Pintescu   Andrei              1 26-AUG-97                                      
Arhire     Alexandra           1 02-JUL-97                                      

NUME       PRENUME            AN DATA_NAST                                      
---------- ---------- ---------- ---------                                      
Cobzaru    George              1 29-APR-97                                      
Bucur      Andreea             1 10-MAY-97                                      

13 rows selected.

SQL> spool off
