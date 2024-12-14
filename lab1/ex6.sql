SQL> select nume, prenume, an from studenti where data_nastere LIKE '%95';

NUME       PRENUME            AN                                                
---------- ---------- ----------                                                
Popescu    Bogdan              3                                                
Prelipcean Radu                3                                                
Antonie    Ioana               3                                                
Arhire     Raluca              3                                                
Panaite    Alexandru           3                                                

SQL> select nume, prenume, an from studenti where data_nastere LIKE '%1995';

no rows selected

SQL> select nume, prenume, an from studenti where data_nastere LIKE '%95';

NUME       PRENUME            AN                                                
---------- ---------- ----------                                                
Popescu    Bogdan              3                                                
Prelipcean Radu                3                                                
Antonie    Ioana               3                                                
Arhire     Raluca              3                                                
Panaite    Alexandru           3                                                

SQL> spool off
