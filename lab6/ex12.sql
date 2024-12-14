SQL> select s.nume, s.prenume, nvl(avg(n.valoare),0) from studenti s left join note n on s.nr_matricol=n.nr_matricol group by s.nr_matricol, s.nume, s.prenume having nvl(avg(n.valoare), 0)>8 order by nvl(avg(n.valoare),0) desc;

NUME       PRENUME    NVL(AVG(N.VALOARE),0)                                     
---------- ---------- ---------------------                                     
Bodnar     Ioana                 9.66666667                                     
Panaite    Alexandru                      9                                     
Popescu    Bogdan                       8.5                                     

SQL> spool off
