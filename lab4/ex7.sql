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
Antonie    Marşi                                                                                                                                                                                        
Arhire     Marşi                                                                                                                                                                                        
Panaite    Joi                                                                                                                                                                                          
Bodnar     Luni                                                                                                                                                                                         
Archip     Miercuri                                                                                                                                                                                     
Ciobotariu Miercuri                                                                                                                                                                                     
Bodnar     Luni                                                                                                                                                                                         
Pintescu   Marşi                                                                                                                                                                                        
Arhire     Miercuri                                                                                                                                                                                     
Cobzaru    Marşi                                                                                                                                                                                        
Bucur      Sâmbãtã                                                                                                                                                                                      

13 rows selected.

SQL> select s.nume, c.nume, to_char(s.data_nastere, 'Day', 'nls_date_language=romanian') as Zi from studenti s join studenti c on to_char(s.data_nastere, 'Day')=to_char(c.data_nastere, 'Day');

NUME       NUME       ZI                                                                                                                                                                                
---------- ---------- --------------------------------                                                                                                                                                  
Prelipcean Popescu    Vineri                                                                                                                                                                            
Popescu    Popescu    Vineri                                                                                                                                                                            
Prelipcean Prelipcean Vineri                                                                                                                                                                            
Popescu    Prelipcean Vineri                                                                                                                                                                            
Cobzaru    Antonie    Marşi                                                                                                                                                                             
Pintescu   Antonie    Marşi                                                                                                                                                                             
Arhire     Antonie    Marşi                                                                                                                                                                             
Antonie    Antonie    Marşi                                                                                                                                                                             
Cobzaru    Arhire     Marşi                                                                                                                                                                             
Pintescu   Arhire     Marşi                                                                                                                                                                             
Arhire     Arhire     Marşi                                                                                                                                                                             
Antonie    Arhire     Marşi                                                                                                                                                                             
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
Cobzaru    Pintescu   Marşi                                                                                                                                                                             
Pintescu   Pintescu   Marşi                                                                                                                                                                             
Arhire     Pintescu   Marşi                                                                                                                                                                             
Antonie    Pintescu   Marşi                                                                                                                                                                             
Arhire     Arhire     Miercuri                                                                                                                                                                          
Ciobotariu Arhire     Miercuri                                                                                                                                                                          
Archip     Arhire     Miercuri                                                                                                                                                                          
Cobzaru    Cobzaru    Marşi                                                                                                                                                                             
Pintescu   Cobzaru    Marşi                                                                                                                                                                             
Arhire     Cobzaru    Marşi                                                                                                                                                                             
Antonie    Cobzaru    Marşi                                                                                                                                                                             
Bucur      Bucur      Sâmbãtã                                                                                                                                                                           

35 rows selected.

SQL> select s.nume, c.nume, to_char(s.data_nastere, 'Day', 'nls_date_language=romanian') as Zi from studenti s join studenti c on to_char(s.data_nastere, 'Day')=to_char(c.data_nastere, 'Day') where s.nume<c.nume;

NUME       NUME       ZI                                                                                                                                                                                
---------- ---------- --------------------------------                                                                                                                                                  
Popescu    Prelipcean Vineri                                                                                                                                                                            
Antonie    Arhire     Marşi                                                                                                                                                                             
Arhire     Ciobotariu Miercuri                                                                                                                                                                          
Archip     Ciobotariu Miercuri                                                                                                                                                                          
Cobzaru    Pintescu   Marşi                                                                                                                                                                             
Arhire     Pintescu   Marşi                                                                                                                                                                             
Antonie    Pintescu   Marşi                                                                                                                                                                             
Archip     Arhire     Miercuri                                                                                                                                                                          
Arhire     Cobzaru    Marşi                                                                                                                                                                             
Antonie    Cobzaru    Marşi                                                                                                                                                                             

10 rows selected.

SQL> select s.nume, c.nume, to_char(s.data_nastere, 'Day', 'nls_date_language=romanian') as Zi from studenti s join studenti c on to_char(s.data_nastere, 'Day')=to_char(c.data_nastere, 'Day') where s.nume<c.nume order by to_number(to_char(s.data_nastere, 'D'));

NUME       NUME       ZI                                                                                                                                                                                
---------- ---------- --------------------------------                                                                                                                                                  
Cobzaru    Pintescu   Marşi                                                                                                                                                                             
Arhire     Cobzaru    Marşi                                                                                                                                                                             
Antonie    Pintescu   Marşi                                                                                                                                                                             
Arhire     Pintescu   Marşi                                                                                                                                                                             
Antonie    Arhire     Marşi                                                                                                                                                                             
Antonie    Cobzaru    Marşi                                                                                                                                                                             
Archip     Ciobotariu Miercuri                                                                                                                                                                          
Arhire     Ciobotariu Miercuri                                                                                                                                                                          
Archip     Arhire     Miercuri                                                                                                                                                                          
Popescu    Prelipcean Vineri                                                                                                                                                                            

10 rows selected.

SQL> select s.nume, c.nume, to_char(s.data_nastere, 'Day', 'nls_date_language=romanian') as Zi from studenti s join studenti c on to_char(s.data_nastere, 'Day')=to_char(c.data_nastere, 'Day') and s.nume<c.nume order by to_number(to_char(s.data_nastere, 'D'));

NUME       NUME       ZI                                                                                                                                                                                
---------- ---------- --------------------------------                                                                                                                                                  
Cobzaru    Pintescu   Marşi                                                                                                                                                                             
Arhire     Cobzaru    Marşi                                                                                                                                                                             
Antonie    Pintescu   Marşi                                                                                                                                                                             
Arhire     Pintescu   Marşi                                                                                                                                                                             
Antonie    Arhire     Marşi                                                                                                                                                                             
Antonie    Cobzaru    Marşi                                                                                                                                                                             
Archip     Ciobotariu Miercuri                                                                                                                                                                          
Arhire     Ciobotariu Miercuri                                                                                                                                                                          
Archip     Arhire     Miercuri                                                                                                                                                                          
Popescu    Prelipcean Vineri                                                                                                                                                                            

10 rows selected.

SQL> select s.nume, c.nume, to_char(s.data_nastere, 'Day', 'nls_date_language=romanian') as Zi from studenti s join studenti c on to_char(s.data_nastere, 'Day')=to_char(c.data_nastere, 'Day') and s.nume<c.nume order by to_number(to_char(s.data_nastere, 'D'));

NUME       NUME       ZI                                                                                                                                                                                
---------- ---------- --------------------------------                                                                                                                                                  
Cobzaru    Pintescu   Marşi                                                                                                                                                                             
Arhire     Cobzaru    Marşi                                                                                                                                                                             
Antonie    Pintescu   Marşi                                                                                                                                                                             
Arhire     Pintescu   Marşi                                                                                                                                                                             
Antonie    Arhire     Marşi                                                                                                                                                                             
Antonie    Cobzaru    Marşi                                                                                                                                                                             
Archip     Ciobotariu Miercuri                                                                                                                                                                          
Arhire     Ciobotariu Miercuri                                                                                                                                                                          
Archip     Arhire     Miercuri                                                                                                                                                                          
Popescu    Prelipcean Vineri                                                                                                                                                                            

10 rows selected.

SQL> select s.nume, c.nume, to_char(s.data_nastere, 'Day', 'nls_date_language=romanian') as Zi from studenti s join studenti c on to_char(s.data_nastere, 'Day')=to_char(c.data_nastere, 'Day') and s.nume<c.nume order by to_number(to_char(s.data_nastere, 'D'));

NUME       NUME       ZI                                                                                                                                                                                
---------- ---------- --------------------------------                                                                                                                                                  
Cobzaru    Pintescu   Marşi                                                                                                                                                                             
Arhire     Cobzaru    Marşi                                                                                                                                                                             
Antonie    Pintescu   Marşi                                                                                                                                                                             
Arhire     Pintescu   Marşi                                                                                                                                                                             
Antonie    Arhire     Marşi                                                                                                                                                                             
Antonie    Cobzaru    Marşi                                                                                                                                                                             
Archip     Ciobotariu Miercuri                                                                                                                                                                          
Arhire     Ciobotariu Miercuri                                                                                                                                                                          
Archip     Arhire     Miercuri                                                                                                                                                                          
Popescu    Prelipcean Vineri                                                                                                                                                                            

10 rows selected.

SQL> spool off
