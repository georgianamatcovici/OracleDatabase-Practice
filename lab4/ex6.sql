SQL> select nvl(p.nume, 'Nu are alocat profesor'), p.prenume, nvl(titlu_curs, 'nu tine curs') from profesori p full outer join didactic d on p.id_prof=d.id_prof full outer join cursuri c on d.id_curs=c.id_curs;

NVL(P.NUME,'NUAREALOCA PRENUME    NVL(TITLU_CURS,                                                                                                                                                       
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
Captarencu             Oana       nu tine curs                                                                                                                                                          
Moruz                  Alexandru  nu tine curs                                                                                                                                                          
PASCARIU               GEORGIANA  nu tine curs                                                                                                                                                          
LAZAR                  LUCIAN     nu tine curs                                                                                                                                                          
Kristo                 ROBERT     nu tine curs                                                                                                                                                          
Nastasa                Laura      nu tine curs                                                                                                                                                          
PASAT                  Tiberiu    nu tine curs                                                                                                                                                          
Nu are alocat profesor            Limbaje formale                                                                                                                                                       

18 rows selected.

SQL> spool off
