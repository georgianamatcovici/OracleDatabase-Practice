SQL> select distinct nume, prenume from studenti;

NUME       PRENUME                                                                                                                                                                                      
---------- ----------                                                                                                                                                                                   
Prelipcean Radu                                                                                                                                                                                         
Arhire     Raluca                                                                                                                                                                                       
Pintescu   Andrei                                                                                                                                                                                       
Archip     Andrada                                                                                                                                                                                      
Cobzaru    George                                                                                                                                                                                       
Bucur      Andreea                                                                                                                                                                                      
Bodnar     Ioana                                                                                                                                                                                        
Ciobotariu Ciprian                                                                                                                                                                                      
Popescu    Bogdan                                                                                                                                                                                       
Panaite    Alexandru                                                                                                                                                                                    
Arhire     Alexandra                                                                                                                                                                                    
Antonie    Ioana                                                                                                                                                                                        

12 rows selected.

SQL> select distinct s.nume, s.prenume, n.valoare from studenti s join note n on s.nr_matricol=n.nr_matricol where n.valoare<7;

NUME       PRENUME       VALOARE                                                                                                                                                                        
---------- ---------- ----------                                                                                                                                                                        
Prelipcean Radu                5                                                                                                                                                                        
Antonie    Ioana               4                                                                                                                                                                        
Arhire     Raluca              6                                                                                                                                                                        
Arhire     Raluca              4                                                                                                                                                                        
Archip     Andrada             6                                                                                                                                                                        
Prelipcean Radu                4                                                                                                                                                                        
Archip     Andrada             4                                                                                                                                                                        
Prelipcean Radu                6                                                                                                                                                                        
Arhire     Raluca              5                                                                                                                                                                        

9 rows selected.

SQL> select distinct s.nume, s.prenume from studenti s join note n on s.nr_matricol=n.nr_matricol where n.valoare<7;

NUME       PRENUME                                                                                                                                                                                      
---------- ----------                                                                                                                                                                                   
Prelipcean Radu                                                                                                                                                                                         
Arhire     Raluca                                                                                                                                                                                       
Archip     Andrada                                                                                                                                                                                      
Antonie    Ioana                                                                                                                                                                                        

SQL> select distinct nume from studenti minus select distinct s.nume, s.prenume from studenti s join note n on s.nr_matricol=n.nr_matricol where n.valoare<7;
select distinct nume from studenti minus select distinct s.nume, s.prenume from studenti s join note n on s.nr_matricol=n.nr_matricol where n.valoare<7
*
ERROR at line 1:
ORA-01789: query block has incorrect number of result columns 


SQL> select distinct nume, prenume from studenti minus select distinct s.nume, s.prenume from studenti s join note n on s.nr_matricol=n.nr_matricol where n.valoare<7;

NUME       PRENUME                                                                                                                                                                                      
---------- ----------                                                                                                                                                                                   
Arhire     Alexandra                                                                                                                                                                                    
Bodnar     Ioana                                                                                                                                                                                        
Bucur      Andreea                                                                                                                                                                                      
Ciobotariu Ciprian                                                                                                                                                                                      
Cobzaru    George                                                                                                                                                                                       
Panaite    Alexandru                                                                                                                                                                                    
Pintescu   Andrei                                                                                                                                                                                       
Popescu    Bogdan                                                                                                                                                                                       

8 rows selected.

SQL> spool off
