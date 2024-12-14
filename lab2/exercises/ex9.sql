SQL> select nume, bursa, decode(bursa, 450, 'premiul 1', 350, 'premiul 2', 250, 'premiul 3', 'mentiune') as "Premiu" from studenti;

NUME            BURSA Premiu                                                    
---------- ---------- ---------                                                 
Popescu               mentiune                                                  
Prelipcean            mentiune                                                  
Antonie           450 premiul 1                                                 
Arhire                mentiune                                                  
Panaite               mentiune                                                  
Bodnar                mentiune                                                  
Archip            350 premiul 2                                                 
Ciobotariu        350 premiul 2                                                 
Bodnar                mentiune                                                  
Pintescu          250 premiul 3                                                 
Arhire                mentiune                                                  

NUME            BURSA Premiu                                                    
---------- ---------- ---------                                                 
Cobzaru           350 premiul 2                                                 
Bucur                 mentiune                                                  

13 rows selected.

SQL> spool off;
