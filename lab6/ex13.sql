SQL> select s.nume, s.prenume, max(n.valoare) as "Nota maxima", min(valoare) as "Nota minima", avg(n.valoare) as "Medie" from studenti s join note n on s.nr_matricol=n.nr_matricol group by s.nr_matricol, s.nume, s.prenume, having min(valoare)>=7;
select s.nume, s.prenume, max(n.valoare) as "Nota maxima", min(valoare) as "Nota minima", avg(n.valoare) as "Medie" from studenti s join note n on s.nr_matricol=n.nr_matricol group by s.nr_matricol, s.nume, s.prenume, having min(valoare)>=7
                                                                                                                                                                                                                          *
ERROR at line 1:
ORA-00936: missing expression 


SQL> select s.nume, s.prenume, max(n.valoare) as "Nota maxima", min(valoare) as "Nota minima", avg(n.valoare) as "Medie" from studenti s join note n on s.nr_matricol=n.nr_matricol group by s.nr_matricol, s.nume, s.prenume having min(valoare)>=7;

NUME       PRENUME    Nota maxima Nota minima      Medie                        
---------- ---------- ----------- ----------- ----------                        
Bodnar     Ioana                9           7          8                        
Popescu    Bogdan              10           7        8.5                        
Panaite    Alexandru           10           7          9                        
Bodnar     Ioana               10           9 9.66666667                        
Ciobotariu Ciprian              7           7          7                        

SQL> select s.nume, s.prenume, max(n.valoare) as "Nota maxima", min(valoare) as "Nota minima", avg(n.valoare) as "Medie" from studenti s join note n on s.nr_matricol=n.nr_matricol group by s.nr_matricol, s.nume, s.prenume having min(valoare)>=7, order by Medie;
select s.nume, s.prenume, max(n.valoare) as "Nota maxima", min(valoare) as "Nota minima", avg(n.valoare) as "Medie" from studenti s join note n on s.nr_matricol=n.nr_matricol group by s.nr_matricol, s.nume, s.prenume having min(valoare)>=7, order by Medie
                                                                                                                                                                                                                                               *
ERROR at line 1:
ORA-00933: SQL command not properly ended 


SQL> select s.nume, s.prenume, max(n.valoare) as "Nota maxima", min(valoare) as "Nota minima", avg(n.valoare) as "Medie" from studenti s join note n on s.nr_matricol=n.nr_matricol group by s.nr_matricol, s.nume, s.prenume having min(valoare)>=7, order by "Medie";
select s.nume, s.prenume, max(n.valoare) as "Nota maxima", min(valoare) as "Nota minima", avg(n.valoare) as "Medie" from studenti s join note n on s.nr_matricol=n.nr_matricol group by s.nr_matricol, s.nume, s.prenume having min(valoare)>=7, order by "Medie"
                                                                                                                                                                                                                                               *
ERROR at line 1:
ORA-00933: SQL command not properly ended 


SQL> select s.nume, s.prenume, max(n.valoare) as "Nota maxima", min(valoare) as "Nota minima", avg(n.valoare) as "Medie" from studenti s join note n on s.nr_matricol=n.nr_matricol group by s.nr_matricol, s.nume, s.prenume having min(valoare)>=7, order by avg(n.valoare);
select s.nume, s.prenume, max(n.valoare) as "Nota maxima", min(valoare) as "Nota minima", avg(n.valoare) as "Medie" from studenti s join note n on s.nr_matricol=n.nr_matricol group by s.nr_matricol, s.nume, s.prenume having min(valoare)>=7, order by avg(n.valoare)
                                                                                                                                                                                                                                               *
ERROR at line 1:
ORA-00933: SQL command not properly ended 


SQL> select s.nume, s.prenume, max(n.valoare) as "Nota maxima", min(valoare) as "Nota minima", avg(n.valoare) as "Medie" from studenti s join note n on s.nr_matricol=n.nr_matricol group by s.nr_matricol, s.nume, s.prenume having min(valoare)>=7, order by avg(n.valoare) asc;
select s.nume, s.prenume, max(n.valoare) as "Nota maxima", min(valoare) as "Nota minima", avg(n.valoare) as "Medie" from studenti s join note n on s.nr_matricol=n.nr_matricol group by s.nr_matricol, s.nume, s.prenume having min(valoare)>=7, order by avg(n.valoare) asc
                                                                                                                                                                                                                                               *
ERROR at line 1:
ORA-00933: SQL command not properly ended 


SQL> select s.nume, s.prenume, max(n.valoare) as "Nota maxima", min(valoare) as "Nota minima", avg(n.valoare) as "Medie" from studenti s join note n on s.nr_matricol=n.nr_matricol group by s.nr_matricol, s.nume, s.prenume having min(valoare)>=7, order by s.nume;
select s.nume, s.prenume, max(n.valoare) as "Nota maxima", min(valoare) as "Nota minima", avg(n.valoare) as "Medie" from studenti s join note n on s.nr_matricol=n.nr_matricol group by s.nr_matricol, s.nume, s.prenume having min(valoare)>=7, order by s.nume
                                                                                                                                                                                                                                               *
ERROR at line 1:
ORA-00933: SQL command not properly ended 


SQL> select s.nume, s.prenume, max(n.valoare) as "Nota maxima", min(valoare) as "Nota minima", avg(n.valoare) as "Medie" from studenti s join note n on s.nr_matricol=n.nr_matricol group by s.nr_matricol, s.nume, s.prenume having min(valoare)>=7, order by s.nume;
select s.nume, s.prenume, max(n.valoare) as "Nota maxima", min(valoare) as "Nota minima", avg(n.valoare) as "Medie" from studenti s join note n on s.nr_matricol=n.nr_matricol group by s.nr_matricol, s.nume, s.prenume having min(valoare)>=7, order by s.nume
                                                                                                                                                                                                                                               *
ERROR at line 1:
ORA-00933: SQL command not properly ended 


SQL> select s.nume, s.prenume, max(n.valoare) as "Nota maxima", min(valoare) as "Nota minima", avg(n.valoare) as "Medie" from studenti s join note n on s.nr_matricol=n.nr_matricol group by s.nr_matricol, s.nume, s.prenume having min(valoare)>=7 order by "Medie";

NUME       PRENUME    Nota maxima Nota minima      Medie                        
---------- ---------- ----------- ----------- ----------                        
Ciobotariu Ciprian              7           7          7                        
Bodnar     Ioana                9           7          8                        
Popescu    Bogdan              10           7        8.5                        
Panaite    Alexandru           10           7          9                        
Bodnar     Ioana               10           9 9.66666667                        

SQL> select s.nume, s.prenume, max(n.valoare) as "Nota maxima", min(valoare) as "Nota minima", avg(n.valoare) as "Medie" from studenti s join note n on s.nr_matricol=n.nr_matricol group by s.nr_matricol, s.nume, s.prenume having min(valoare)>=7 order by "Medie" desc;

NUME       PRENUME    Nota maxima Nota minima      Medie                        
---------- ---------- ----------- ----------- ----------                        
Bodnar     Ioana               10           9 9.66666667                        
Panaite    Alexandru           10           7          9                        
Popescu    Bogdan              10           7        8.5                        
Bodnar     Ioana                9           7          8                        
Ciobotariu Ciprian              7           7          7                        

SQL> spool off
