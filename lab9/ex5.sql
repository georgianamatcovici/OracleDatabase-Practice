SQL> select s1.nume, s1.prenume from studenti s1 where not exists (select * from studenti s2 where s1.an=s2.an and s1.grupa=s2.grupa and s1.nr_matricol!=s2.nr_matricol);

NUME       PRENUME                                                              
---------- ----------                                                           
Arhire     Raluca                                                               
Panaite    Alexandru                                                            
Bucur      Andreea                                                              
Bodnar     Ioana                                                                

SQL> spool off
