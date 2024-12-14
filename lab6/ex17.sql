SQL> select s.nume, s.prenume, avg(n.valoare) as Medie from studenti s join note n on s.nr_matricol=n.nr_matricol group by s.nume, s.prenume;

NUME       PRENUME         MEDIE                                                
---------- ---------- ----------                                                
Prelipcean Radu       5.83333333                                                
Arhire     Raluca     6.33333333                                                
Archip     Andrada    5.66666667                                                
Bodnar     Ioana      8.83333333                                                
Ciobotariu Ciprian             7                                                
Popescu    Bogdan            8.5                                                
Panaite    Alexandru           9                                                
Antonie    Ioana      7.66666667                                                

8 rows selected.

SQL> select max(avg(n.valoare)) as Medie from studenti s join note n on s.nr_matricol=n.nr_matricol group by s.nume, s.prenume;

     MEDIE                                                                      
----------                                                                      
         9                                                                      

SQL> select s.nume, s.prenume, max(avg(n.valoare)) as Medie from studenti s join note n on s.nr_matricol=n.nr_matricol group by s.nume, s.prenume;
select s.nume, s.prenume, max(avg(n.valoare)) as Medie from studenti s join note n on s.nr_matricol=n.nr_matricol group by s.nume, s.prenume
       *
ERROR at line 1:
ORA-00937: not a single-group group function 


SQL> spool off
