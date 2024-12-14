SQL> select nume, prenume from studenti where bursa=(select max(bursa) from studenti);

NUME       PRENUME                                                              
---------- ----------                                                           
Antonie    Ioana                                                                

SQL> spool off
