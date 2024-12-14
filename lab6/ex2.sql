SQL> select count(*) from studenti group by an, grupa order by an asc, grupa asc;

  COUNT(*)                                                                      
----------                                                                      
         3                                                                      
         1                                                                      
         3                                                                      
         1                                                                      
         3                                                                      
         1                                                                      
         1                                                                      

7 rows selected.

SQL> select an, grupa, count(*) from studenti group by an, grupa order by an asc, grupa asc;

        AN GR   COUNT(*)                                                        
---------- -- ----------                                                        
         1 B1          3                                                        
         1 B2          1                                                        
         2 A1          3                                                        
         2 B2          1                                                        
         3 A2          3                                                        
         3 A4          1                                                        
         3 B3          1                                                        

7 rows selected.

SQL> spool off
