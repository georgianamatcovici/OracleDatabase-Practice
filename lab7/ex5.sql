SQL> select s.nume, s.prenume, avg(n.valoare) from studenti s join note n on s.nr_matricol=n.nr_matricol group by s.nume, s.prenume, s.nr_matricol order by avg(n.valoare);

NUME       PRENUME    AVG(N.VALOARE)                                            
---------- ---------- --------------                                            
Archip     Andrada        5.66666667                                            
Prelipcean Radu           6.42857143                                            
Arhire     Raluca         6.85714286                                            
Ciobotariu Ciprian                 7                                            
Antonie    Ioana                   8                                            
Bodnar     Ioana                   8                                            
Popescu    Bogdan         8.71428571                                            
Panaite    Alexandru      9.14285714                                            
Bodnar     Ioana          9.66666667                                            

9 rows selected.

SQL> select s.nume, s.prenume, avg(n.valoare) from studenti s join note n on s.nr_matricol=n.nr_matricol group by s.nume, s.prenume, s.nr_matricol order by avg(n.valoare) desc;

NUME       PRENUME    AVG(N.VALOARE)                                            
---------- ---------- --------------                                            
Bodnar     Ioana          9.66666667                                            
Panaite    Alexandru      9.14285714                                            
Popescu    Bogdan         8.71428571                                            
Bodnar     Ioana                   8                                            
Antonie    Ioana                   8                                            
Ciobotariu Ciprian                 7                                            
Arhire     Raluca         6.85714286                                            
Prelipcean Radu           6.42857143                                            
Archip     Andrada        5.66666667                                            

9 rows selected.

SQL> select s.nume, s.prenume, avg(n.valoare) from studenti s join note n on s.nr_matricol=n.nr_matricol group by s.nume, s.prenume, s.nr_matricol order by avg(n.valoare) desc;

NUME       PRENUME    AVG(N.VALOARE)                                            
---------- ---------- --------------                                            
Bodnar     Ioana          9.66666667                                            
Panaite    Alexandru      9.14285714                                            
Popescu    Bogdan         8.71428571                                            
Bodnar     Ioana                   8                                            
Antonie    Ioana                   8                                            
Ciobotariu Ciprian                 7                                            
Arhire     Raluca         6.85714286                                            
Prelipcean Radu           6.42857143                                            
Archip     Andrada        5.66666667                                            

9 rows selected.

SQL> select s.nume, s.prenume, avg(n.valoare) from studenti s join note n on s.nr_matricol=n.nr_matricol group by s.nume, s.prenume, s.nr_matricol order by avg(n.valoare) desc having rownum<=3;
select s.nume, s.prenume, avg(n.valoare) from studenti s join note n on s.nr_matricol=n.nr_matricol group by s.nume, s.prenume, s.nr_matricol order by avg(n.valoare) desc having rownum<=3
                                                                                                                                                                           *
ERROR at line 1:
ORA-00933: SQL command not properly ended 


SQL> select s.nume, s.prenume, avg(n.valoare) from studenti s join note n on s.nr_matricol=n.nr_matricol group by s.nume, s.prenume, s.nr_matricol order by avg(n.valoare) desc;

NUME       PRENUME    AVG(N.VALOARE)                                            
---------- ---------- --------------                                            
Bodnar     Ioana          9.66666667                                            
Panaite    Alexandru      9.14285714                                            
Popescu    Bogdan         8.71428571                                            
Bodnar     Ioana                   8                                            
Antonie    Ioana                   8                                            
Ciobotariu Ciprian                 7                                            
Arhire     Raluca         6.85714286                                            
Prelipcean Radu           6.42857143                                            
Archip     Andrada        5.66666667                                            

9 rows selected.

SQL> select * from (select s.nume, s.prenume, avg(n.valoare) from studenti s join note n on s.nr_matricol=n.nr_matricol group by s.nume, s.prenume, s.nr_matricol order by avg(n.valoare) desc) where rownum<=3;

NUME       PRENUME    AVG(N.VALOARE)                                            
---------- ---------- --------------                                            
Bodnar     Ioana          9.66666667                                            
Panaite    Alexandru      9.14285714                                            
Popescu    Bogdan         8.71428571                                            

SQL> spool off
