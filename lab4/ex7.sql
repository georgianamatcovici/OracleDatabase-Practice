SQL> select nume, to_char(data_nastere, 'Day', 'nsl_date_language=romanian') from studenti;
select nume, to_char(data_nastere, 'Day', 'nsl_date_language=romanian') from studenti
                                                                             *
ERROR at line 1:
ORA-12702: invalid NLS parameter string used in SQL function 


SQL> select nume, to_char(data_nastere, 'Day', 'nls_date_language=romanian') from studenti;

NUME       TO_CHAR(DATA_NASTERE,'DAY','NLS_                                                                                                                                                             
---------- --------------------------------                                                                                                                                                             
Popescu    Vineri                                                                                                                                                                                       
Prelipcean Vineri                                                                                                                                                                                       
Antonie    Mar�i                                                                                                                                                                                        
Arhire     Mar�i                                                                                                                                                                                        
Panaite    Joi                                                                                                                                                                                          
Bodnar     Luni                                                                                                                                                                                         
Archip     Miercuri                                                                                                                                                                                     
Ciobotariu Miercuri                                                                                                                                                                                     
Bodnar     Luni                                                                                                                                                                                         
Pintescu   Mar�i                                                                                                                                                                                        
Arhire     Miercuri                                                                                                                                                                                     
Cobzaru    Mar�i                                                                                                                                                                                        
Bucur      S�mb�t�                                                                                                                                                                                      

13 rows selected.

SQL> select s.nume, c.nume, to_char(s.data_nastere, 'Day', 'nls_date_language=romanian') as Zi from studenti s join studenti c on to_char(s.data_nastere, 'Day')=to_char(c.data_nastere, 'Day');

NUME       NUME       ZI                                                                                                                                                                                
---------- ---------- --------------------------------                                                                                                                                                  
Prelipcean Popescu    Vineri                                                                                                                                                                            
Popescu    Popescu    Vineri                                                                                                                                                                            
Prelipcean Prelipcean Vineri                                                                                                                                                                            
Popescu    Prelipcean Vineri                                                                                                                                                                            
Cobzaru    Antonie    Mar�i                                                                                                                                                                             
Pintescu   Antonie    Mar�i                                                                                                                                                                             
Arhire     Antonie    Mar�i                                                                                                                                                                             
Antonie    Antonie    Mar�i                                                                                                                                                                             
Cobzaru    Arhire     Mar�i                                                                                                                                                                             
Pintescu   Arhire     Mar�i                                                                                                                                                                             
Arhire     Arhire     Mar�i                                                                                                                                                                             
Antonie    Arhire     Mar�i                                                                                                                                                                             
Panaite    Panaite    Joi                                                                                                                                                                               
Bodnar     Bodnar     Luni                                                                                                                                                                              
Bodnar     Bodnar     Luni                                                                                                                                                                              
Arhire     Archip     Miercuri                                                                                                                                                                          
Ciobotariu Archip     Miercuri                                                                                                                                                                          
Archip     Archip     Miercuri                                                                                                                                                                          
Arhire     Ciobotariu Miercuri                                                                                                                                                                          
Ciobotariu Ciobotariu Miercuri                                                                                                                                                                          
Archip     Ciobotariu Miercuri                                                                                                                                                                          
Bodnar     Bodnar     Luni                                                                                                                                                                              
Bodnar     Bodnar     Luni                                                                                                                                                                              
Cobzaru    Pintescu   Mar�i                                                                                                                                                                             
Pintescu   Pintescu   Mar�i                                                                                                                                                                             
Arhire     Pintescu   Mar�i                                                                                                                                                                             
Antonie    Pintescu   Mar�i                                                                                                                                                                             
Arhire     Arhire     Miercuri                                                                                                                                                                          
Ciobotariu Arhire     Miercuri                                                                                                                                                                          
Archip     Arhire     Miercuri                                                                                                                                                                          
Cobzaru    Cobzaru    Mar�i                                                                                                                                                                             
Pintescu   Cobzaru    Mar�i                                                                                                                                                                             
Arhire     Cobzaru    Mar�i                                                                                                                                                                             
Antonie    Cobzaru    Mar�i                                                                                                                                                                             
Bucur      Bucur      S�mb�t�                                                                                                                                                                           

35 rows selected.

SQL> select s.nume, c.nume, to_char(s.data_nastere, 'Day', 'nls_date_language=romanian') as Zi from studenti s join studenti c on to_char(s.data_nastere, 'Day')=to_char(c.data_nastere, 'Day') where s.nume<c.nume;

NUME       NUME       ZI                                                                                                                                                                                
---------- ---------- --------------------------------                                                                                                                                                  
Popescu    Prelipcean Vineri                                                                                                                                                                            
Antonie    Arhire     Mar�i                                                                                                                                                                             
Arhire     Ciobotariu Miercuri                                                                                                                                                                          
Archip     Ciobotariu Miercuri                                                                                                                                                                          
Cobzaru    Pintescu   Mar�i                                                                                                                                                                             
Arhire     Pintescu   Mar�i                                                                                                                                                                             
Antonie    Pintescu   Mar�i                                                                                                                                                                             
Archip     Arhire     Miercuri                                                                                                                                                                          
Arhire     Cobzaru    Mar�i                                                                                                                                                                             
Antonie    Cobzaru    Mar�i                                                                                                                                                                             

10 rows selected.

SQL> select s.nume, c.nume, to_char(s.data_nastere, 'Day', 'nls_date_language=romanian') as Zi from studenti s join studenti c on to_char(s.data_nastere, 'Day')=to_char(c.data_nastere, 'Day') where s.nume<c.nume order by to_number(to_char(s.data_nastere, 'D'));

NUME       NUME       ZI                                                                                                                                                                                
---------- ---------- --------------------------------                                                                                                                                                  
Cobzaru    Pintescu   Mar�i                                                                                                                                                                             
Arhire     Cobzaru    Mar�i                                                                                                                                                                             
Antonie    Pintescu   Mar�i                                                                                                                                                                             
Arhire     Pintescu   Mar�i                                                                                                                                                                             
Antonie    Arhire     Mar�i                                                                                                                                                                             
Antonie    Cobzaru    Mar�i                                                                                                                                                                             
Archip     Ciobotariu Miercuri                                                                                                                                                                          
Arhire     Ciobotariu Miercuri                                                                                                                                                                          
Archip     Arhire     Miercuri                                                                                                                                                                          
Popescu    Prelipcean Vineri                                                                                                                                                                            

10 rows selected.

SQL> select s.nume, c.nume, to_char(s.data_nastere, 'Day', 'nls_date_language=romanian') as Zi from studenti s join studenti c on to_char(s.data_nastere, 'Day')=to_char(c.data_nastere, 'Day') and s.nume<c.nume order by to_number(to_char(s.data_nastere, 'D'));

NUME       NUME       ZI                                                                                                                                                                                
---------- ---------- --------------------------------                                                                                                                                                  
Cobzaru    Pintescu   Mar�i                                                                                                                                                                             
Arhire     Cobzaru    Mar�i                                                                                                                                                                             
Antonie    Pintescu   Mar�i                                                                                                                                                                             
Arhire     Pintescu   Mar�i                                                                                                                                                                             
Antonie    Arhire     Mar�i                                                                                                                                                                             
Antonie    Cobzaru    Mar�i                                                                                                                                                                             
Archip     Ciobotariu Miercuri                                                                                                                                                                          
Arhire     Ciobotariu Miercuri                                                                                                                                                                          
Archip     Arhire     Miercuri                                                                                                                                                                          
Popescu    Prelipcean Vineri                                                                                                                                                                            

10 rows selected.

SQL> select s.nume, c.nume, to_char(s.data_nastere, 'Day', 'nls_date_language=romanian') as Zi from studenti s join studenti c on to_char(s.data_nastere, 'Day')=to_char(c.data_nastere, 'Day') and s.nume<c.nume order by to_number(to_char(s.data_nastere, 'D'));

NUME       NUME       ZI                                                                                                                                                                                
---------- ---------- --------------------------------                                                                                                                                                  
Cobzaru    Pintescu   Mar�i                                                                                                                                                                             
Arhire     Cobzaru    Mar�i                                                                                                                                                                             
Antonie    Pintescu   Mar�i                                                                                                                                                                             
Arhire     Pintescu   Mar�i                                                                                                                                                                             
Antonie    Arhire     Mar�i                                                                                                                                                                             
Antonie    Cobzaru    Mar�i                                                                                                                                                                             
Archip     Ciobotariu Miercuri                                                                                                                                                                          
Arhire     Ciobotariu Miercuri                                                                                                                                                                          
Archip     Arhire     Miercuri                                                                                                                                                                          
Popescu    Prelipcean Vineri                                                                                                                                                                            

10 rows selected.

SQL> select s.nume, c.nume, to_char(s.data_nastere, 'Day', 'nls_date_language=romanian') as Zi from studenti s join studenti c on to_char(s.data_nastere, 'Day')=to_char(c.data_nastere, 'Day') and s.nume<c.nume order by to_number(to_char(s.data_nastere, 'D'));

NUME       NUME       ZI                                                                                                                                                                                
---------- ---------- --------------------------------                                                                                                                                                  
Cobzaru    Pintescu   Mar�i                                                                                                                                                                             
Arhire     Cobzaru    Mar�i                                                                                                                                                                             
Antonie    Pintescu   Mar�i                                                                                                                                                                             
Arhire     Pintescu   Mar�i                                                                                                                                                                             
Antonie    Arhire     Mar�i                                                                                                                                                                             
Antonie    Cobzaru    Mar�i                                                                                                                                                                             
Archip     Ciobotariu Miercuri                                                                                                                                                                          
Arhire     Ciobotariu Miercuri                                                                                                                                                                          
Archip     Arhire     Miercuri                                                                                                                                                                          
Popescu    Prelipcean Vineri                                                                                                                                                                            

10 rows selected.

SQL> spool off
