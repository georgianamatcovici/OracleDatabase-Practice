SQL> select s.nume, s.prenume, avg(n.valoare) from studenti s join note n on s.nr_matricol=n.nr_matricol group by s.nr matricol, s.nume, s.prenume order by avg(n.valoare) desc;
select s.nume, s.prenume, avg(n.valoare) from studenti s join note n on s.nr_matricol=n.nr_matricol group by s.nr matricol, s.nume, s.prenume order by avg(n.valoare) desc
                                                                                                                  *
ERROR at line 1:
ORA-00933: SQL command not properly ended 


SQL> select s.nume, s.prenume, avg(n.valoare) from studenti s join note n on s.nr_matricol=n.nr_matricol group by s.nr matricol, s.nume, s.prenume;
select s.nume, s.prenume, avg(n.valoare) from studenti s join note n on s.nr_matricol=n.nr_matricol group by s.nr matricol, s.nume, s.prenume
                                                                                                                  *
ERROR at line 1:
ORA-00933: SQL command not properly ended 


SQL> select s.nume, s.prenume, avg(n.valoare) from studenti s join note n on s.nr_matricol=n.nr_matricol group by s.nr_matricol, s.nume, s.prenume;

NUME       PRENUME    AVG(N.VALOARE)                                            
---------- ---------- --------------                                            
Bodnar     Ioana                   8                                            
Antonie    Ioana          7.66666667                                            
Arhire     Raluca         6.33333333                                            
Archip     Andrada        5.66666667                                            
Popescu    Bogdan                8.5                                            
Panaite    Alexandru               9                                            
Bodnar     Ioana          9.66666667                                            
Prelipcean Radu           5.83333333                                            
Ciobotariu Ciprian                 7                                            

9 rows selected.

SQL> select s.nume, s.prenume, avg(n.valoare) from studenti s join note n on s.nr_matricol=n.nr_matricol group by s.nr_matricol, s.nume, s.prenume order by avg(n.valoare) desc;

NUME       PRENUME    AVG(N.VALOARE)                                            
---------- ---------- --------------                                            
Bodnar     Ioana          9.66666667                                            
Panaite    Alexandru               9                                            
Popescu    Bogdan                8.5                                            
Bodnar     Ioana                   8                                            
Antonie    Ioana          7.66666667                                            
Ciobotariu Ciprian                 7                                            
Arhire     Raluca         6.33333333                                            
Prelipcean Radu           5.83333333                                            
Archip     Andrada        5.66666667                                            

9 rows selected.

SQL> spool off
