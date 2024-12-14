SQL> select an, grupa from studenti where nume='Arhire';

        AN GR                                                                   
---------- --                                                                   
         3 A4                                                                   
         1 B1                                                                   

SQL> select nume, prenume, an, grupa from studenti where (an, grupa) in (select an, grupa from studenti where nume='Arhire');

NUME       PRENUME            AN GR                                             
---------- ---------- ---------- --                                             
Arhire     Raluca              3 A4                                             
Cobzaru    George              1 B1                                             
Arhire     Alexandra           1 B1                                             
Pintescu   Andrei              1 B1                                             

SQL> spool off
