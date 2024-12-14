SQL> select nume, prenume, data_nastere where data_nastere>= 1/JAN/1995;
select nume, prenume, data_nastere where data_nastere>= 1/JAN/1995
                                   *
ERROR at line 1:
ORA-00923: FROM keyword not found where expected 


SQL> select nume, prenume, data_nastere from STUDENTI where data_nastere>= 1/JAN/1995;
select nume, prenume, data_nastere from STUDENTI where data_nastere>= 1/JAN/1995
                                                                        *
ERROR at line 1:
ORA-00904: "JAN": invalid identifier 


SQL> select nume, prenume, data_nastere from STUDENTI where data_nastere>= '01-JAN-1995';

NUME       PRENUME    DATA_NAST                                                 
---------- ---------- ---------                                                 
Popescu    Bogdan     17-FEB-95                                                 
Prelipcean Radu       26-MAY-95                                                 
Antonie    Ioana      03-JAN-95                                                 
Arhire     Raluca     26-DEC-95                                                 
Panaite    Alexandru  13-APR-95                                                 
Bodnar     Ioana      26-AUG-96                                                 
Archip     Andrada    03-APR-96                                                 
Ciobotariu Ciprian    03-APR-96                                                 
Bodnar     Ioana      10-JUN-96                                                 
Pintescu   Andrei     26-AUG-97                                                 
Arhire     Alexandra  02-JUL-97                                                 

NUME       PRENUME    DATA_NAST                                                 
---------- ---------- ---------                                                 
Cobzaru    George     29-APR-97                                                 
Bucur      Andreea    10-MAY-97                                                 

13 rows selected.

SQL> select nume, prenume, data_nastere from STUDENTI where data_nastere>= '01-JAN-1995' AND data_nastere<='10-JUN-1997';

NUME       PRENUME    DATA_NAST                                                 
---------- ---------- ---------                                                 
Popescu    Bogdan     17-FEB-95                                                 
Prelipcean Radu       26-MAY-95                                                 
Antonie    Ioana      03-JAN-95                                                 
Arhire     Raluca     26-DEC-95                                                 
Panaite    Alexandru  13-APR-95                                                 
Bodnar     Ioana      26-AUG-96                                                 
Archip     Andrada    03-APR-96                                                 
Ciobotariu Ciprian    03-APR-96                                                 
Bodnar     Ioana      10-JUN-96                                                 
Cobzaru    George     29-APR-97                                                 
Bucur      Andreea    10-MAY-97                                                 

11 rows selected.

SQL> select nume, prenume, data_nastere from STUDENTI where data_nastere>= '01-JAN-1995' AND data_nastere<='10-JUN-1997' order by an desc
  2  select nume, prenume, data_nastere from STUDENTI where data_nastere>= '01-JAN-1995' AND data_nastere<='10-JUN-1997' order by an desc;
select nume, prenume, data_nastere from STUDENTI where data_nastere>= '01-JAN-1995' AND data_nastere<='10-JUN-1997' order by an desc
*
ERROR at line 2:
ORA-00933: SQL command not properly ended 


SQL> select nume, prenume, data_nastere from STUDENTI where data_nastere>= '01-JAN-1995' AND data_nastere<='10-JUN-1997' order by an desc;

NUME       PRENUME    DATA_NAST                                                 
---------- ---------- ---------                                                 
Popescu    Bogdan     17-FEB-95                                                 
Prelipcean Radu       26-MAY-95                                                 
Antonie    Ioana      03-JAN-95                                                 
Arhire     Raluca     26-DEC-95                                                 
Panaite    Alexandru  13-APR-95                                                 
Bodnar     Ioana      26-AUG-96                                                 
Bodnar     Ioana      10-JUN-96                                                 
Archip     Andrada    03-APR-96                                                 
Ciobotariu Ciprian    03-APR-96                                                 
Cobzaru    George     29-APR-97                                                 
Bucur      Andreea    10-MAY-97                                                 

11 rows selected.

SQL> SELECT nume, prenume, data_nastere FROM studenti WHERE data_nastere BETWEEN '01-01-1995' AND '10-06-1997' ORDER BY an DESC;
SELECT nume, prenume, data_nastere FROM studenti WHERE data_nastere BETWEEN '01-01-1995' AND '10-06-1997' ORDER BY an DESC
                                                                            *
ERROR at line 1:
ORA-01843: not a valid month 


SQL> SELECT nume, prenume, data_nastere FROM studenti WHERE data_nastere BETWEEN '01-JAN-1995' AND '10-JUN-1997' ORDER BY an DESC;

NUME       PRENUME    DATA_NAST                                                 
---------- ---------- ---------                                                 
Popescu    Bogdan     17-FEB-95                                                 
Prelipcean Radu       26-MAY-95                                                 
Antonie    Ioana      03-JAN-95                                                 
Arhire     Raluca     26-DEC-95                                                 
Panaite    Alexandru  13-APR-95                                                 
Bodnar     Ioana      26-AUG-96                                                 
Bodnar     Ioana      10-JUN-96                                                 
Archip     Andrada    03-APR-96                                                 
Ciobotariu Ciprian    03-APR-96                                                 
Cobzaru    George     29-APR-97                                                 
Bucur      Andreea    10-MAY-97                                                 

11 rows selected.

SQL> spool off
