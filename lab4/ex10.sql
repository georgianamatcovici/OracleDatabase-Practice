SQL> select s.nume, s.prenume, p.nume, p.prenume from studenti s join profesori p on lentgh(trim(s.nume))=length(trim(p.nume));
select s.nume, s.prenume, p.nume, p.prenume from studenti s join profesori p on lentgh(trim(s.nume))=length(trim(p.nume))
                                                                                *
ERROR at line 1:
ORA-00904: "LENTGH": invalid identifier 


SQL> select s.nume, s.prenume, p.nume, p.prenume from studenti s join profesori p on length(trim(s.nume))=length(trim(p.nume));

NUME       PRENUME    NUME       PRENUME                                                                                                                                                                
---------- ---------- ---------- ----------                                                                                                                                                             
Arhire     Alexandra  Buraga     Sabin                                                                                                                                                                  
Bodnar     Ioana      Buraga     Sabin                                                                                                                                                                  
Archip     Andrada    Buraga     Sabin                                                                                                                                                                  
Bodnar     Ioana      Buraga     Sabin                                                                                                                                                                  
Arhire     Raluca     Buraga     Sabin                                                                                                                                                                  
Arhire     Alexandra  Lucanu     Dorel                                                                                                                                                                  
Bodnar     Ioana      Lucanu     Dorel                                                                                                                                                                  
Archip     Andrada    Lucanu     Dorel                                                                                                                                                                  
Bodnar     Ioana      Lucanu     Dorel                                                                                                                                                                  
Arhire     Raluca     Lucanu     Dorel                                                                                                                                                                  
Arhire     Alexandra  Tiplea     Laurentiu                                                                                                                                                              
Bodnar     Ioana      Tiplea     Laurentiu                                                                                                                                                              
Archip     Andrada    Tiplea     Laurentiu                                                                                                                                                              
Bodnar     Ioana      Tiplea     Laurentiu                                                                                                                                                              
Arhire     Raluca     Tiplea     Laurentiu                                                                                                                                                              
Bucur      Andreea    Iacob      Florin                                                                                                                                                                 
Cobzaru    George     Breaban    Mihaela                                                                                                                                                                
Panaite    Alexandru  Breaban    Mihaela                                                                                                                                                                
Antonie    Ioana      Breaban    Mihaela                                                                                                                                                                
Popescu    Bogdan     Breaban    Mihaela                                                                                                                                                                
Arhire     Alexandra  Varlan     Cosmin                                                                                                                                                                 
Bodnar     Ioana      Varlan     Cosmin                                                                                                                                                                 
Archip     Andrada    Varlan     Cosmin                                                                                                                                                                 
Bodnar     Ioana      Varlan     Cosmin                                                                                                                                                                 
Arhire     Raluca     Varlan     Cosmin                                                                                                                                                                 
Cobzaru    George     Ciobaca    Stefan                                                                                                                                                                 
Panaite    Alexandru  Ciobaca    Stefan                                                                                                                                                                 
Antonie    Ioana      Ciobaca    Stefan                                                                                                                                                                 
Popescu    Bogdan     Ciobaca    Stefan                                                                                                                                                                 
Ciobotariu Ciprian    Captarencu Oana                                                                                                                                                                   
Prelipcean Radu       Captarencu Oana                                                                                                                                                                   
Bucur      Andreea    Moruz      Alexandru                                                                                                                                                              
Pintescu   Andrei     PASCARIU   GEORGIANA                                                                                                                                                              
Bucur      Andreea    LAZAR      LUCIAN                                                                                                                                                                 
Arhire     Alexandra  Kristo     ROBERT                                                                                                                                                                 
Bodnar     Ioana      Kristo     ROBERT                                                                                                                                                                 
Archip     Andrada    Kristo     ROBERT                                                                                                                                                                 
Bodnar     Ioana      Kristo     ROBERT                                                                                                                                                                 
Arhire     Raluca     Kristo     ROBERT                                                                                                                                                                 
Cobzaru    George     Nastasa    Laura                                                                                                                                                                  
Panaite    Alexandru  Nastasa    Laura                                                                                                                                                                  
Antonie    Ioana      Nastasa    Laura                                                                                                                                                                  
Popescu    Bogdan     Nastasa    Laura                                                                                                                                                                  
Bucur      Andreea    PASAT      Tiberiu                                                                                                                                                                

44 rows selected.

SQL> spool off
