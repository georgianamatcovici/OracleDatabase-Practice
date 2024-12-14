SQL> select nume, prenume from studenti where nr_matricol in (select nr_matricol from note where valoare=10) order by nume, prenume;

NUME       PRENUME                                                              
---------- ----------                                                           
Antonie    Ioana                                                                
Arhire     Raluca                                                               
Bodnar     Ioana                                                                
Panaite    Alexandru                                                            
Popescu    Bogdan                                                               
Prelipcean Radu                                                                 

6 rows selected.

SQL> select distinct nume, prenume from studenti s, note n where s.nr_matricol=n.nr_matricol and valoare > (select max(valoare) from studenti s, note n where s.nr_matricol=n.nr_matricol and s.nume='Archip') order by nume, prenume;

NUME       PRENUME                                                              
---------- ----------                                                           
Antonie    Ioana                                                                
Arhire     Raluca                                                               
Bodnar     Ioana                                                                
Panaite    Alexandru                                                            
Popescu    Bogdan                                                               
Prelipcean Radu                                                                 

6 rows selected.

SQL> select max(valoare) from studenti s, note n where s.nr_matricol=n.nr_matricol and s.nume='Archip';

MAX(VALOARE)                                                                    
------------                                                                    
           7                                                                    

SQL> select nume, prenume from studenti where bursa in (450, 300);

NUME       PRENUME                                                              
---------- ----------                                                           
Antonie    Ioana                                                                

SQL> select * from studenti where bursa in (450, 300);

NR_MAT NUME       PRENUME            AN GR      BURSA DATA_NAST                 
------ ---------- ---------- ---------- -- ---------- ---------                 
113    Antonie    Ioana               3 A2        450 03-JAN-95                 

SQL> select * from studenti;

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

SQL> select * from studenti where bursa in (450, 350);

NR_MAT NUME       PRENUME            AN GR      BURSA DATA_NAST                 
------ ---------- ---------- ---------- -- ---------- ---------                 
113    Antonie    Ioana               3 A2        450 03-JAN-95                 
117    Archip     Andrada             2 A1        350 03-APR-96                 
118    Ciobotariu Ciprian             2 A1        350 03-APR-96                 
122    Cobzaru    George              1 B1        350 29-APR-97                 

SQL> select * from studenti where prenume in ('Ioana', 'Bogdan');

NR_MAT NUME       PRENUME            AN GR      BURSA DATA_NAST                 
------ ---------- ---------- ---------- -- ---------- ---------                 
111    Popescu    Bogdan              3 A2            17-FEB-95                 
113    Antonie    Ioana               3 A2        450 03-JAN-95                 
116    Bodnar     Ioana               2 A1            26-AUG-96                 
119    Bodnar     Ioana               2 B2            10-JUN-96                 

SQL> select * from studenti where bursa in (450, 350);

NR_MAT NUME       PRENUME            AN GR      BURSA DATA_NAST                 
------ ---------- ---------- ---------- -- ---------- ---------                 
113    Antonie    Ioana               3 A2        450 03-JAN-95                 
117    Archip     Andrada             2 A1        350 03-APR-96                 
118    Ciobotariu Ciprian             2 A1        350 03-APR-96                 
122    Cobzaru    George              1 B1        350 29-APR-97                 

SQL> select * from studenti where bursa any(450, 350);
select * from studenti where bursa any(450, 350)
                                   *
ERROR at line 1:
ORA-00920: invalid relational operator 


SQL> select * from studenti where bursa=any(450, 350);

NR_MAT NUME       PRENUME            AN GR      BURSA DATA_NAST                 
------ ---------- ---------- ---------- -- ---------- ---------                 
113    Antonie    Ioana               3 A2        450 03-JAN-95                 
117    Archip     Andrada             2 A1        350 03-APR-96                 
118    Ciobotariu Ciprian             2 A1        350 03-APR-96                 
122    Cobzaru    George              1 B1        350 29-APR-97                 

SQL> select * from studenti where bursa=some(450, 350);

NR_MAT NUME       PRENUME            AN GR      BURSA DATA_NAST                 
------ ---------- ---------- ---------- -- ---------- ---------                 
113    Antonie    Ioana               3 A2        450 03-JAN-95                 
117    Archip     Andrada             2 A1        350 03-APR-96                 
118    Ciobotariu Ciprian             2 A1        350 03-APR-96                 
122    Cobzaru    George              1 B1        350 29-APR-97                 

SQL> select * from studenti where an>some(2, 3);

NR_MAT NUME       PRENUME            AN GR      BURSA DATA_NAST                 
------ ---------- ---------- ---------- -- ---------- ---------                 
111    Popescu    Bogdan              3 A2            17-FEB-95                 
112    Prelipcean Radu                3 A2            26-MAY-95                 
113    Antonie    Ioana               3 A2        450 03-JAN-95                 
114    Arhire     Raluca              3 A4            26-DEC-95                 
115    Panaite    Alexandru           3 B3            13-APR-95                 

SQL> select * from studenti where an>all(2, 3);

no rows selected

SQL> select * from studenti where an>all(2, 1);

NR_MAT NUME       PRENUME            AN GR      BURSA DATA_NAST                 
------ ---------- ---------- ---------- -- ---------- ---------                 
111    Popescu    Bogdan              3 A2            17-FEB-95                 
112    Prelipcean Radu                3 A2            26-MAY-95                 
113    Antonie    Ioana               3 A2        450 03-JAN-95                 
114    Arhire     Raluca              3 A4            26-DEC-95                 
115    Panaite    Alexandru           3 B3            13-APR-95                 

SQL> select * from studenti where an between 1 and 3;

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

SQL> select * from studenti where bursa is not null and bursa=some(450);

NR_MAT NUME       PRENUME            AN GR      BURSA DATA_NAST                 
------ ---------- ---------- ---------- -- ---------- ---------                 
113    Antonie    Ioana               3 A2        450 03-JAN-95                 

SQL> select * from studenti where nume like '%escu';

NR_MAT NUME       PRENUME            AN GR      BURSA DATA_NAST                 
------ ---------- ---------- ---------- -- ---------- ---------                 
111    Popescu    Bogdan              3 A2            17-FEB-95                 
120    Pintescu   Andrei              1 B1        250 26-AUG-97                 

SQL> select * from studenti where nume like '%es%';

NR_MAT NUME       PRENUME            AN GR      BURSA DATA_NAST                 
------ ---------- ---------- ---------- -- ---------- ---------                 
111    Popescu    Bogdan              3 A2            17-FEB-95                 
120    Pintescu   Andrei              1 B1        250 26-AUG-97                 

SQL> select * from studenti where nume like '%e%';

NR_MAT NUME       PRENUME            AN GR      BURSA DATA_NAST                 
------ ---------- ---------- ---------- -- ---------- ---------                 
111    Popescu    Bogdan              3 A2            17-FEB-95                 
112    Prelipcean Radu                3 A2            26-MAY-95                 
113    Antonie    Ioana               3 A2        450 03-JAN-95                 
114    Arhire     Raluca              3 A4            26-DEC-95                 
115    Panaite    Alexandru           3 B3            13-APR-95                 
120    Pintescu   Andrei              1 B1        250 26-AUG-97                 
121    Arhire     Alexandra           1 B1            02-JUL-97                 

7 rows selected.

SQL> select distinct nume, prenume from studenti s note n where s.nr_matricol = n.nr_matricol and valoare > (select max(valoare) from studenti s, note n where s.nr_matricol=n.nr_matricol and nume='Archip') and grupa =(select grupa from studenti where nume='Archip') order by nume, prenume;
select distinct nume, prenume from studenti s note n where s.nr_matricol = n.nr_matricol and valoare > (select max(valoare) from studenti s, note n where s.nr_matricol=n.nr_matricol and nume='Archip') and grupa =(select grupa from studenti where nume='Archip') order by nume, prenume
                                              *
ERROR at line 1:
ORA-00933: SQL command not properly ended 


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

SQL> select distinct nume, prenume from studenti s, note n where s.nr_matricol = n.nr_matricol and valoare > (select max(valoare) from studenti s, note n where s.nr_matricol=n.nr_matricol and nume='Archip') and grupa =(select grupa from studenti where nume='Archip') order by nume, prenume;

NUME       PRENUME                                                              
---------- ----------                                                           
Bodnar     Ioana                                                                

SQL> select distinct an, grupa, nume, prenume, valoare from studenti s, note n where s.nr_matricol=n.nr_matricol where s.nr_matricol=n.nr_matricol and (grupa, an, valoare) in (select grupa, an, max(valoare) from studenti s, note n where s.nr_matricol=n.nr_matricol group by grupa, an) order by an, grupa;
select distinct an, grupa, nume, prenume, valoare from studenti s, note n where s.nr_matricol=n.nr_matricol where s.nr_matricol=n.nr_matricol and (grupa, an, valoare) in (select grupa, an, max(valoare) from studenti s, note n where s.nr_matricol=n.nr_matricol group by grupa, an) order by an, grupa
                                                                                                            *
ERROR at line 1:
ORA-00933: SQL command not properly ended 


SQL> select distinct an, grupa, nume, prenume, valoare from studenti s, note n where s.nr_matricol=n.nr_matricol and (grupa, an, valoare) in (select grupa, an, max(valoare) from studenti s, note n where s.nr_matricol=n.nr_matricol group by grupa, an) order by an, grupa;

        AN GR NUME       PRENUME       VALOARE                                  
---------- -- ---------- ---------- ----------                                  
         2 A1 Bodnar     Ioana              10                                  
         2 B2 Bodnar     Ioana               9                                  
         3 A2 Antonie    Ioana              10                                  
         3 A2 Popescu    Bogdan             10                                  
         3 A2 Prelipcean Radu               10                                  
         3 A4 Arhire     Raluca             10                                  
         3 B3 Panaite    Alexandru          10                                  

7 rows selected.

SQL> SELECT grupa, an, MAX(valoare)
  2                FROM studenti s, note n
  3                WHERE s.nr_matricol=n.nr_matricol
  4                GROUP BY grupa, an;

GR         AN MAX(VALOARE)                                                      
-- ---------- ------------                                                      
A1          2           10                                                      
B2          2            9                                                      
B3          3           10                                                      
A2          3           10                                                      
A4          3           10                                                      

SQL> SELECT grupa, an, MAX(valoare)
  2                FROM studenti s, note n
  3                WHERE s.nr_matricol=n.nr_matricol
  4  select distinct an, grupa, nume, prenume, valoare from studenti s, note n where s.nr_matricol=n.nr_matricol where s.nr_matricol=n.nr_matricol and (grupa, an, valoare) in (select grupa, an, max(valoare) from studenti s, note n where s.nr_matricol=n.nr_matricol group by grupa, an) order by an, grupa;
select distinct an, grupa, nume, prenume, valoare from studenti s, note n where s.nr_matricol=n.nr_matricol where s.nr_matricol=n.nr_matricol and (grupa, an, valoare) in (select grupa, an, max(valoare) from studenti s, note n where s.nr_matricol=n.nr_matricol group by grupa, an) order by an, grupa
*
ERROR at line 4:
ORA-00933: SQL command not properly ended 


SQL> select an, grupa, max(valoare) from studenti s, note n where s.nr_matricol=n.nr_matricol group by an, grupa;

        AN GR MAX(VALOARE)                                                      
---------- -- ------------                                                      
         3 A2           10                                                      
         3 A4           10                                                      
         3 B3           10                                                      
         2 B2            9                                                      
         2 A1           10                                                      

SQL> select * from studenti s, note n where s.nr_matricol=n.nr_matricol and an=1;

no rows selected

SQL> SELECT * FROM studenti WHERE ROWNUM>1;

no rows selected

SQL> SELECT * FROM studenti WHERE ROWNUM>1;

no rows selected

SQL> SELECT * FROM studenti WHERE ROWNUM<4 ORDER BY nume, prenume;

NR_MAT NUME       PRENUME            AN GR      BURSA DATA_NAST                 
------ ---------- ---------- ---------- -- ---------- ---------                 
113    Antonie    Ioana               3 A2        450 03-JAN-95                 
111    Popescu    Bogdan              3 A2            17-FEB-95                 
112    Prelipcean Radu                3 A2            26-MAY-95                 

SQL> select * from studenti;

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

SQL> spool off
