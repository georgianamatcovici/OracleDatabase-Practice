SQL> select s.nume, s.prenume, avg(n.valoare) as Media from studenti s join note n on s.nr_matricol=n.nr_matricol group by s.nr_matricol, s.nume, s.prenume having count(*) >=3;

NUME       PRENUME         MEDIA                                                
---------- ---------- ----------                                                
Bodnar     Ioana               8                                                
Antonie    Ioana      7.66666667                                                
Arhire     Raluca     6.33333333                                                
Archip     Andrada    5.66666667                                                
Popescu    Bogdan            8.5                                                
Panaite    Alexandru           9                                                
Bodnar     Ioana      9.66666667                                                
Prelipcean Radu       5.83333333                                                
Ciobotariu Ciprian             7                                                

9 rows selected.

SQL> spool off
