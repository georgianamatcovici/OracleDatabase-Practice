SQL> select p.nume, p.prenume from profesori p join didactic d on p.id_prof=d.id_prof join cursuri c on d.id_curs=c.id_curs;

NUME       PRENUME                                                                                                                                                                                      
---------- ----------                                                                                                                                                                                   
Masalagiu  Cristian                                                                                                                                                                                     
Buraga     Sabin                                                                                                                                                                                        
Lucanu     Dorel                                                                                                                                                                                        
Tiplea     Laurentiu                                                                                                                                                                                    
Iacob      Florin                                                                                                                                                                                       
Breaban    Mihaela                                                                                                                                                                                      
Varlan     Cosmin                                                                                                                                                                                       
Varlan     Cosmin                                                                                                                                                                                       
Frasinaru  Cristian                                                                                                                                                                                     
Ciobaca    Stefan                                                                                                                                                                                       

10 rows selected.

SQL> select p.nume, p.prenume, c.curs from profesori p join didactic d on p.id_prof=d.id_prof join cursuri c on d.id_curs=c.id_curs;
select p.nume, p.prenume, c.curs from profesori p join didactic d on p.id_prof=d.id_prof join cursuri c on d.id_curs=c.id_curs
                          *
ERROR at line 1:
ORA-00904: "C"."CURS": invalid identifier 


SQL> select p.nume, p.prenume, c.titlu_curs from profesori p join didactic d on p.id_prof=d.id_prof join cursuri c on d.id_curs=c.id_curs;

NUME       PRENUME    TITLU_CURS                                                                                                                                                                        
---------- ---------- ---------------                                                                                                                                                                   
Masalagiu  Cristian   Logica                                                                                                                                                                            
Buraga     Sabin      Tehnologii Web                                                                                                                                                                    
Lucanu     Dorel      OOP                                                                                                                                                                               
Tiplea     Laurentiu  Sec. Info.                                                                                                                                                                        
Iacob      Florin     Matematica                                                                                                                                                                        
Breaban    Mihaela    BD                                                                                                                                                                                
Varlan     Cosmin     DSFUM                                                                                                                                                                             
Varlan     Cosmin     BD                                                                                                                                                                                
Frasinaru  Cristian   Java                                                                                                                                                                              
Ciobaca    Stefan     Logica                                                                                                                                                                            

10 rows selected.

SQL> select nume, prenume from profesori;

NUME       PRENUME                                                                                                                                                                                      
---------- ----------                                                                                                                                                                                   
Masalagiu  Cristian                                                                                                                                                                                     
Buraga     Sabin                                                                                                                                                                                        
Lucanu     Dorel                                                                                                                                                                                        
Tiplea     Laurentiu                                                                                                                                                                                    
Iacob      Florin                                                                                                                                                                                       
Breaban    Mihaela                                                                                                                                                                                      
Varlan     Cosmin                                                                                                                                                                                       
Frasinaru  Cristian                                                                                                                                                                                     
Ciobaca    Stefan                                                                                                                                                                                       
Captarencu Oana                                                                                                                                                                                         
Moruz      Alexandru                                                                                                                                                                                    
PASCARIU   GEORGIANA                                                                                                                                                                                    
LAZAR      LUCIAN                                                                                                                                                                                       
Kristo     ROBERT                                                                                                                                                                                       
Nastasa    Laura                                                                                                                                                                                        
PASAT      Tiberiu                                                                                                                                                                                      

16 rows selected.

SQL> select p.nume, p.prenume, c.titlu_curs from profesori p join didactic d on p.id_prof=d.id_prof left join cursuri c on d.id_curs=c.id_curs;

NUME       PRENUME    TITLU_CURS                                                                                                                                                                        
---------- ---------- ---------------                                                                                                                                                                   
Masalagiu  Cristian   Logica                                                                                                                                                                            
Buraga     Sabin      Tehnologii Web                                                                                                                                                                    
Lucanu     Dorel      OOP                                                                                                                                                                               
Tiplea     Laurentiu  Sec. Info.                                                                                                                                                                        
Iacob      Florin     Matematica                                                                                                                                                                        
Breaban    Mihaela    BD                                                                                                                                                                                
Varlan     Cosmin     DSFUM                                                                                                                                                                             
Varlan     Cosmin     BD                                                                                                                                                                                
Frasinaru  Cristian   Java                                                                                                                                                                              
Ciobaca    Stefan     Logica                                                                                                                                                                            

10 rows selected.

SQL> select p.nume, p.prenume, c.titlu_curs from profesori p left join didactic d on p.id_prof=d.id_prof left join cursuri c on d.id_curs=c.id_curs;

NUME       PRENUME    TITLU_CURS                                                                                                                                                                        
---------- ---------- ---------------                                                                                                                                                                   
Ciobaca    Stefan     Logica                                                                                                                                                                            
Masalagiu  Cristian   Logica                                                                                                                                                                            
Iacob      Florin     Matematica                                                                                                                                                                        
Lucanu     Dorel      OOP                                                                                                                                                                               
Varlan     Cosmin     BD                                                                                                                                                                                
Breaban    Mihaela    BD                                                                                                                                                                                
Frasinaru  Cristian   Java                                                                                                                                                                              
Buraga     Sabin      Tehnologii Web                                                                                                                                                                    
Tiplea     Laurentiu  Sec. Info.                                                                                                                                                                        
Varlan     Cosmin     DSFUM                                                                                                                                                                             
PASCARIU   GEORGIANA                                                                                                                                                                                    
Nastasa    Laura                                                                                                                                                                                        
Kristo     ROBERT                                                                                                                                                                                       
LAZAR      LUCIAN                                                                                                                                                                                       
PASAT      Tiberiu                                                                                                                                                                                      
Captarencu Oana                                                                                                                                                                                         
Moruz      Alexandru                                                                                                                                                                                    

17 rows selected.

SQL> select p.nume, p.prenume, c.titlu_curs from profesori p left join didactic d on p.id_prof=d.id_prof join cursuri c on d.id_curs=c.id_curs;

NUME       PRENUME    TITLU_CURS                                                                                                                                                                        
---------- ---------- ---------------                                                                                                                                                                   
Masalagiu  Cristian   Logica                                                                                                                                                                            
Buraga     Sabin      Tehnologii Web                                                                                                                                                                    
Lucanu     Dorel      OOP                                                                                                                                                                               
Tiplea     Laurentiu  Sec. Info.                                                                                                                                                                        
Iacob      Florin     Matematica                                                                                                                                                                        
Breaban    Mihaela    BD                                                                                                                                                                                
Varlan     Cosmin     DSFUM                                                                                                                                                                             
Varlan     Cosmin     BD                                                                                                                                                                                
Frasinaru  Cristian   Java                                                                                                                                                                              
Ciobaca    Stefan     Logica                                                                                                                                                                            

10 rows selected.

SQL> select p.nume, p.prenume, c.titlu_curs from profesori p left join didactic d on p.id_prof=d.id_prof left join cursuri c on d.id_curs=c.id_curs;

NUME       PRENUME    TITLU_CURS                                                                                                                                                                        
---------- ---------- ---------------                                                                                                                                                                   
Ciobaca    Stefan     Logica                                                                                                                                                                            
Masalagiu  Cristian   Logica                                                                                                                                                                            
Iacob      Florin     Matematica                                                                                                                                                                        
Lucanu     Dorel      OOP                                                                                                                                                                               
Varlan     Cosmin     BD                                                                                                                                                                                
Breaban    Mihaela    BD                                                                                                                                                                                
Frasinaru  Cristian   Java                                                                                                                                                                              
Buraga     Sabin      Tehnologii Web                                                                                                                                                                    
Tiplea     Laurentiu  Sec. Info.                                                                                                                                                                        
Varlan     Cosmin     DSFUM                                                                                                                                                                             
PASCARIU   GEORGIANA                                                                                                                                                                                    
Nastasa    Laura                                                                                                                                                                                        
Kristo     ROBERT                                                                                                                                                                                       
LAZAR      LUCIAN                                                                                                                                                                                       
PASAT      Tiberiu                                                                                                                                                                                      
Captarencu Oana                                                                                                                                                                                         
Moruz      Alexandru                                                                                                                                                                                    

17 rows selected.

SQL> select p.nume, p.prenume, nvl(c.titlu_curs, 'nu tine curs') from profesori p left join didactic d on p.id_prof=d.id_prof left join cursuri c on d.id_curs=c.id_curs;

NUME       PRENUME    NVL(C.TITLU_CUR                                                                                                                                                                   
---------- ---------- ---------------                                                                                                                                                                   
Ciobaca    Stefan     Logica                                                                                                                                                                            
Masalagiu  Cristian   Logica                                                                                                                                                                            
Iacob      Florin     Matematica                                                                                                                                                                        
Lucanu     Dorel      OOP                                                                                                                                                                               
Varlan     Cosmin     BD                                                                                                                                                                                
Breaban    Mihaela    BD                                                                                                                                                                                
Frasinaru  Cristian   Java                                                                                                                                                                              
Buraga     Sabin      Tehnologii Web                                                                                                                                                                    
Tiplea     Laurentiu  Sec. Info.                                                                                                                                                                        
Varlan     Cosmin     DSFUM                                                                                                                                                                             
PASCARIU   GEORGIANA  nu tine curs                                                                                                                                                                      
Nastasa    Laura      nu tine curs                                                                                                                                                                      
Kristo     ROBERT     nu tine curs                                                                                                                                                                      
LAZAR      LUCIAN     nu tine curs                                                                                                                                                                      
PASAT      Tiberiu    nu tine curs                                                                                                                                                                      
Captarencu Oana       nu tine curs                                                                                                                                                                      
Moruz      Alexandru  nu tine curs                                                                                                                                                                      

17 rows selected.

SQL> spool off
