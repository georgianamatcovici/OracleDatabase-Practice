SQL> select sum(bursa) from studenti;

SUM(BURSA)                                                                      
----------                                                                      
      1750                                                                      

SQL> select sum(nvl(bursa, 0)) from studenti;

SUM(NVL(BURSA,0))                                                               
-----------------                                                               
             1750                                                               

SQL> spool off
