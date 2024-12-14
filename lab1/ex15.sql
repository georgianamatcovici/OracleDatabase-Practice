SQL> select nume, prenume from profesori where prenume like '%n';

no rows selected

SQL> select nume, prenume from profesori where prenume like '%n % ';

NUME       PRENUME                                                              
---------- ----------                                                           
Masalagiu  Cristian                                                             
Buraga     Sabin                                                                
Iacob      Florin                                                               
Varlan     Cosmin                                                               
Frasinaru  Cristian                                                             
Ciobaca    Stefan                                                               

6 rows selected.

SQL> spool off
