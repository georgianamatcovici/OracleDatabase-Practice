SQL> select s.nume, s.prenume from studenti where trim(grupa)='A2' and an=3;
select s.nume, s.prenume from studenti where trim(grupa)='A2' and an=3
               *
ERROR at line 1:
ORA-00904: "S"."PRENUME": invalid identifier 


SQL> select s.nume, s.prenume from studenti s where trim(grupa)='A2' and an=3;

NUME       PRENUME                                                              
---------- ----------                                                           
Popescu    Bogdan                                                               
Prelipcean Radu                                                                 
Antonie    Ioana                                                                

SQL> select s.nume, s.prenume from studenti s join note n on s.nr_matricol=n.nr_matricol where trim(grupa)='A2' and an=3;

NUME       PRENUME                                                              
---------- ----------                                                           
Popescu    Bogdan                                                               
Popescu    Bogdan                                                               
Popescu    Bogdan                                                               
Popescu    Bogdan                                                               
Popescu    Bogdan                                                               
Popescu    Bogdan                                                               
Prelipcean Radu                                                                 
Prelipcean Radu                                                                 
Prelipcean Radu                                                                 
Prelipcean Radu                                                                 
Prelipcean Radu                                                                 

NUME       PRENUME                                                              
---------- ----------                                                           
Prelipcean Radu                                                                 
Antonie    Ioana                                                                
Antonie    Ioana                                                                
Antonie    Ioana                                                                
Antonie    Ioana                                                                
Antonie    Ioana                                                                
Antonie    Ioana                                                                

18 rows selected.

SQL> select s.nume, s.prenume, avg(n.valoare) from studenti s join note n on s.nr_matricol=n.nr_matricol where trim(grupa)='A2' and an=3 group by s.nume, s.prenume;

NUME       PRENUME    AVG(N.VALOARE)                                            
---------- ---------- --------------                                            
Prelipcean Radu           5.83333333                                            
Popescu    Bogdan                8.5                                            
Antonie    Ioana          7.66666667                                            

SQL> select s.nume, s.prenume, s.an, s.grupa, avg(n.valoare) as Media from studenti s join note n on s.nr_matricol=n.nr_matricol where trim(grupa)='A2' and an=3 group by s.nume, s.prenume;
select s.nume, s.prenume, s.an, s.grupa, avg(n.valoare) as Media from studenti s join note n on s.nr_matricol=n.nr_matricol where trim(grupa)='A2' and an=3 group by s.nume, s.prenume
                          *
ERROR at line 1:
ORA-00979: not a GROUP BY expression 


SQL> select s.nume, s.prenume, s.an, s.grupa, avg(n.valoare) as Media from studenti s join note n on s.nr_matricol=n.nr_matricol where trim(grupa)='A2' and an=3 group by s.nume, s.prenume, s.an, s.grupa;

NUME       PRENUME            AN GR      MEDIA                                  
---------- ---------- ---------- -- ----------                                  
Prelipcean Radu                3 A2 5.83333333                                  
Antonie    Ioana               3 A2 7.66666667                                  
Popescu    Bogdan              3 A2        8.5                                  

SQL> spool off
