SQL> select p1.nume, p1.prenume from profesori p1 join didactic d1 on p1.id_prof=d1.id_prof join note n1 on n1.id_curs=d1.id_curs group by p1.nume, p1.prenume, p1.id_prof having exists (select p2.id_prof from profesori p2 join didactic d2 on d2.id_prof=p2.id_prof join note n2 on n2.id_curs=d2.id_curs where p1.id_prof!=p2.id_prof group by p2.id_prof having avg(n1.valoare)=avg(n2.valoare));

NUME                 PRENUME                                                    
-------------------- --------------------                                       
Iacob                Florin                                                     
Breaban              Mihaela                                                    
Ciobaca              Stefan                                                     
Varlan               Cosmin                                                     
Masalagiu            Cristian                                                   
Lucanu               Dorel                                                      

6 rows selected.

SQL> spool off
