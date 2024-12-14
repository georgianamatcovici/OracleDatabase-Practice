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
