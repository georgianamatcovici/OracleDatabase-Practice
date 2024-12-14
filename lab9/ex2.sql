SQL> select s1.nume, s1.prenume, avg(n1.valoare) as "Media" from studenti s1 join note n1 on s1.nr_matricol=n1.nr_matricol group by s1.nume, s1.prenume, s1.nr_matricol, s1.an having avg(n1.valoare) > (select avg(n2.valoare)from studenti s2 join note n2 on s2.nr_matricol=n2.nr_matricol where s1.an=s2.an and s1.nr_matricol!=s2.nr_matricol);

NUME       PRENUME         Media                                                
---------- ---------- ----------                                                
Bodnar     Ioana      9.66666667                                                
Bodnar     Ioana               8                                                
Antonie    Ioana               8                                                
Panaite    Alexandru  9.14285714                                                
Popescu    Bogdan     8.71428571                                                

SQL> spool off
