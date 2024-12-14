SQL> select p.nume, p.prenume, count(n.valoare) as "Restantieri" from profesori p join didactic d on p.id_prof=d.id_prof join cursuri c on c.id_curs=d.id_curs join note n on n.id_curs=c.id_curs group by p.nume, p.prenume where n.valoare<5;
select p.nume, p.prenume, count(n.valoare) as "Restantieri" from profesori p join didactic d on p.id_prof=d.id_prof join cursuri c on c.id_curs=d.id_curs join note n on n.id_curs=c.id_curs group by p.nume, p.prenume where n.valoare<5
                                                                                                                                                                                                                        *
ERROR at line 1:
ORA-00933: SQL command not properly ended 


SQL> select p.nume, p.prenume, count(n.valoare) as "Restantieri" from profesori p join didactic d on p.id_prof=d.id_prof join cursuri c on c.id_curs=d.id_curs join note n on n.id_curs=c.id_curs where n.valoare<5 group by p.nume, p.prenume;

NUME       PRENUME    Restantieri                                               
---------- ---------- -----------                                               
Lucanu     Dorel                1                                               
Buraga     Sabin                2                                               
Varlan     Cosmin               1                                               
Breaban    Mihaela              1                                               
Frasinaru  Cristian             1                                               

SQL> select p.nume, p.prenume, count(n.valoare) as "Restantieri" from profesori p left join didactic d on p.id_prof=d.id_prof join cursuri c on c.id_curs=d.id_curs join note n on n.id_curs=c.id_curs where n.valoare<5 group by p.nume, p.prenume;

NUME       PRENUME    Restantieri                                               
---------- ---------- -----------                                               
Lucanu     Dorel                1                                               
Buraga     Sabin                2                                               
Varlan     Cosmin               1                                               
Breaban    Mihaela              1                                               
Frasinaru  Cristian             1                                               

SQL> spool off
