SQL> select nume, count(valoare) from profesori p join didactic d on p.id_prof=d.id_prof left join note n on d.id_curs=n.id_curs and valoare<5 group by nume;

NUME       COUNT(VALOARE)                                                       
---------- --------------                                                       
Lucanu                  1                                                       
Ciobaca                 0                                                       
Buraga                  2                                                       
Breaban                 1                                                       
Masalagiu               0                                                       
Frasinaru               1                                                       
Tiplea                  0                                                       
Iacob                   0                                                       
Varlan                  1                                                       

9 rows selected.

SQL> SELECT nume, prenume
  2      FROM studenti
  3      WHERE nr_matricol IN
  4            (SELECT nr_matricol
  5                FROM note
  6                WHERE valoare=10)
  7      ORDER BY nume, prenume;

NUME       PRENUME                                                              
---------- ----------                                                           
Antonie    Ioana                                                                
Arhire     Raluca                                                               
Bodnar     Ioana                                                                
Panaite    Alexandru                                                            
Popescu    Bogdan                                                               

SQL> SELECT nume, prenume
  2      FROM studenti
  3      WHERE nr_matricol IN
  4            (SELECT nr_matricol
  5                FROM note
  6                WHERE valoare=10)
  7                WHERE valoare=10)
  8  ;
              WHERE valoare=10)
              *
ERROR at line 7:
ORA-00933: SQL command not properly ended 


SQL> select nr_matricol, valoare from note where nr_matricol in (111 112113 114);
select nr_matricol, valoare from note where nr_matricol in (111 112113 114)
                                                                *
ERROR at line 1:
ORA-00907: missing right parenthesis 


SQL> select nr_matricol, valoare from note where nr_matricol in (111 112 113 114);
select nr_matricol, valoare from note where nr_matricol in (111 112 113 114)
                                                                *
ERROR at line 1:
ORA-00907: missing right parenthesis 


SQL> SELECT DISTINCT nume, prenume
  2      FROM studenti s, note n
  3      WHERE s.nr_matricol=n.nr_matricol and valoare>
  4            (SELECT MAX(valoare)
  5                FROM studenti s, note n
  6                WHERE s.nr_matricol=n.nr_matricol AND nume='Archip')
  7        AND grupa=
  8            (SELECT grupa FROM studenti WHERE nume='Archip')
  9      ORDER BY nume, prenume;

NUME       PRENUME                                                              
---------- ----------                                                           
Bodnar     Ioana                                                                

SQL> SELECT DISTINCT an, grupa, nume, prenume, valoare
  2      FROM studenti s, note n
  3      WHERE s.nr_matricol=n.nr_matricol and (grupa,an,valoare) IN
  4            (SELECT grupa, an, MAX(valoare)
  5                FROM studenti s, note n
  6                WHERE s.nr_matricol=n.nr_matricol
  7                GROUP BY grupa, an)
  8      ORDER BY an, grupa;

        AN GR NUME       PRENUME       VALOARE                                  
---------- -- ---------- ---------- ----------                                  
         2 A1 Bodnar     Ioana              10                                  
         2 B2 Bodnar     Ioana               9                                  
         3 A2 Antonie    Ioana              10                                  
         3 A2 Popescu    Bogdan             10                                  
         3 A4 Arhire     Raluca             10                                  
         3 B3 Panaite    Alexandru          10                                  

6 rows selected.

SQL> SELECT * FROM studenti WHERE ROWNUM>1;

no rows selected

SQL> SELECT * FROM studenti WHERE ROWNUM>=1;

NR_MAT NUME       PRENUME            AN GR      BURSA DATA_NAST                 
------ ---------- ---------- ---------- -- ---------- ---------                 
111    Popescu    Bogdan              3 A2            17-FEB-95                 
112    Prelipcean Radu                3 A2            26-MAY-95                 
113    Antonie    Ioana               3 A2        450 03-JAN-95                 
114    Arhire     Raluca              3 A4            26-DEC-95                 
115    Panaite    Alexandru           3 B3            13-APR-95                 
116    Bodnar     Ioana               2 A1            26-AUG-96                 
117    Archip     Andrada             2 A1        350 03-APR-96                 
118    Ciobotariu Ciprian             2 A1        350 03-APR-96                 
119    Bodnar     Ioana               2 B2            10-JUN-96                 
120    Pintescu   Andrei              1 B1        250 26-AUG-97                 
121    Arhire     Alexandra           1 B1            02-JUL-97                 

NR_MAT NUME       PRENUME            AN GR      BURSA DATA_NAST                 
------ ---------- ---------- ---------- -- ---------- ---------                 
122    Cobzaru    George              1 B1        350 29-APR-97                 
123    Bucur      Andreea             1 B2            10-MAY-97                 

13 rows selected.

SQL> SELECT s.*, rownum FROM studenti s WHERE ROWNUM>=1;

NR_MAT NUME       PRENUME            AN GR      BURSA DATA_NAST     ROWNUM      
------ ---------- ---------- ---------- -- ---------- --------- ----------      
111    Popescu    Bogdan              3 A2            17-FEB-95          1      
112    Prelipcean Radu                3 A2            26-MAY-95          2      
113    Antonie    Ioana               3 A2        450 03-JAN-95          3      
114    Arhire     Raluca              3 A4            26-DEC-95          4      
115    Panaite    Alexandru           3 B3            13-APR-95          5      
116    Bodnar     Ioana               2 A1            26-AUG-96          6      
117    Archip     Andrada             2 A1        350 03-APR-96          7      
118    Ciobotariu Ciprian             2 A1        350 03-APR-96          8      
119    Bodnar     Ioana               2 B2            10-JUN-96          9      
120    Pintescu   Andrei              1 B1        250 26-AUG-97         10      
121    Arhire     Alexandra           1 B1            02-JUL-97         11      

NR_MAT NUME       PRENUME            AN GR      BURSA DATA_NAST     ROWNUM      
------ ---------- ---------- ---------- -- ---------- --------- ----------      
122    Cobzaru    George              1 B1        350 29-APR-97         12      
123    Bucur      Andreea             1 B2            10-MAY-97         13      

13 rows selected.

SQL> SELECT s.*, rownum FROM studenti s WHERE ROWNUM<4;

NR_MAT NUME       PRENUME            AN GR      BURSA DATA_NAST     ROWNUM      
------ ---------- ---------- ---------- -- ---------- --------- ----------      
111    Popescu    Bogdan              3 A2            17-FEB-95          1      
112    Prelipcean Radu                3 A2            26-MAY-95          2      
113    Antonie    Ioana               3 A2        450 03-JAN-95          3      

SQL> SELECT s.*, rownum FROM studenti s WHERE ROWNUM<4;

NR_MAT NUME       PRENUME            AN GR      BURSA DATA_NAST     ROWNUM      
------ ---------- ---------- ---------- -- ---------- --------- ----------      
111    Popescu    Bogdan              3 A2            17-FEB-95          1      
112    Prelipcean Radu                3 A2            26-MAY-95          2      
113    Antonie    Ioana               3 A2        450 03-JAN-95          3      

SQL> SELECT s.*, rownum FROM studenti s WHERE ROWNUM<4 oreder by nume;
SELECT s.*, rownum FROM studenti s WHERE ROWNUM<4 oreder by nume
                                                  *
ERROR at line 1:
ORA-00933: SQL command not properly ended 


SQL> SELECT s.*, rownum FROM studenti s WHERE ROWNUM<4 order by nume;

NR_MAT NUME       PRENUME            AN GR      BURSA DATA_NAST     ROWNUM      
------ ---------- ---------- ---------- -- ---------- --------- ----------      
113    Antonie    Ioana               3 A2        450 03-JAN-95          3      
111    Popescu    Bogdan              3 A2            17-FEB-95          1      
112    Prelipcean Radu                3 A2            26-MAY-95          2      

SQL> SELECT s.*, rownum FROM (select * from studenti order by nume, prenume) s where rownum<4;

NR_MAT NUME       PRENUME            AN GR      BURSA DATA_NAST     ROWNUM      
------ ---------- ---------- ---------- -- ---------- --------- ----------      
113    Antonie    Ioana               3 A2        450 03-JAN-95          1      
117    Archip     Andrada             2 A1        350 03-APR-96          2      
121    Arhire     Alexandra           1 B1            02-JUL-97          3      

SQL> SELECT s.*, rownum FROM (select * from studenti order by nume, prenume) s where rownum between 5 and 10;

no rows selected

SQL> SELECT s.*, rownum  nr FROM (select * from studenti order by nume, prenume) s where rownum between 5 and 10;

no rows selected

SQL> ed
Wrote file afiedt.buf

  1  SELECT * from (SELECT s.*, rownum  nr FROM (select * from studenti order by nume,
  2* prenume) s where nr between 5 and 10
SQL> /
prenume) s where nr between 5 and 10
                                   *
ERROR at line 2:
ORA-00907: missing right parenthesis 


SQL> ed
Wrote file afiedt.buf

  1  SELECT * from ((SELECT s.*, rownum  nr FROM (select * from studenti order by nume,
  2* prenume) s where nr between 5 and 10)
SQL> /
prenume) s where nr between 5 and 10)
                                    *
ERROR at line 2:
ORA-00907: missing right parenthesis 


SQL> ed
Wrote file afiedt.buf

  1  SELECT * from 
  2  (SELECT s.*, rownum  nr FROM 
  3  (select * from studenti order by nume, prenume) 
  4* s where nr between 5 and 10)
SQL> /
s where nr between 5 and 10)
        *
ERROR at line 4:
ORA-00904: "NR": invalid identifier 


SQL> ed
Wrote file afiedt.buf

  1  SELECT * from 
  2  (SELECT s.*, rownum nr FROM 
  3  (select * from studenti order by nume, prenume) 
  4* s where nr between 5 and 10)
SQL> /
s where nr between 5 and 10)
        *
ERROR at line 4:
ORA-00904: "NR": invalid identifier 


SQL> ed
Wrote file afiedt.buf

  1  SELECT * from 
  2  (SELECT s.*, rownum nr FROM 
  3  (select * from studenti order by nume, prenume) 
  4* s where rownum between 5 and 10)
SQL> /

no rows selected

SQL> ed
Wrote file afiedt.buf

  1  SELECT * from 
  2  (SELECT s.*, rownum nr FROM 
  3  (select * from studenti order by nume, prenume) s)
  4*  where nr between 5 and 10
SQL> /

NR_MAT NUME       PRENUME            AN GR      BURSA DATA_NAST         NR      
------ ---------- ---------- ---------- -- ---------- --------- ----------      
119    Bodnar     Ioana               2 B2            10-JUN-96          5      
116    Bodnar     Ioana               2 A1            26-AUG-96          6      
123    Bucur      Andreea             1 B2            10-MAY-97          7      
118    Ciobotariu Ciprian             2 A1        350 03-APR-96          8      
122    Cobzaru    George              1 B1        350 29-APR-97          9      
115    Panaite    Alexandru           3 B3            13-APR-95         10      

6 rows selected.

SQL> ed
Wrote file afiedt.buf

  1  SELECT * from 
  2  (SELECT s.*, rownum nr FROM 
  3  (select * from studenti order by nume, prenume) s)
  4*  where nr=3
SQL> /

NR_MAT NUME       PRENUME            AN GR      BURSA DATA_NAST         NR      
------ ---------- ---------- ---------- -- ---------- --------- ----------      
121    Arhire     Alexandra           1 B1            02-JUL-97          3      

SQL> spool off
