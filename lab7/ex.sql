SQL> select nume, count(valoare) from profesori p left join didactic d on p.id_prof=d.id_prof left join note n on d.id_curs=n.id_curs and valoare<5 group by nume;

NUME       COUNT(VALOARE)                                                       
---------- --------------                                                       
Lucanu                  1                                                       
PASAT                   0                                                       
Ciobaca                 0                                                       
Buraga                  2                                                       
Breaban                 1                                                       
Nastasa                 0                                                       
Masalagiu               0                                                       
Frasinaru               1                                                       
Captarencu              0                                                       
PASCARIU                0                                                       
LAZAR                   0                                                       

NUME       COUNT(VALOARE)                                                       
---------- --------------                                                       
Moruz                   0                                                       
Varlan                  1                                                       
Kristo                  0                                                       
Tiplea                  0                                                       
Iacob                   0                                                       

16 rows selected.

SQL> spool off
