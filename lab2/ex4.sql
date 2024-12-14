SQL> select rpad(bursa, 10, '$') Bursa from studenti;

BURSA                                                                           
----------------------------------------                                        
                                                                                
                                                                                
450$$$$$$$                                                                      
                                                                                
                                                                                
                                                                                
350$$$$$$$                                                                      
350$$$$$$$                                                                      
                                                                                
250$$$$$$$                                                                      
                                                                                

BURSA                                                                           
----------------------------------------                                        
350$$$$$$$                                                                      
                                                                                

13 rows selected.

SQL> select lpad(bursa, 10, '$') Bursa from studenti;

BURSA                                                                           
----------------------------------------                                        
                                                                                
                                                                                
$$$$$$$450                                                                      
                                                                                
                                                                                
                                                                                
$$$$$$$350                                                                      
$$$$$$$350                                                                      
                                                                                
$$$$$$$250                                                                      
                                                                                

BURSA                                                                           
----------------------------------------                                        
$$$$$$$350                                                                      
                                                                                

13 rows selected.

SQL> select nume, prenume, lpad(bursa, 10, '$') Bursa from studenti;

NUME       PRENUME    BURSA                                                     
---------- ---------- ----------------------------------------                  
Popescu    Bogdan                                                               
Prelipcean Radu                                                                 
Antonie    Ioana      $$$$$$$450                                                
Arhire     Raluca                                                               
Panaite    Alexandru                                                            
Bodnar     Ioana                                                                
Archip     Andrada    $$$$$$$350                                                
Ciobotariu Ciprian    $$$$$$$350                                                
Bodnar     Ioana                                                                
Pintescu   Andrei     $$$$$$$250                                                
Arhire     Alexandra                                                            

NUME       PRENUME    BURSA                                                     
---------- ---------- ----------------------------------------                  
Cobzaru    George     $$$$$$$350                                                
Bucur      Andreea                                                              

13 rows selected.

SQL> select nume, prenume, nvl(lpad(bursa, 10, '$'), 'nu are bursa') Bursa from studenti;

NUME       PRENUME    BURSA                                                     
---------- ---------- ----------------------------------------                  
Popescu    Bogdan     nu are bursa                                              
Prelipcean Radu       nu are bursa                                              
Antonie    Ioana      $$$$$$$450                                                
Arhire     Raluca     nu are bursa                                              
Panaite    Alexandru  nu are bursa                                              
Bodnar     Ioana      nu are bursa                                              
Archip     Andrada    $$$$$$$350                                                
Ciobotariu Ciprian    $$$$$$$350                                                
Bodnar     Ioana      nu are bursa                                              
Pintescu   Andrei     $$$$$$$250                                                
Arhire     Alexandra  nu are bursa                                              

NUME       PRENUME    BURSA                                                     
---------- ---------- ----------------------------------------                  
Cobzaru    George     $$$$$$$350                                                
Bucur      Andreea    nu are bursa                                              

13 rows selected.

SQL> select nume, lower(substr(nume, 1, 1)) || upper(substr(nume, 2)) "Nume modificat"
  2  select nume, lower(substr(nume, 1, 1)) || upper(substr(nume, 2)) "Nume modificat";
select nume, lower(substr(nume, 1, 1)) || upper(substr(nume, 2)) "Nume modificat"
*
ERROR at line 2:
ORA-00923: FROM keyword not found where expected 


SQL> select nume, lower(substr(nume, 1, 1)) || upper(substr(nume, 2)) "Nume modificat";
select nume, lower(substr(nume, 1, 1)) || upper(substr(nume, 2)) "Nume modificat"
                                                                                *
ERROR at line 1:
ORA-00923: FROM keyword not found where expected 


SQL> select nume, lower(substr(nume, 1, 1)) || upper(substr(nume, 2)) "Nume modificat" from profesori
  2  select nume, lower(substr(nume, 1, 1)) || upper(substr(nume, 2)) "Nume modificat" from profesori;
select nume, lower(substr(nume, 1, 1)) || upper(substr(nume, 2)) "Nume modificat" from profesori
*
ERROR at line 2:
ORA-00933: SQL command not properly ended 


SQL> select nume, lower(substr(nume, 1, 1)) || upper(substr(nume, 2)) "Nume modificat" from profesori;

NUME       Nume modificat                                                       
---------- ----------------------------------------                             
Masalagiu  mASALAGIU                                                            
Buraga     bURAGA                                                               
Lucanu     lUCANU                                                               
Tiplea     tIPLEA                                                               
Iacob      iACOB                                                                
Breaban    bREABAN                                                              
Varlan     vARLAN                                                               
Frasinaru  fRASINARU                                                            
Ciobaca    cIOBACA                                                              
Captarencu cAPTARENCU                                                           
Moruz      mORUZ                                                                

NUME       Nume modificat                                                       
---------- ----------------------------------------                             
PASCARIU   pASCARIU                                                             
LAZAR      lAZAR                                                                
Kristo     kRISTO                                                               
Nastasa    nASTASA                                                              
PASAT      pASAT                                                                

16 rows selected.

SQL> select nume, lower(substr(nume, 1, 1)) || upper(substr(nume, 2)) "Nume modificat" from profesori
  2  where nume like 'B%';

NUME       Nume modificat                                                       
---------- ----------------------------------------                             
Buraga     bURAGA                                                               
Breaban    bREABAN                                                              

SQL> select nume, lower(substr(nume, 1, 1)) || upper(substr(nume, 2)) "Nume modificat", length(nume), from profesori where nume like 'B%';
select nume, lower(substr(nume, 1, 1)) || upper(substr(nume, 2)) "Nume modificat", length(nume), from profesori where nume like 'B%'
                                                                                                 *
ERROR at line 1:
ORA-00936: missing expression 


SQL> select nume, lower(substr(nume, 1, 1)) || upper(substr(nume, 2)) "Nume modificat", length(nume), from profesori where nume like 'B%';
select nume, lower(substr(nume, 1, 1)) || upper(substr(nume, 2)) "Nume modificat", length(nume), from profesori where nume like 'B%'
                                                                                                 *
ERROR at line 1:
ORA-00936: missing expression 


SQL> select nume, lower(substr(nume, 1, 1)) || upper(substr(nume, 2)) "Nume modificat", length(nume), from profesori where nume like 'B%';
select nume, lower(substr(nume, 1, 1)) || upper(substr(nume, 2)) "Nume modificat", length(nume), from profesori where nume like 'B%'
                                                                                                 *
ERROR at line 1:
ORA-00936: missing expression 


SQL> select nume, lower(substr(nume, 1, 1)) || upper(substr(nume, 2)) "Nume modificat", length(nume) from profesori where nume like 'B%';

NUME       Nume modificat                           LENGTH(NUME)                
---------- ---------------------------------------- ------------                
Buraga     bURAGA                                             10                
Breaban    bREABAN                                            10                

SQL> select nume, lower(substr(nume, 1, 1)) || upper(substr(nume, 2)) "Nume modificat", length(trim(nume)) from profesori where nume like 'B%';

NUME       Nume modificat                           LENGTH(TRIM(NUME))          
---------- ---------------------------------------- ------------------          
Buraga     bURAGA                                                    6          
Breaban    bREABAN                                                   7          

SQL> select nume, lower(substr(nume, 1, 1)) || upper(substr(nume, 2)) "Nume modificat", length(trim(nume)) from profesori where nume like 'B%';

NUME       Nume modificat                           LENGTH(TRIM(NUME))          
---------- ---------------------------------------- ------------------          
Buraga     bURAGA                                                    6          
Breaban    bREABAN                                                   7          

SQL> spool off
