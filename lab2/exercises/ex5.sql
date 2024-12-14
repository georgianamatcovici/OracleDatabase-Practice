SQL> 
SQL> describe studenti
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 NR_MATRICOL                               NOT NULL CHAR(6)
 NUME                                               VARCHAR2(10)
 PRENUME                                            VARCHAR2(10)
 AN                                                 NUMBER(1)
 GRUPA                                              CHAR(2)
 BURSA                                              NUMBER(6,2)
 DATA_NASTERE                                       DATE

SQL> clear screen

SQL> describe studenti
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 NR_MATRICOL                               NOT NULL CHAR(6)
 NUME                                               VARCHAR2(10)
 PRENUME                                            VARCHAR2(10)
 AN                                                 NUMBER(1)
 GRUPA                                              CHAR(2)
 BURSA                                              NUMBER(6,2)
 DATA_NASTERE                                       DATE

SQL> select bursa from studenti;

     BURSA                                                                      
----------                                                                      
                                                                                
                                                                                
       450                                                                      
                                                                                
                                                                                
                                                                                
       350                                                                      
       350                                                                      
                                                                                
       250                                                                      
                                                                                

     BURSA                                                                      
----------                                                                      
       350                                                                      
                                                                                

13 rows selected.

SQL> select rtrim(to_char(bursa, '$')) from studenti;

RT                                                                              
--                                                                              
                                                                                
                                                                                
##                                                                              
                                                                                
                                                                                
                                                                                
##                                                                              
##                                                                              
                                                                                
##                                                                              
                                                                                

RT                                                                              
--                                                                              
##                                                                              
                                                                                

13 rows selected.

SQL> select rpad(bursa, 10, '$') from studenti;

RPAD(BURSA,10,'$')                                                              
----------------------------------------                                        
                                                                                
                                                                                
450$$$$$$$                                                                      
                                                                                
                                                                                
                                                                                
350$$$$$$$                                                                      
350$$$$$$$                                                                      
                                                                                
250$$$$$$$                                                                      
                                                                                

RPAD(BURSA,10,'$')                                                              
----------------------------------------                                        
350$$$$$$$                                                                      
                                                                                

13 rows selected.

SQL> spool off
