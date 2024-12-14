SQL> ed
Wrote file afiedt.buf

  1* select nr_matricol as "Numar matricol", nume as "Nume Student", prenume as "Prenume Student", an as "An studiu", grupa as "Grupa", bursa as "Valoare bursa", data_nastere as "Data Nasterii";
SQL> /
select nr_matricol as "Numar matricol", nume as "Nume Student", prenume as "Prenume Student", an as "An studiu", grupa as "Grupa", bursa as "Valoare bursa", data_nastere as "Data Nasterii";
                                                                                                                                                                                            *
ERROR at line 1:
ORA-00911: invalid character 


SQL> ed
Wrote file afiedt.buf

  1* select nr_matricol as "Numar matricol", nume as "Nume Student", prenume as "Prenume Student", an as "An studiu", grupa as "Grupa", bursa as "Valoare bursa", data_nastere as "Data Nasterii" from STUDENTI;
SQL> /
select nr_matricol as "Numar matricol", nume as "Nume Student", prenume as "Prenume Student", an as "An studiu", grupa as "Grupa", bursa as "Valoare bursa", data_nastere as "Data Nasterii" from STUDENTI;
                                                                                                                                                                                                          *
ERROR at line 1:
ORA-00911: invalid character 


SQL> ed
Wrote file afiedt.buf

  1* select NR_MATRICOL as "Numar matricol", NUME as "Nume Student", PRENUME as "Prenume Student", AN as "An studiu", GRUPA as "Grupa", BURSA as "Valoare bursa", DATA_NASTERE as "Data Nasterii" from STUDENTI;
SQL> /
select NR_MATRICOL as "Numar matricol", NUME as "Nume Student", PRENUME as "Prenume Student", AN as "An studiu", GRUPA as "Grupa", BURSA as "Valoare bursa", DATA_NASTERE as "Data Nasterii" from STUDENTI;
                                                                                                                                                                                                          *
ERROR at line 1:
ORA-00911: invalid character 


SQL> ed
Wrote file afiedt.buf

  1* select NR_MATRICOL as "Numar matricol", NUME as "Nume Student", PRENUME as "Prenume Student", AN as "An studiu", GRUPA as "Grupa", BURSA as "Valoare bursa", DATA_NASTERE as "Data Nasterii" from STUDENTI;
  2  /
select NR_MATRICOL as "Numar matricol", NUME as "Nume Student", PRENUME as "Prenume Student", AN as "An studiu", GRUPA as "Grupa", BURSA as "Valoare bursa", DATA_NASTERE as "Data Nasterii" from STUDENTI;
                                                                                                                                                                                                          *
ERROR at line 1:
ORA-00911: invalid character 


SQL> ed
Wrote file afiedt.buf

  1  select 
  2  NR_MATRICOL as "Numar matricol", 
  3  NUME as "Nume Student", 
  4  PRENUME as "Prenume Student", 
  5  AN as "An studiu", 
  6  GRUPA as "Grupa", 
  7  BURSA as "Valoare bursa", 
  8  DATA_NASTERE as "Data Nasterii" 
  9* from STUDENTI;
SQL> /
from STUDENTI;
             *
ERROR at line 9:
ORA-00911: invalid character 


SQL> ed
Wrote file afiedt.buf

  1  select 
  2  NR_MATRICOL as "Numar matricol", 
  3  NUME as "Nume Student", 
  4  PRENUME as "Prenume Student", 
  5  AN as "An studiu", 
  6  GRUPA as "Grupa", 
  7  BURSA as "Valoare bursa", 
  8  DATA_NASTERE as "Data Nasterii" 
  9  FROM
 10*  STUDENTI;
SQL> /
 STUDENTI;
         *
ERROR at line 10:
ORA-00911: invalid character 


SQL> /
 STUDENTI;
         *
ERROR at line 10:
ORA-00911: invalid character 


SQL> ed
Wrote file afiedt.buf

  1  SELECT 
  2      NR_MATRICOL AS "Numar matricol", 
  3      NUME AS "Nume Student", 
  4      PRENUME AS "Prenume Student", 
  5      AN AS "An studiu", 
  6      GRUPA AS "Grupa", 
  7      BURSA AS "Valoare bursa", 
  8      DATA_NASTERE AS "Data Nasterii" 
  9  FROM 
 10*     STUDENTI;
SQL> /
    STUDENTI;
            *
ERROR at line 10:
ORA-00911: invalid character 


SQL> ed
Wrote file afiedt.buf

  1  SELECT 
  2      NR_MATRICOL AS "Numar matricol", 
  3      NUME AS "Nume Student", 
  4      PRENUME AS "Prenume Student", 
  5      AN AS "An studiu", 
  6      GRUPA AS "Grupa", 
  7      BURSA AS "Valoare bursa", 
  8      DATA_NASTERE AS "Data Nasterii" 
  9  FROM 
 10*     STUDENTI;
SQL> /
    STUDENTI;
            *
ERROR at line 10:
ORA-00911: invalid character 


SQL> ed
Wrote file afiedt.buf

  1* SELECT NR_MATRICOL FROM STUDENTI;
SQL> /
SELECT NR_MATRICOL FROM STUDENTI;
                                *
ERROR at line 1:
ORA-00911: invalid character 


SQL> ed
Wrote file afiedt.buf

  1* SELECT NR_MATRICOL FROM STUDENTI
SQL> /

NR_MAT                                                                          
------                                                                          
111                                                                             
112                                                                             
113                                                                             
114                                                                             
115                                                                             
116                                                                             
117                                                                             
118                                                                             
119                                                                             
120                                                                             
121                                                                             

NR_MAT                                                                          
------                                                                          
122                                                                             
123                                                                             

13 rows selected.

SQL> ed
Wrote file afiedt.buf

  1  SELECT 
  2      NR_MATRICOL AS "Numar matricol", 
  3      NUME AS "Nume Student", 
  4      PRENUME AS "Prenume Student", 
  5      AN AS "An studiu", 
  6      GRUPA AS "Grupa", 
  7      BURSA AS "Valoare bursa", 
  8      DATA_NASTERE AS "Data Nasterii" 
  9  FROM 
 10*     STUDENTI
SQL> /

Numar  Nume Stude Prenume St  An studiu Gr Valoare bursa Data Nast              
------ ---------- ---------- ---------- -- ------------- ---------              
111    Popescu    Bogdan              3 A2               17-FEB-95              
112    Prelipcean Radu                3 A2               26-MAY-95              
113    Antonie    Ioana               3 A2           450 03-JAN-95              
114    Arhire     Raluca              3 A4               26-DEC-95              
115    Panaite    Alexandru           3 B3               13-APR-95              
116    Bodnar     Ioana               2 A1               26-AUG-96              
117    Archip     Andrada             2 A1           350 03-APR-96              
118    Ciobotariu Ciprian             2 A1           350 03-APR-96              
119    Bodnar     Ioana               2 B2               10-JUN-96              
120    Pintescu   Andrei              1 B1           250 26-AUG-97              
121    Arhire     Alexandra           1 B1               02-JUL-97              

Numar  Nume Stude Prenume St  An studiu Gr Valoare bursa Data Nast              
------ ---------- ---------- ---------- -- ------------- ---------              
122    Cobzaru    George              1 B1           350 29-APR-97              
123    Bucur      Andreea             1 B2               10-MAY-97              

13 rows selected.

SQL> spool off
