SQL> select s1.nume, s1.prenume from studenti s1 join note n1 on s1.nr_matricol=n1.nr_matricol where exists (select * from studenti s2 join note n2 on s2.nr_matricol=n2.nr_matricol where ((s1.an=s2.an and n1.valoare=n2.valoare) and n1.id_curs=n2.id_curs);
select s1.nume, s1.prenume from studenti s1 join note n1 on s1.nr_matricol=n1.nr_matricol where exists (select * from studenti s2 join note n2 on s2.nr_matricol=n2.nr_matricol where ((s1.an=s2.an and n1.valoare=n2.valoare) and n1.id_curs=n2.id_curs)
                                                                                                                                                                                                                                                        *
ERROR at line 1:
ORA-00907: missing right parenthesis 


SQL> select s1.nume, s1.prenume from studenti s1 join note n1 on s1.nr_matricol=n1.nr_matricol where exists (select * from studenti s2 join note n2 on s2.nr_matricol=n2.nr_matricol where ((s1.an=s2.an and n1.valoare=n2.valoare) and n1.id_curs=n2.id_curs));

NUME       PRENUME                                                              
---------- ----------                                                           
Popescu    Bogdan                                                               
Popescu    Bogdan                                                               
Popescu    Bogdan                                                               
Prelipcean Radu                                                                 
Popescu    Bogdan                                                               
Arhire     Raluca                                                               
Antonie    Ioana                                                                
Popescu    Bogdan                                                               
Panaite    Alexandru                                                            
Arhire     Raluca                                                               
Popescu    Bogdan                                                               

NUME       PRENUME                                                              
---------- ----------                                                           
Panaite    Alexandru                                                            
Arhire     Raluca                                                               
Antonie    Ioana                                                                
Prelipcean Radu                                                                 
Popescu    Bogdan                                                               
Arhire     Raluca                                                               
Prelipcean Radu                                                                 
Prelipcean Radu                                                                 
Prelipcean Radu                                                                 
Prelipcean Radu                                                                 
Prelipcean Radu                                                                 

NUME       PRENUME                                                              
---------- ----------                                                           
Antonie    Ioana                                                                
Panaite    Alexandru                                                            
Antonie    Ioana                                                                
Antonie    Ioana                                                                
Antonie    Ioana                                                                
Antonie    Ioana                                                                
Arhire     Raluca                                                               
Arhire     Raluca                                                               
Arhire     Raluca                                                               
Panaite    Alexandru                                                            
Panaite    Alexandru                                                            

NUME       PRENUME                                                              
---------- ----------                                                           
Panaite    Alexandru                                                            
Panaite    Alexandru                                                            
Bodnar     Ioana                                                                
Bodnar     Ioana                                                                
Bodnar     Ioana                                                                
Bodnar     Ioana                                                                
Archip     Andrada                                                              
Archip     Andrada                                                              
Bodnar     Ioana                                                                
Ciobotariu Ciprian                                                              
Archip     Andrada                                                              

NUME       PRENUME                                                              
---------- ----------                                                           
Ciobotariu Ciprian                                                              
Ciobotariu Ciprian                                                              
Bodnar     Ioana                                                                

47 rows selected.

SQL> spool off
