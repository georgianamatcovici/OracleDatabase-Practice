SQL> select avg(bursa) from studenti;

AVG(BURSA)                                                                      
----------                                                                      
       350                                                                      

SQL> select avg(nvl(bursa, 0)) from studenti;

AVG(NVL(BURSA,0))                                                               
-----------------                                                               
       134.615385                                                               

SQL> select sum(nvl(bursa, 0))/count(*) from studenti;

SUM(NVL(BURSA,0))/COUNT(*)                                                      
--------------------------                                                      
                134.615385                                                      

SQL> spool off
