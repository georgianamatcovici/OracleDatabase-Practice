SQL> select to_char(data_nastere, 'day') as "Day Born" from studenti;

Day Born                                                                        
------------------------------------                                            
friday                                                                          
friday                                                                          
tuesday                                                                         
tuesday                                                                         
thursday                                                                        
monday                                                                          
wednesday                                                                       
wednesday                                                                       
monday                                                                          
tuesday                                                                         
wednesday                                                                       

Day Born                                                                        
------------------------------------                                            
tuesday                                                                         
saturday                                                                        

13 rows selected.

SQL> select nume, prenume, to_char(data_nastere, 'day') as "Day Born" from studenti;

NUME       PRENUME    Day Born                                                  
---------- ---------- ------------------------------------                      
Popescu    Bogdan     friday                                                    
Prelipcean Radu       friday                                                    
Antonie    Ioana      tuesday                                                   
Arhire     Raluca     tuesday                                                   
Panaite    Alexandru  thursday                                                  
Bodnar     Ioana      monday                                                    
Archip     Andrada    wednesday                                                 
Ciobotariu Ciprian    wednesday                                                 
Bodnar     Ioana      monday                                                    
Pintescu   Andrei     tuesday                                                   
Arhire     Alexandra  wednesday                                                 

NUME       PRENUME    Day Born                                                  
---------- ---------- ------------------------------------                      
Cobzaru    George     tuesday                                                   
Bucur      Andreea    saturday                                                  

13 rows selected.

SQL> spool off
