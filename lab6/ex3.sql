SQL> select count(*), count(bursa) as bursieri from studenti group by an, grupa order by an asc, grupa asc;

  COUNT(*)   BURSIERI                                                           
---------- ----------                                                           
         3          2                                                           
         1          0                                                           
         3          2                                                           
         1          0                                                           
         3          1                                                           
         1          0                                                           
         1          0                                                           

7 rows selected.

SQL> select an, grupa, count(*), count(bursa) as bursieri from studenti group by an, grupa order by an asc, grupa asc;

        AN GR   COUNT(*)   BURSIERI                                             
---------- -- ---------- ----------                                             
         1 B1          3          2                                             
         1 B2          1          0                                             
         2 A1          3          2                                             
         2 B2          1          0                                             
         3 A2          3          1                                             
         3 A4          1          0                                             
         3 B3          1          0                                             

7 rows selected.

SQL> spool off
