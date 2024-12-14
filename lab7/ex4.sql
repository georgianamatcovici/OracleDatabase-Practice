SQL> select s.nume, s.prenume, avg(n.valoare) from studenti s join note n on s.nr_matricol=n.nr_matricol group by s.nume, s.prenume, s.nr_matricol having avg(n.valoare)>(select avg(valoare) from note n);

NUME       PRENUME    AVG(N.VALOARE)                                            
---------- ---------- --------------                                            
Antonie    Ioana                   8                                            
Panaite    Alexandru      9.14285714                                            
Bodnar     Ioana          9.66666667                                            
Popescu    Bogdan         8.71428571                                            
Bodnar     Ioana                   8                                            

SQL> select avg(valoare) from notel
  2  select avg(valoare) from note;
select avg(valoare) from note
*
ERROR at line 2:
ORA-00933: SQL command not properly ended 


SQL> select avg(valoare) from note;

AVG(VALOARE)                                                                    
------------                                                                    
  7.76595745                                                                    

SQL> select s.nume, s.prenume, avg(n.valoare) from studenti s join note n on s.nr_matricol=n.nr_matricol group by s.nume, s.prenume, s.nr_matricol;

NUME       PRENUME    AVG(N.VALOARE)                                            
---------- ---------- --------------                                            
Antonie    Ioana                   8                                            
Ciobotariu Ciprian                 7                                            
Prelipcean Radu           6.42857143                                            
Arhire     Raluca         6.85714286                                            
Panaite    Alexandru      9.14285714                                            
Bodnar     Ioana          9.66666667                                            
Popescu    Bogdan         8.71428571                                            
Archip     Andrada        5.66666667                                            
Bodnar     Ioana                   8                                            

9 rows selected.

SQL> spool off
