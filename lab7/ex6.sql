SQL> select s.nume, s.prenume, avg(n.valoare) from note n join studenti s on n.nr_matricol=s.nr_matricol group by s.nume, s.prenume, s.nr_matricol;

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

SQL> select max(avg(n.valoare)) from note n join studenti s on n.nr_matricol=s.nr_matricol group by s.nume, s.prenume, s.nr_matricol;

MAX(AVG(N.VALOARE))                                                             
-------------------                                                             
         9.66666667                                                             

SQL> select s.nume, s.prenume from studenti s, note n where s.nr_matricol=n.nr_matricol and avg(n.valoare) = (select max(avg(n.valoare)) from note n join studenti s on n.nr_matricol=s.nr_matricol group by s.nume, s.prenume, s.nr_matricol) group by s.nr_matricol, s.nume, s.prenume;
select s.nume, s.prenume from studenti s, note n where s.nr_matricol=n.nr_matricol and avg(n.valoare) = (select max(avg(n.valoare)) from note n join studenti s on n.nr_matricol=s.nr_matricol group by s.nume, s.prenume, s.nr_matricol) group by s.nr_matricol, s.nume, s.prenume
                                                                                       *
ERROR at line 1:
ORA-00934: group function is not allowed here 


SQL> select s.nume, s.prenume from studenti s, note n where s.nr_matricol=n.nr_matricol group by s.nr_matricol having avg(n.valoare) = (select max(avg(n.valoare)) from note n join studenti s on n.nr_matricol=s.nr_matricol group by s.nume, s.prenume, s.nr_matricol) ;
select s.nume, s.prenume from studenti s, note n where s.nr_matricol=n.nr_matricol group by s.nr_matricol having avg(n.valoare) = (select max(avg(n.valoare)) from note n join studenti s on n.nr_matricol=s.nr_matricol group by s.nume, s.prenume, s.nr_matricol) 
       *
ERROR at line 1:
ORA-00979: not a GROUP BY expression 


SQL> select s.nume, s.prenume from studenti s, note n where s.nr_matricol=n.nr_matricol group by s.nr_matricol, s.nume, s.prenume having avg(n.valoare) = (select max(avg(n.valoare)) from note n join studenti s on n.nr_matricol=s.nr_matricol group by s.nume, s.prenume, s.nr_matricol) ;

NUME       PRENUME                                                              
---------- ----------                                                           
Bodnar     Ioana                                                                

SQL> spool off
