SQL> select s.nume, s.prenume, nvl(avg(n.valoare),null) from studenti s left join note n on s.nr_matricol=n.nr_matricol group by s.nr_matricol, s.nume, s.prenume order by avg(n.valoare) desc;

NUME       PRENUME    NVL(AVG(N.VALOARE),NULL)                                  
---------- ---------- ------------------------                                  
Pintescu   Andrei                                                               
Cobzaru    George                                                               
Arhire     Alexandra                                                            
Bucur      Andreea                                                              
Bodnar     Ioana                    9.66666667                                  
Panaite    Alexandru                         9                                  
Popescu    Bogdan                          8.5                                  
Bodnar     Ioana                             8                                  
Antonie    Ioana                    7.66666667                                  
Ciobotariu Ciprian                           7                                  
Arhire     Raluca                   6.33333333                                  

NUME       PRENUME    NVL(AVG(N.VALOARE),NULL)                                  
---------- ---------- ------------------------                                  
Prelipcean Radu                     5.83333333                                  
Archip     Andrada                  5.66666667                                  

13 rows selected.

SQL> spool off
