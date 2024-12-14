SQL> select  to_char(data_notare, 'Day'), count(*) from note group by to_char(data_notare, 'Day') order by to_char(data_notare, 'Day');

TO_CHAR(DATA_NOTARE,'DAY')             COUNT(*)                                 
------------------------------------ ----------                                 
Friday                                        3                                 
Monday                                        4                                 
Saturday                                      5                                 
Sunday                                        9                                 
Thursday                                      1                                 
Tuesday                                      12                                 
Wednesday                                     8                                 

7 rows selected.

SQL> select  to_char(data_notare, 'Day'), count(*) from note group by to_char(data_notare, 'Day') order by to_number(to_char(data_notare, 'D'));
select  to_char(data_notare, 'Day'), count(*) from note group by to_char(data_notare, 'Day') order by to_number(to_char(data_notare, 'D'))
                                                                                                                        *
ERROR at line 1:
ORA-00979: not a GROUP BY expression 


SQL> select  to_char(data_notare, 'Day'), count(*) from note group by to_char(data_notare, 'Day') order by to_char(data_notare, 'Day');

TO_CHAR(DATA_NOTARE,'DAY')             COUNT(*)                                 
------------------------------------ ----------                                 
Friday                                        3                                 
Monday                                        4                                 
Saturday                                      5                                 
Sunday                                        9                                 
Thursday                                      1                                 
Tuesday                                      12                                 
Wednesday                                     8                                 

7 rows selected.

SQL> select  to_char(data_notare, 'Day'), count(*) from note group by to_char(data_notare, 'Day') order by to_char(data_notare, 'D');
select  to_char(data_notare, 'Day'), count(*) from note group by to_char(data_notare, 'Day') order by to_char(data_notare, 'D')
                                                                                                              *
ERROR at line 1:
ORA-00979: not a GROUP BY expression 


SQL> select  to_char(data_notare, 'Day'), count(*) from note group by to_char(data_notare, 'Day') order by to_char(data_notare, 'D');
select  to_char(data_notare, 'Day'), count(*) from note group by to_char(data_notare, 'Day') order by to_char(data_notare, 'D')
                                                                                                              *
ERROR at line 1:
ORA-00979: not a GROUP BY expression 


SQL> select  to_char(data_notare, 'Day'), count(*) from note group by to_char(data_notare, 'Day') order by to_char(data_notare, 'DD');
select  to_char(data_notare, 'Day'), count(*) from note group by to_char(data_notare, 'Day') order by to_char(data_notare, 'DD')
                                                                                                              *
ERROR at line 1:
ORA-00979: not a GROUP BY expression 


SQL> select  to_char(data_notare, 'Day'), count(*) from note group by to_char(data_notare, 'Day') order by to_char(data_notare, 'Day');

TO_CHAR(DATA_NOTARE,'DAY')             COUNT(*)                                 
------------------------------------ ----------                                 
Friday                                        3                                 
Monday                                        4                                 
Saturday                                      5                                 
Sunday                                        9                                 
Thursday                                      1                                 
Tuesday                                      12                                 
Wednesday                                     8                                 

7 rows selected.

SQL> select  to_char(data_notare, 'D'), count(*) from note group by to_char(data_notare, 'D') order by to_char(data_notare, 'Day');
select  to_char(data_notare, 'D'), count(*) from note group by to_char(data_notare, 'D') order by to_char(data_notare, 'Day')
                                                                                                          *
ERROR at line 1:
ORA-00979: not a GROUP BY expression 


SQL> select  to_char(data_notare, 'D'), count(*) from note group by to_char(data_notare, 'D') order by to_char(data_notare, 'D');

T   COUNT(*)                                                                    
- ----------                                                                    
1          9                                                                    
2          4                                                                    
3         12                                                                    
4          8                                                                    
5          1                                                                    
6          3                                                                    
7          5                                                                    

7 rows selected.

SQL> select  to_char(data_notare, 'Day'), count(*) from note order by to_char(data_notare, 'Day');
select  to_char(data_notare, 'Day'), count(*) from note order by to_char(data_notare, 'Day')
                *
ERROR at line 1:
ORA-00937: not a single-group group function 


SQL> select  to_char(data_notare, 'Day') from note order by to_char(data_notare, 'Day');

TO_CHAR(DATA_NOTARE,'DAY')                                                      
------------------------------------                                            
Friday                                                                          
Friday                                                                          
Friday                                                                          
Monday                                                                          
Monday                                                                          
Monday                                                                          
Monday                                                                          
Saturday                                                                        
Saturday                                                                        
Saturday                                                                        
Saturday                                                                        

TO_CHAR(DATA_NOTARE,'DAY')                                                      
------------------------------------                                            
Saturday                                                                        
Sunday                                                                          
Sunday                                                                          
Sunday                                                                          
Sunday                                                                          
Sunday                                                                          
Sunday                                                                          
Sunday                                                                          
Sunday                                                                          
Sunday                                                                          
Thursday                                                                        

TO_CHAR(DATA_NOTARE,'DAY')                                                      
------------------------------------                                            
Tuesday                                                                         
Tuesday                                                                         
Tuesday                                                                         
Tuesday                                                                         
Tuesday                                                                         
Tuesday                                                                         
Tuesday                                                                         
Tuesday                                                                         
Tuesday                                                                         
Tuesday                                                                         
Tuesday                                                                         

TO_CHAR(DATA_NOTARE,'DAY')                                                      
------------------------------------                                            
Tuesday                                                                         
Wednesday                                                                       
Wednesday                                                                       
Wednesday                                                                       
Wednesday                                                                       
Wednesday                                                                       
Wednesday                                                                       
Wednesday                                                                       
Wednesday                                                                       

42 rows selected.

SQL> select  to_char(data_notare, 'Day') from note order by to_char(data_notare, 'D');

TO_CHAR(DATA_NOTARE,'DAY')                                                      
------------------------------------                                            
Sunday                                                                          
Sunday                                                                          
Sunday                                                                          
Sunday                                                                          
Sunday                                                                          
Sunday                                                                          
Sunday                                                                          
Sunday                                                                          
Sunday                                                                          
Monday                                                                          
Monday                                                                          

TO_CHAR(DATA_NOTARE,'DAY')                                                      
------------------------------------                                            
Monday                                                                          
Monday                                                                          
Tuesday                                                                         
Tuesday                                                                         
Tuesday                                                                         
Tuesday                                                                         
Tuesday                                                                         
Tuesday                                                                         
Tuesday                                                                         
Tuesday                                                                         
Tuesday                                                                         

TO_CHAR(DATA_NOTARE,'DAY')                                                      
------------------------------------                                            
Tuesday                                                                         
Tuesday                                                                         
Tuesday                                                                         
Wednesday                                                                       
Wednesday                                                                       
Wednesday                                                                       
Wednesday                                                                       
Wednesday                                                                       
Wednesday                                                                       
Wednesday                                                                       
Wednesday                                                                       

TO_CHAR(DATA_NOTARE,'DAY')                                                      
------------------------------------                                            
Thursday                                                                        
Friday                                                                          
Friday                                                                          
Friday                                                                          
Saturday                                                                        
Saturday                                                                        
Saturday                                                                        
Saturday                                                                        
Saturday                                                                        

42 rows selected.

SQL> select  to_char(data_notare, 'Day') from note order by to_number(to_char(data_notare, 'D'));

TO_CHAR(DATA_NOTARE,'DAY')                                                      
------------------------------------                                            
Sunday                                                                          
Sunday                                                                          
Sunday                                                                          
Sunday                                                                          
Sunday                                                                          
Sunday                                                                          
Sunday                                                                          
Sunday                                                                          
Sunday                                                                          
Monday                                                                          
Monday                                                                          

TO_CHAR(DATA_NOTARE,'DAY')                                                      
------------------------------------                                            
Monday                                                                          
Monday                                                                          
Tuesday                                                                         
Tuesday                                                                         
Tuesday                                                                         
Tuesday                                                                         
Tuesday                                                                         
Tuesday                                                                         
Tuesday                                                                         
Tuesday                                                                         
Tuesday                                                                         

TO_CHAR(DATA_NOTARE,'DAY')                                                      
------------------------------------                                            
Tuesday                                                                         
Tuesday                                                                         
Tuesday                                                                         
Wednesday                                                                       
Wednesday                                                                       
Wednesday                                                                       
Wednesday                                                                       
Wednesday                                                                       
Wednesday                                                                       
Wednesday                                                                       
Wednesday                                                                       

TO_CHAR(DATA_NOTARE,'DAY')                                                      
------------------------------------                                            
Thursday                                                                        
Friday                                                                          
Friday                                                                          
Friday                                                                          
Saturday                                                                        
Saturday                                                                        
Saturday                                                                        
Saturday                                                                        
Saturday                                                                        

42 rows selected.

SQL> select  to_char(data_notare, 'Day'), count(*) from note group by to_char(data_notare, 'Day') order by to_number(to_char(data_notare, 'D'));
select  to_char(data_notare, 'Day'), count(*) from note group by to_char(data_notare, 'Day') order by to_number(to_char(data_notare, 'D'))
                                                                                                                        *
ERROR at line 1:
ORA-00979: not a GROUP BY expression 


SQL> select  to_char(data_notare, 'Day'), count(*) from note group by to_char(data_notare, 'Day') order by to_number(to_char(data_notare, 'Day'));
select  to_char(data_notare, 'Day'), count(*) from note group by to_char(data_notare, 'Day') order by to_number(to_char(data_notare, 'Day'))
                                                                 *
ERROR at line 1:
ORA-01722: invalid number 


SQL> select  to_char(data_notare, 'Day'), count(*) from note group by to_char(data_notare, 'Day') order by (to_char(data_notare, 'Day'));

TO_CHAR(DATA_NOTARE,'DAY')             COUNT(*)                                 
------------------------------------ ----------                                 
Friday                                        3                                 
Monday                                        4                                 
Saturday                                      5                                 
Sunday                                        9                                 
Thursday                                      1                                 
Tuesday                                      12                                 
Wednesday                                     8                                 

7 rows selected.

SQL> select  to_char(data_notare, 'Day'), to_number(to_char(data_notare, 'D')), count(*) from note group by to_char(data_notare, 'Day'),  to_number(to_char(data_notare, order by (to_char(data_notare, 'Day'));
select  to_char(data_notare, 'Day'), to_number(to_char(data_notare, 'D')), count(*) from note group by to_char(data_notare, 'Day'),  to_number(to_char(data_notare, order by (to_char(data_notare, 'Day'))
                                                                                                                                                                    *
ERROR at line 1:
ORA-00936: missing expression 


SQL> select  to_char(data_notare, 'Day'), to_number(to_char(data_notare, 'D')), count(*) from note group by to_char(data_notare, 'Day'),  to_number(to_char(data_notare, 'D')) order by to_number(to_char(data_notare, 'Day'));
select  to_char(data_notare, 'Day'), to_number(to_char(data_notare, 'D')), count(*) from note group by to_char(data_notare, 'Day'),  to_number(to_char(data_notare, 'D')) order by to_number(to_char(data_notare, 'Day'))
                                                                                                       *
ERROR at line 1:
ORA-01722: invalid number 


SQL> select  to_char(data_notare, 'Day'), to_number(to_char(data_notare, 'D')), count(*) from note group by to_char(data_notare, 'Day'),  to_number(to_char(data_notare, 'D')) order by to_number(to_char(data_notare, 'D'));

TO_CHAR(DATA_NOTARE,'DAY')           TO_NUMBER(TO_CHAR(DATA_NOTARE,'D'))        
------------------------------------ -----------------------------------        
  COUNT(*)                                                                      
----------                                                                      
Sunday                                                                 1        
         9                                                                      
                                                                                
Monday                                                                 2        
         4                                                                      
                                                                                
Tuesday                                                                3        
        12                                                                      
                                                                                

TO_CHAR(DATA_NOTARE,'DAY')           TO_NUMBER(TO_CHAR(DATA_NOTARE,'D'))        
------------------------------------ -----------------------------------        
  COUNT(*)                                                                      
----------                                                                      
Wednesday                                                              4        
         8                                                                      
                                                                                
Thursday                                                               5        
         1                                                                      
                                                                                
Friday                                                                 6        
         3                                                                      
                                                                                

TO_CHAR(DATA_NOTARE,'DAY')           TO_NUMBER(TO_CHAR(DATA_NOTARE,'D'))        
------------------------------------ -----------------------------------        
  COUNT(*)                                                                      
----------                                                                      
Saturday                                                               7        
         5                                                                      
                                                                                

7 rows selected.

SQL> select  to_char(data_notare, 'Day') as Zi, to_number(to_char(data_notare, 'D')) as Nr_zi, count(*) from note group by to_char(data_notare, 'Day'),  to_number(to_char(data_notare, 'D')) order by to_number(to_char(data_notare, 'D'));

ZI                                        NR_ZI   COUNT(*)                      
------------------------------------ ---------- ----------                      
Sunday                                        1          9                      
Monday                                        2          4                      
Tuesday                                       3         12                      
Wednesday                                     4          8                      
Thursday                                      5          1                      
Friday                                        6          3                      
Saturday                                      7          5                      

7 rows selected.

SQL> select  to_char(data_notare, 'Day') as Zi, count(*) from note group by to_char(data_notare, 'Day'),  to_number(to_char(data_notare, 'D')) order by to_number(to_char(data_notare, 'D'));

ZI                                     COUNT(*)                                 
------------------------------------ ----------                                 
Sunday                                        9                                 
Monday                                        4                                 
Tuesday                                      12                                 
Wednesday                                     8                                 
Thursday                                      1                                 
Friday                                        3                                 
Saturday                                      5                                 

7 rows selected.

SQL> spool off
