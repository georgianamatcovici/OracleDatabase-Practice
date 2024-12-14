SQL> select nume, prenume,
  2  (select avg(valoare) from note n
  3  where n.nr_matricol=s.nr_matricol
  4  group by n.nr_matricol)
  5  as "Media"
  6  from studenti s;

NUME       PRENUME         Media                                                
---------- ---------- ----------                                                
Popescu    Bogdan     8.71428571                                                
Prelipcean Radu       6.42857143                                                
Antonie    Ioana               8                                                
Arhire     Raluca     6.85714286                                                
Panaite    Alexandru  9.14285714                                                
Bodnar     Ioana      9.66666667                                                
Archip     Andrada    5.66666667                                                
Ciobotariu Ciprian             7                                                
Bodnar     Ioana               8                                                
Pintescu   Andrei                                                               
Arhire     Alexandra                                                            

NUME       PRENUME         Media                                                
---------- ---------- ----------                                                
Cobzaru    George                                                               
Bucur      Andreea                                                              

13 rows selected.

SQL> spool off
