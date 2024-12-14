SQL> select concat('Elevul ', concat(prenume, concat(' este in grupa ', grupa)));
select concat('Elevul ', concat(prenume, concat(' este in grupa ', grupa)))
                                                                          *
ERROR at line 1:
ORA-00923: FROM keyword not found where expected 


SQL> select concat('Elevul ', concat(prenume, concat(' este in grupa ', grupa))) from studenti;

CONCAT('ELEVUL',CONCAT(PRENUME,CON                                              
----------------------------------                                              
Elevul Bogdan este in grupa A2                                                  
Elevul Radu este in grupa A2                                                    
Elevul Ioana este in grupa A2                                                   
Elevul Raluca este in grupa A4                                                  
Elevul Alexandru este in grupa B3                                               
Elevul Ioana este in grupa A1                                                   
Elevul Andrada este in grupa A1                                                 
Elevul Ciprian este in grupa A1                                                 
Elevul Ioana este in grupa B2                                                   
Elevul Andrei este in grupa B1                                                  
Elevul Alexandra este in grupa B1                                               

CONCAT('ELEVUL',CONCAT(PRENUME,CON                                              
----------------------------------                                              
Elevul George este in grupa B1                                                  
Elevul Andreea este in grupa B2                                                 

13 rows selected.

SQL> spool off
