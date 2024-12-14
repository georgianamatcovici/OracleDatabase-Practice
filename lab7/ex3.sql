SQL> select s.nume, s.prenume, s.grupa, n.valoare from studenti s join note n on s.nr_matricol=n.nr_matricol where n.valoare in (select min(n.valoare) from note n join studenti s on s.nr_matricol=n.nr_matricol group by s.grupa);

NUME       PRENUME    GR    VALOARE                                             
---------- ---------- -- ----------                                             
Archip     Andrada    A1          4                                             
Arhire     Raluca     A4          4                                             
Arhire     Raluca     A4          4                                             
Antonie    Ioana      A2          4                                             
Prelipcean Radu       A2          4                                             
Bodnar     Ioana      B2          7                                             
Ciobotariu Ciprian    A1          7                                             
Ciobotariu Ciprian    A1          7                                             
Ciobotariu Ciprian    A1          7                                             
Archip     Andrada    A1          7                                             
Panaite    Alexandru  B3          7                                             

NUME       PRENUME    GR    VALOARE                                             
---------- ---------- -- ----------                                             
Antonie    Ioana      A2          7                                             
Antonie    Ioana      A2          7                                             
Prelipcean Radu       A2          7                                             
Prelipcean Radu       A2          7                                             
Popescu    Bogdan     A2          7                                             

16 rows selected.

SQL> spool off;
