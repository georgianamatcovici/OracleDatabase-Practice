SQL> select sysdate Astazi from dual;

ASTAZI                                                                          
---------                                                                       
16-OCT-24                                                                       

SQL> select sysdate as "Astazi" from dual;

Astazi                                                                          
---------                                                                       
16-OCT-24                                                                       

SQL> select nume, data_nastere, MONTHS BETWEEN(sysdate, data_nastere) from studenti;
select nume, data_nastere, MONTHS BETWEEN(sysdate, data_nastere) from studenti
                                  *
ERROR at line 1:
ORA-00923: FROM keyword not found where expected 


SQL> select nume, data_nastere, MONTHS BETWEEN(sysdate, data_nastere) from studenti;
select nume, data_nastere, MONTHS BETWEEN(sysdate, data_nastere) from studenti
                                  *
ERROR at line 1:
ORA-00923: FROM keyword not found where expected 


SQL> select nume, data_nastere, MONTHS_BETWEEN(sysdate, data_nastere) from studenti;

NUME       DATA_NAST MONTHS_BETWEEN(SYSDATE,DATA_NASTERE)                       
---------- --------- ------------------------------------                       
Popescu    17-FEB-95                           355.982885                       
Prelipcean 26-MAY-95                           352.692562                       
Antonie    03-JAN-95                           357.434498                       
Arhire     26-DEC-95                           345.692562                       
Panaite    13-APR-95                           354.111917                       
Bodnar     26-AUG-96                           337.692562                       
Archip     03-APR-96                           342.434498                       
Ciobotariu 03-APR-96                           342.434498                       
Bodnar     10-JUN-96                           340.208691                       
Pintescu   26-AUG-97                           325.692562                       
Arhire     02-JUL-97                           327.466756                       

NUME       DATA_NAST MONTHS_BETWEEN(SYSDATE,DATA_NASTERE)                       
---------- --------- ------------------------------------                       
Cobzaru    29-APR-97                           329.595788                       
Bucur      10-MAY-97                           329.208691                       

13 rows selected.

SQL> select nume, data_nastere, trunc(MONTHS_BETWEEN(sysdate, data_nastere)) from studenti;

NUME       DATA_NAST TRUNC(MONTHS_BETWEEN(SYSDATE,DATA_NASTERE))                
---------- --------- -------------------------------------------                
Popescu    17-FEB-95                                         355                
Prelipcean 26-MAY-95                                         352                
Antonie    03-JAN-95                                         357                
Arhire     26-DEC-95                                         345                
Panaite    13-APR-95                                         354                
Bodnar     26-AUG-96                                         337                
Archip     03-APR-96                                         342                
Ciobotariu 03-APR-96                                         342                
Bodnar     10-JUN-96                                         340                
Pintescu   26-AUG-97                                         325                
Arhire     02-JUL-97                                         327                

NUME       DATA_NAST TRUNC(MONTHS_BETWEEN(SYSDATE,DATA_NASTERE))                
---------- --------- -------------------------------------------                
Cobzaru    29-APR-97                                         329                
Bucur      10-MAY-97                                         329                

13 rows selected.

SQL> select nume, data_nastere, trunc(MONTHS_BETWEEN(sysdate, data_nastere)) Data from studenti;

NUME       DATA_NAST       DATA                                                 
---------- --------- ----------                                                 
Popescu    17-FEB-95        355                                                 
Prelipcean 26-MAY-95        352                                                 
Antonie    03-JAN-95        357                                                 
Arhire     26-DEC-95        345                                                 
Panaite    13-APR-95        354                                                 
Bodnar     26-AUG-96        337                                                 
Archip     03-APR-96        342                                                 
Ciobotariu 03-APR-96        342                                                 
Bodnar     10-JUN-96        340                                                 
Pintescu   26-AUG-97        325                                                 
Arhire     02-JUL-97        327                                                 

NUME       DATA_NAST       DATA                                                 
---------- --------- ----------                                                 
Cobzaru    29-APR-97        329                                                 
Bucur      10-MAY-97        329                                                 

13 rows selected.

SQL> select nume, prenume, to_char(data_nastere, 'day') Zi_nastere from studenti;

NUME       PRENUME    ZI_NASTERE                                                
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

NUME       PRENUME    ZI_NASTERE                                                
---------- ---------- ------------------------------------                      
Cobzaru    George     tuesday                                                   
Bucur      Andreea    saturday                                                  

13 rows selected.

SQL> select nume, prenume, to_char(data_nastere, 'day', 'NLS_DATE_LANGUAGE=romanian') Zi_nastere from studenti;

NUME       PRENUME    ZI_NASTERE                                                
---------- ---------- --------------------------------                          
Popescu    Bogdan     vineri                                                    
Prelipcean Radu       vineri                                                    
Antonie    Ioana      marþi                                                     
Arhire     Raluca     marþi                                                     
Panaite    Alexandru  joi                                                       
Bodnar     Ioana      luni                                                      
Archip     Andrada    miercuri                                                  
Ciobotariu Ciprian    miercuri                                                  
Bodnar     Ioana      luni                                                      
Pintescu   Andrei     marþi                                                     
Arhire     Alexandra  miercuri                                                  

NUME       PRENUME    ZI_NASTERE                                                
---------- ---------- --------------------------------                          
Cobzaru    George     marþi                                                     
Bucur      Andreea    sâmbãtã                                                   

13 rows selected.

SQL> spool off
