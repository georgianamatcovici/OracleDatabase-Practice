SQL> select nvl(p.nume, 'Nu are alocat profesor'), p.prenume, titlu_curs from profesori p right outer join didactic d on p.id_prof=d.id_prof right outer join cursuri c on d.id_curs=c.id_curs;

NVL(P.NUME,'NUAREALOCA PRENUME    TITLU_CURS                                                                                                                                                            
---------------------- ---------- ---------------                                                                                                                                                       
Masalagiu              Cristian   Logica                                                                                                                                                                
Buraga                 Sabin      Tehnologii Web                                                                                                                                                        
Lucanu                 Dorel      OOP                                                                                                                                                                   
Tiplea                 Laurentiu  Sec. Info.                                                                                                                                                            
Iacob                  Florin     Matematica                                                                                                                                                            
Breaban                Mihaela    BD                                                                                                                                                                    
Varlan                 Cosmin     DSFUM                                                                                                                                                                 
Varlan                 Cosmin     BD                                                                                                                                                                    
Frasinaru              Cristian   Java                                                                                                                                                                  
Ciobaca                Stefan     Logica                                                                                                                                                                
Nu are alocat profesor            Limbaje formale                                                                                                                                                       

11 rows selected.

SQL> spool off
