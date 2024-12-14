SQL> select nume, prenume, bursa+bursa*0.15 as "Bursa majorata" from studenti where bursa is not null;

NUME       PRENUME    Bursa majorata                                            
---------- ---------- --------------                                            
Antonie    Ioana               517.5                                            
Archip     Andrada             402.5                                            
Ciobotariu Ciprian             402.5                                            
Pintescu   Andrei              287.5                                            
Cobzaru    George              402.5                                            

SQL> spool off
