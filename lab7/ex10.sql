SQL> select s.nume, s.prenume, c.titlu_curs from studenti s join note n on s.nr_matricol=n.nr_matricol join cursuri c from n.id_curs=c.id_curs where (c.id_curs, n.valoare) in (select c.id_curs, max(n.valoare) from cursuri c join note n on c.id_curs=n.id_curs group by c.id_curs);
select s.nume, s.prenume, c.titlu_curs from studenti s join note n on s.nr_matricol=n.nr_matricol join cursuri c from n.id_curs=c.id_curs where (c.id_curs, n.valoare) in (select c.id_curs, max(n.valoare) from cursuri c join note n on c.id_curs=n.id_curs group by c.id_curs)
                                                                                                                 *
ERROR at line 1:
ORA-00905: missing keyword 


SQL> select s.nume, s.prenume, c.titlu_curs from studenti s join note n on s.nr_matricol=n.nr_matricol join cursuri c on n.id_curs=c.id_curs where (c.id_curs, n.valoare) in (select c.id_curs, max(n.valoare) from cursuri c join note n on c.id_curs=n.id_curs group by c.id_curs);

NUME       PRENUME    TITLU_CURS                                                
---------- ---------- ---------------                                           
Popescu    Bogdan     OOP                                                       
Antonie    Ioana      BD                                                        
Arhire     Raluca     OOP                                                       
Panaite    Alexandru  Logica                                                    
Panaite    Alexandru  OOP                                                       
Panaite    Alexandru  BD                                                        
Panaite    Alexandru  Java                                                      
Panaite    Alexandru  Tehnologii Web                                            
Bodnar     Ioana      Logica                                                    
Bodnar     Ioana      Matematica                                                
Popescu    Bogdan     Inv. automata                                             

NUME       PRENUME    TITLU_CURS                                                
---------- ---------- ---------------                                           
Popescu    Bogdan     Inv. automata                                             
Prelipcean Radu       Inv. automata                                             
Prelipcean Radu       Inv. automata                                             
Antonie    Ioana      Inv. automata                                             
Antonie    Ioana      Inv. automata                                             
Arhire     Raluca     Inv. automata                                             
Arhire     Raluca     Inv. automata                                             
Panaite    Alexandru  Inv. automata                                             
Panaite    Alexandru  Inv. automata                                             

20 rows selected.

SQL> select s.nume, s.prenume, c.titlu_curs, n.valoare from studenti s join note n on s.nr_matricol=n.nr_matricol join cursuri c on n.id_curs=c.id_curs where (c.id_curs, n.valoare) in (select c.id_curs, max(n.valoare) from cursuri c join note n on c.id_curs=n.id_curs group by c.id_curs);

NUME       PRENUME    TITLU_CURS         VALOARE                                
---------- ---------- --------------- ----------                                
Popescu    Bogdan     OOP                     10                                
Antonie    Ioana      BD                      10                                
Arhire     Raluca     OOP                     10                                
Panaite    Alexandru  Logica                  10                                
Panaite    Alexandru  OOP                     10                                
Panaite    Alexandru  BD                      10                                
Panaite    Alexandru  Java                     8                                
Panaite    Alexandru  Tehnologii Web           9                                
Bodnar     Ioana      Logica                  10                                
Bodnar     Ioana      Matematica              10                                
Popescu    Bogdan     Inv. automata           10                                

NUME       PRENUME    TITLU_CURS         VALOARE                                
---------- ---------- --------------- ----------                                
Popescu    Bogdan     Inv. automata           10                                
Prelipcean Radu       Inv. automata           10                                
Prelipcean Radu       Inv. automata           10                                
Antonie    Ioana      Inv. automata           10                                
Antonie    Ioana      Inv. automata           10                                
Arhire     Raluca     Inv. automata           10                                
Arhire     Raluca     Inv. automata           10                                
Panaite    Alexandru  Inv. automata           10                                
Panaite    Alexandru  Inv. automata           10                                

20 rows selected.

SQL> spool off
