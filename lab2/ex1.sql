SQL> SELECT CHR(68)||CHR(65)||CHR(84)||CHR(69) FROM DUAL;

CHR(                                                                            
----                                                                            
DATE                                                                            

SQL> SELECT REPLACE('Andrei','i','ea') FROM DUAL;

REPLACE                                                                         
-------                                                                         
Andreea                                                                         

SQL> SELECT REPLACE('Andrei','i') FROM DUAL;

REPLA                                                                           
-----                                                                           
Andre                                                                           

SQL> SELECT TRANSLATE('48KLM980', '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ', '9999999999XXXXXXXXXXXXXXXXXXXXXXXXXX') "COD" FROM DUAL;

COD                                                                             
--------                                                                        
99XXX999                                                                        

SQL> SELECT TRANSLATE('48KLM980', '0123456789ABCDEFGHIJKLMNOPQRSTUVWXY', '9999999999XXXXXXXXXXXXXXXXXXXXXXXXXX') "COD" FROM DUAL;

COD                                                                             
--------                                                                        
99XXX999                                                                        

SQL> SELECT TRANSLATE('48KLM980', '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ', '9999999999XXXXXXXXXXXXXXXXXXXXXXXXXX') "COD" FROM DUAL;

COD                                                                             
--------                                                                        
99XXX999                                                                        

SQL> SELECT * FROM studenti WHERE UPPER(prenume) = 'ANDREI';

NR_MAT NUME       PRENUME            AN GR      BURSA DATA_NAST                 
------ ---------- ---------- ---------- -- ---------- ---------                 
120    Pintescu   Andrei              1 B1        250 26-AUG-97                 

SQL> SELECT * FROM profesori WHERE TRIM(UPPER(nume)) = 'BREABAN';

ID_P NUME       PRENUME    GRAD_                                                
---- ---------- ---------- -----                                                
p6   Breaban    Mihaela    Conf                                                 

SQL> SELECT CURRENT_DATE FROM DUAL;

CURRENT_D                                                                       
---------                                                                       
16-OCT-24                                                                       

SQL> SELECT CURRENT_TIMESTAMP FROM DUAL;

CURRENT_TIMESTAMP                                                               
---------------------------------------------------------------------------     
16-OCT-24 10.43.36.139000 AM +03:00                                             

SQL> SELECT MONTHS_BETWEEN(TO_DATE('02-02-2015','MM-DD-YYYY'),TO_DATE('01-01-2015','MM-DD-YYYY') ) AS "Months" FROM DUAL;

    Months                                                                      
----------                                                                      
1.03225806                                                                      

SQL> SELECT trun(MONTHS_BETWEEN(TO_DATE('02-02-2015','MM-DD-YYYY'),TO_DATE('01-01-2015','MM-DD-YYYY') ) AS "Months" FROM DUAL, 1);
SELECT trun(MONTHS_BETWEEN(TO_DATE('02-02-2015','MM-DD-YYYY'),TO_DATE('01-01-2015','MM-DD-YYYY') ) AS "Months" FROM DUAL, 1)
                                                                                                   *
ERROR at line 1:
ORA-00907: missing right parenthesis 


SQL> SELECT data_nastere, ADD_MONTHS(data_nastere,1) FROM studenti WHERE nume= 'Popescu';

DATA_NAST ADD_MONTH                                                             
--------- ---------                                                             
17-FEB-95 17-MAR-95                                                             

SQL> SELECT NEXT_DAY('13-OCT-15','TUESDAY') FROM DUAL;

NEXT_DAY(                                                                       
---------                                                                       
20-OCT-15                                                                       

SQL> SELECT SYSDATE, LAST_DAY(SYSDATE) AS "Last" FROM DUAL
  2  SELECT SYSDATE, LAST_DAY(SYSDATE) AS "Last" FROM DUAL;
SELECT SYSDATE, LAST_DAY(SYSDATE) AS "Last" FROM DUAL
*
ERROR at line 2:
ORA-00933: SQL command not properly ended 


SQL> SELECT SYSDATE, LAST_DAY(SYSDATE) AS "Last" FROM DUAL;

SYSDATE   Last                                                                  
--------- ---------                                                             
16-OCT-24 31-OCT-24                                                             

SQL> SELECT ROUND (TO_DATE ('27-OCT-16','DD-MON-YY'),'YEAR')"New Year" FROM DUAL;

New Year                                                                        
---------                                                                       
01-JAN-17                                                                       

SQL> SELECT TRUNC(TO_DATE('27-OCT-16','DD-MON-YY'), 'YEAR')"First day of the current year" FROM DUAL;

First day                                                                       
---------                                                                       
01-JAN-16                                                                       

SQL> SELECT TRUNC(TO_DATE('27-OCT-16','DD-MON-YY'), 'MONTH')"First day of the current month" FROM DUAL;

First day                                                                       
---------                                                                       
01-OCT-16                                                                       

SQL> SELECT (SYSDATE-data_nastere)/365 FROM studenti;

(SYSDATE-DATA_NASTERE)/365                                                      
--------------------------                                                      
                29.6834358                                                      
                29.4149427                                                      
                29.8067235                                                      
                28.8286413                                                      
                29.5327509                                                      
                28.1601481                                                      
                28.5574084                                                      
                28.5574084                                                      
                28.3711071                                                      
                27.1601481                                                      
                27.3108331                                                      

(SYSDATE-DATA_NASTERE)/365                                                      
--------------------------                                                      
                27.4861755                                                      
                27.4560386                                                      

13 rows selected.

SQL> SELECT (SYSDATE-data_nastere)/365.24 FROM studenti;

(SYSDATE-DATA_NASTERE)/365.24                                                   
-----------------------------                                                   
                   29.6639325                                                   
                   29.3956158                                                   
                   29.7871392                                                   
                   28.8096997                                                   
                   29.5133466                                                   
                   28.1416458                                                   
                    28.538645                                                   
                    28.538645                                                   
                   28.3524661                                                   
                   27.1423029                                                   
                   27.2928888                                                   

(SYSDATE-DATA_NASTERE)/365.24                                                   
-----------------------------                                                   
                   27.4681161                                                   
                   27.4379989                                                   

13 rows selected.

SQL> SELECT MONTHS_BETWEEN(sysdate, data_nastere)/12 FROM studenti;

MONTHS_BETWEEN(SYSDATE,DATA_NASTERE)/12                                         
---------------------------------------                                         
                             29.6652031                                         
                             29.3910095                                         
                             29.7861708                                         
                             28.8076762                                         
                             29.5092891                                         
                             28.1410095                                         
                             28.5361708                                         
                             28.5361708                                         
                             28.3506869                                         
                             27.1410095                                         
                              27.288859                                         

MONTHS_BETWEEN(SYSDATE,DATA_NASTERE)/12                                         
---------------------------------------                                         
                             27.4662783                                         
                             27.4340203                                         

13 rows selected.

SQL> select to_char(sysdate, 'Day', D, DD, Month, MM, YYYY, YY, year')"TO_CHAR example" FROM DUAL;
ERROR:
ORA-01756: quoted string not properly terminated 


SQL> select to_char(sysdate, 'Day, D, DD, Month, MM, YYYY, YY, year')"TO_CHAR example" FROM DUAL;

TO_CHAR example                                                                 
--------------------------------------------------------------------------------
Wednesday, 4, 16, October  , 10, 2024, 24, twenty twenty-four                   

SQL> SELECT TO_DATE('January 26, 1996, 12:38 A.M.', 'Month dd YYYY HH:MI A.M.') FROM DUAL;

TO_DATE('                                                                       
---------                                                                       
26-JAN-96                                                                       

SQL> select nume, prenume from studenti where trim(upper(to_char(data_nastere, 'day')))='VINERI'
  2  select nume, prenume from studenti where trim(upper(to_char(data_nastere, 'day')))='VINERI';
select nume, prenume from studenti where trim(upper(to_char(data_nastere, 'day')))='VINERI'
*
ERROR at line 2:
ORA-00933: SQL command not properly ended 


SQL> select nume, prenume from studenti where trim(upper(to_char(data_nastere, 'day')))='VINERI';

no rows selected

SQL> SELECT nume, NVL(TO_CHAR(bursa),'Nu are bursa') "bursa" FROM studenti;

NUME       bursa                                                                
---------- ----------------------------------------                             
Popescu    Nu are bursa                                                         
Prelipcean Nu are bursa                                                         
Antonie    450                                                                  
Arhire     Nu are bursa                                                         
Panaite    Nu are bursa                                                         
Bodnar     Nu are bursa                                                         
Archip     350                                                                  
Ciobotariu 350                                                                  
Bodnar     Nu are bursa                                                         
Pintescu   250                                                                  
Arhire     Nu are bursa                                                         

NUME       bursa                                                                
---------- ----------------------------------------                             
Cobzaru    350                                                                  
Bucur      Nu are bursa                                                         

13 rows selected.

SQL> SELECT 100+NVL(bursa,0) FROM studenti;

100+NVL(BURSA,0)                                                                
----------------                                                                
             100                                                                
             100                                                                
             550                                                                
             100                                                                
             100                                                                
             100                                                                
             450                                                                
             450                                                                
             100                                                                
             350                                                                
             100                                                                

100+NVL(BURSA,0)                                                                
----------------                                                                
             450                                                                
             100                                                                

13 rows selected.

SQL> spool off
