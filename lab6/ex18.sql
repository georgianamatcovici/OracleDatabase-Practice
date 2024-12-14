SQL> select p.nume, p.prenume, avg(n.valoare) as "Medie note puse" from profesori p join didactic d on p.id_prof=d.id_prof join cursuri c on c.id_curs=d.id_curs join note n on n.id_curs=c.id_curs group by p.nume, p.prenume;

NUME       PRENUME    Medie note puse                                           
---------- ---------- ---------------                                           
Lucanu     Dorel           7.88888889                                           
Masalagiu  Cristian        7.88888889                                           
Varlan     Cosmin                 7.8                                           
Buraga     Sabin                  6.4                                           
Breaban    Mihaela                7.8                                           
Ciobaca    Stefan          7.88888889                                           
Iacob      Florin          7.88888889                                           
Frasinaru  Cristian               6.2                                           

8 rows selected.

SQL> select p.nume, p.prenume, avg(n.valoare) as "Medie note puse" from profesori p join didactic d on p.id_prof=d.id_prof join cursuri c on c.id_curs=d.id_curs join note n on n.id_curs=c.id_curs group by p.nume, p.prenume order by avg(n.valoare);

NUME       PRENUME    Medie note puse                                           
---------- ---------- ---------------                                           
Frasinaru  Cristian               6.2                                           
Buraga     Sabin                  6.4                                           
Varlan     Cosmin                 7.8                                           
Breaban    Mihaela                7.8                                           
Lucanu     Dorel           7.88888889                                           
Ciobaca    Stefan          7.88888889                                           
Iacob      Florin          7.88888889                                           
Masalagiu  Cristian        7.88888889                                           

8 rows selected.

SQL> select p.nume, p.prenume, avg(n.valoare) as "Medie note puse" from profesori p join didactic d on p.id_prof=d.id_prof join cursuri c on c.id_curs=d.id_curs join note n on n.id_curs=c.id_curs group by p.nume, p.prenume order by avg(n.valoare) desc;

NUME       PRENUME    Medie note puse                                           
---------- ---------- ---------------                                           
Lucanu     Dorel           7.88888889                                           
Masalagiu  Cristian        7.88888889                                           
Iacob      Florin          7.88888889                                           
Ciobaca    Stefan          7.88888889                                           
Varlan     Cosmin                 7.8                                           
Breaban    Mihaela                7.8                                           
Buraga     Sabin                  6.4                                           
Frasinaru  Cristian               6.2                                           

8 rows selected.

SQL> spool off
