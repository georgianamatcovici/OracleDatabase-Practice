SQL> select 'Studentul ' || s.nume || ' ' || s.prenume || ' a luat nota  ' || n.valoare || ' , pusa de profesorul ' || p.nume || ' ' || as "Note studenti" p.prenume from studenti s join note n on s.nr_matricol=n.nr_matricol join cursuri c on n.id_curs=c.id_curs join didactic d on c.id_curs=d.id_curs join profesori p on d.id_prof=p.id_prof;
select 'Studentul ' || s.nume || ' ' || s.prenume || ' a luat nota  ' || n.valoare || ' , pusa de profesorul ' || p.nume || ' ' || as "Note studenti" p.prenume from studenti s join note n on s.nr_matricol=n.nr_matricol join cursuri c on n.id_curs=c.id_curs join didactic d on c.id_curs=d.id_curs join profesori p on d.id_prof=p.id_prof
                                                                                                                                   *
ERROR at line 1:
ORA-00936: missing expression 


SQL> select 'Studentul ' || s.nume || ' ' || s.prenume || ' a luat nota  ' || n.valoare || ' , pusa de profesorul ' || p.nume || ' ' || p.prenume as "Note studenti" from studenti s join note n on s.nr_matricol=n.nr_matricol join cursuri c on n.id_curs=c.id_curs join didactic d on c.id_curs=d.id_curs join profesori p on d.id_prof=p.id_prof;

Note studenti                                                                                                                                                                                           
--------------------------------------------------------------------------------------------------------------------------------                                                                        
Studentul Popescu Bogdan a luat nota  8 , pusa de profesorul Buraga     Sabin                                                                                                                           
Studentul Popescu Bogdan a luat nota  7 , pusa de profesorul Frasinaru  Cristian                                                                                                                        
Studentul Popescu Bogdan a luat nota  9 , pusa de profesorul Breaban    Mihaela                                                                                                                         
Studentul Popescu Bogdan a luat nota  9 , pusa de profesorul Varlan     Cosmin                                                                                                                          
Studentul Popescu Bogdan a luat nota  10 , pusa de profesorul Lucanu     Dorel                                                                                                                          
Studentul Popescu Bogdan a luat nota  9 , pusa de profesorul Iacob      Florin                                                                                                                          
Studentul Popescu Bogdan a luat nota  8 , pusa de profesorul Masalagiu  Cristian                                                                                                                        
Studentul Popescu Bogdan a luat nota  8 , pusa de profesorul Ciobaca    Stefan                                                                                                                          
Studentul Prelipcean Radu a luat nota  4 , pusa de profesorul Buraga     Sabin                                                                                                                          
Studentul Prelipcean Radu a luat nota  7 , pusa de profesorul Frasinaru  Cristian                                                                                                                       
Studentul Prelipcean Radu a luat nota  6 , pusa de profesorul Breaban    Mihaela                                                                                                                        
Studentul Prelipcean Radu a luat nota  6 , pusa de profesorul Varlan     Cosmin                                                                                                                         
Studentul Prelipcean Radu a luat nota  5 , pusa de profesorul Lucanu     Dorel                                                                                                                          
Studentul Prelipcean Radu a luat nota  6 , pusa de profesorul Iacob      Florin                                                                                                                         
Studentul Prelipcean Radu a luat nota  7 , pusa de profesorul Masalagiu  Cristian                                                                                                                       
Studentul Prelipcean Radu a luat nota  7 , pusa de profesorul Ciobaca    Stefan                                                                                                                         
Studentul Antonie Ioana a luat nota  7 , pusa de profesorul Buraga     Sabin                                                                                                                            
Studentul Antonie Ioana a luat nota  4 , pusa de profesorul Frasinaru  Cristian                                                                                                                         
Studentul Antonie Ioana a luat nota  10 , pusa de profesorul Breaban    Mihaela                                                                                                                         
Studentul Antonie Ioana a luat nota  10 , pusa de profesorul Varlan     Cosmin                                                                                                                          
Studentul Antonie Ioana a luat nota  7 , pusa de profesorul Lucanu     Dorel                                                                                                                            
Studentul Antonie Ioana a luat nota  9 , pusa de profesorul Iacob      Florin                                                                                                                           
Studentul Antonie Ioana a luat nota  9 , pusa de profesorul Masalagiu  Cristian                                                                                                                         
Studentul Antonie Ioana a luat nota  9 , pusa de profesorul Ciobaca    Stefan                                                                                                                           
Studentul Arhire Raluca a luat nota  4 , pusa de profesorul Buraga     Sabin                                                                                                                            
Studentul Arhire Raluca a luat nota  5 , pusa de profesorul Frasinaru  Cristian                                                                                                                         
Studentul Arhire Raluca a luat nota  4 , pusa de profesorul Breaban    Mihaela                                                                                                                          
Studentul Arhire Raluca a luat nota  4 , pusa de profesorul Varlan     Cosmin                                                                                                                           
Studentul Arhire Raluca a luat nota  10 , pusa de profesorul Lucanu     Dorel                                                                                                                           
Studentul Arhire Raluca a luat nota  9 , pusa de profesorul Iacob      Florin                                                                                                                           
Studentul Arhire Raluca a luat nota  6 , pusa de profesorul Masalagiu  Cristian                                                                                                                         
Studentul Arhire Raluca a luat nota  6 , pusa de profesorul Ciobaca    Stefan                                                                                                                           
Studentul Panaite Alexandru a luat nota  9 , pusa de profesorul Buraga     Sabin                                                                                                                        
Studentul Panaite Alexandru a luat nota  8 , pusa de profesorul Frasinaru  Cristian                                                                                                                     
Studentul Panaite Alexandru a luat nota  10 , pusa de profesorul Breaban    Mihaela                                                                                                                     
Studentul Panaite Alexandru a luat nota  10 , pusa de profesorul Varlan     Cosmin                                                                                                                      
Studentul Panaite Alexandru a luat nota  10 , pusa de profesorul Lucanu     Dorel                                                                                                                       
Studentul Panaite Alexandru a luat nota  7 , pusa de profesorul Iacob      Florin                                                                                                                       
Studentul Panaite Alexandru a luat nota  10 , pusa de profesorul Masalagiu  Cristian                                                                                                                    
Studentul Panaite Alexandru a luat nota  10 , pusa de profesorul Ciobaca    Stefan                                                                                                                      
Studentul Bodnar Ioana a luat nota  9 , pusa de profesorul Lucanu     Dorel                                                                                                                             
Studentul Bodnar Ioana a luat nota  10 , pusa de profesorul Iacob      Florin                                                                                                                           
Studentul Bodnar Ioana a luat nota  10 , pusa de profesorul Masalagiu  Cristian                                                                                                                         
Studentul Bodnar Ioana a luat nota  10 , pusa de profesorul Ciobaca    Stefan                                                                                                                           
Studentul Archip Andrada a luat nota  4 , pusa de profesorul Lucanu     Dorel                                                                                                                           
Studentul Archip Andrada a luat nota  6 , pusa de profesorul Iacob      Florin                                                                                                                          
Studentul Archip Andrada a luat nota  7 , pusa de profesorul Masalagiu  Cristian                                                                                                                        

Note studenti                                                                                                                                                                                           
--------------------------------------------------------------------------------------------------------------------------------                                                                        
Studentul Archip Andrada a luat nota  7 , pusa de profesorul Ciobaca    Stefan                                                                                                                          
Studentul Ciobotariu Ciprian a luat nota  7 , pusa de profesorul Lucanu     Dorel                                                                                                                       
Studentul Ciobotariu Ciprian a luat nota  7 , pusa de profesorul Iacob      Florin                                                                                                                      
Studentul Ciobotariu Ciprian a luat nota  7 , pusa de profesorul Masalagiu  Cristian                                                                                                                    
Studentul Ciobotariu Ciprian a luat nota  7 , pusa de profesorul Ciobaca    Stefan                                                                                                                      
Studentul Bodnar Ioana a luat nota  9 , pusa de profesorul Lucanu     Dorel                                                                                                                             
Studentul Bodnar Ioana a luat nota  8 , pusa de profesorul Iacob      Florin                                                                                                                            
Studentul Bodnar Ioana a luat nota  7 , pusa de profesorul Masalagiu  Cristian                                                                                                                          
Studentul Bodnar Ioana a luat nota  7 , pusa de profesorul Ciobaca    Stefan                                                                                                                            

56 rows selected.

SQL> select 'Studentul ' || s.nume || ' ' || s.prenume || ' a luat nota  ' || n.valoare || ', pusa de profesorul ' || p.nume || ' ' || p.prenume as "Note studenti" from studenti s join note n on s.nr_matricol=n.nr_matricol join cursuri c on n.id_curs=c.id_curs join didactic d on c.id_curs=d.id_curs join profesori p on d.id_prof=p.id_prof;

Note studenti                                                                                                                                                                                           
-------------------------------------------------------------------------------------------------------------------------------                                                                         
Studentul Popescu Bogdan a luat nota  8, pusa de profesorul Buraga     Sabin                                                                                                                            
Studentul Popescu Bogdan a luat nota  7, pusa de profesorul Frasinaru  Cristian                                                                                                                         
Studentul Popescu Bogdan a luat nota  9, pusa de profesorul Breaban    Mihaela                                                                                                                          
Studentul Popescu Bogdan a luat nota  9, pusa de profesorul Varlan     Cosmin                                                                                                                           
Studentul Popescu Bogdan a luat nota  10, pusa de profesorul Lucanu     Dorel                                                                                                                           
Studentul Popescu Bogdan a luat nota  9, pusa de profesorul Iacob      Florin                                                                                                                           
Studentul Popescu Bogdan a luat nota  8, pusa de profesorul Masalagiu  Cristian                                                                                                                         
Studentul Popescu Bogdan a luat nota  8, pusa de profesorul Ciobaca    Stefan                                                                                                                           
Studentul Prelipcean Radu a luat nota  4, pusa de profesorul Buraga     Sabin                                                                                                                           
Studentul Prelipcean Radu a luat nota  7, pusa de profesorul Frasinaru  Cristian                                                                                                                        
Studentul Prelipcean Radu a luat nota  6, pusa de profesorul Breaban    Mihaela                                                                                                                         
Studentul Prelipcean Radu a luat nota  6, pusa de profesorul Varlan     Cosmin                                                                                                                          
Studentul Prelipcean Radu a luat nota  5, pusa de profesorul Lucanu     Dorel                                                                                                                           
Studentul Prelipcean Radu a luat nota  6, pusa de profesorul Iacob      Florin                                                                                                                          
Studentul Prelipcean Radu a luat nota  7, pusa de profesorul Masalagiu  Cristian                                                                                                                        
Studentul Prelipcean Radu a luat nota  7, pusa de profesorul Ciobaca    Stefan                                                                                                                          
Studentul Antonie Ioana a luat nota  7, pusa de profesorul Buraga     Sabin                                                                                                                             
Studentul Antonie Ioana a luat nota  4, pusa de profesorul Frasinaru  Cristian                                                                                                                          
Studentul Antonie Ioana a luat nota  10, pusa de profesorul Breaban    Mihaela                                                                                                                          
Studentul Antonie Ioana a luat nota  10, pusa de profesorul Varlan     Cosmin                                                                                                                           
Studentul Antonie Ioana a luat nota  7, pusa de profesorul Lucanu     Dorel                                                                                                                             
Studentul Antonie Ioana a luat nota  9, pusa de profesorul Iacob      Florin                                                                                                                            
Studentul Antonie Ioana a luat nota  9, pusa de profesorul Masalagiu  Cristian                                                                                                                          
Studentul Antonie Ioana a luat nota  9, pusa de profesorul Ciobaca    Stefan                                                                                                                            
Studentul Arhire Raluca a luat nota  4, pusa de profesorul Buraga     Sabin                                                                                                                             
Studentul Arhire Raluca a luat nota  5, pusa de profesorul Frasinaru  Cristian                                                                                                                          
Studentul Arhire Raluca a luat nota  4, pusa de profesorul Breaban    Mihaela                                                                                                                           
Studentul Arhire Raluca a luat nota  4, pusa de profesorul Varlan     Cosmin                                                                                                                            
Studentul Arhire Raluca a luat nota  10, pusa de profesorul Lucanu     Dorel                                                                                                                            
Studentul Arhire Raluca a luat nota  9, pusa de profesorul Iacob      Florin                                                                                                                            
Studentul Arhire Raluca a luat nota  6, pusa de profesorul Masalagiu  Cristian                                                                                                                          
Studentul Arhire Raluca a luat nota  6, pusa de profesorul Ciobaca    Stefan                                                                                                                            
Studentul Panaite Alexandru a luat nota  9, pusa de profesorul Buraga     Sabin                                                                                                                         
Studentul Panaite Alexandru a luat nota  8, pusa de profesorul Frasinaru  Cristian                                                                                                                      
Studentul Panaite Alexandru a luat nota  10, pusa de profesorul Breaban    Mihaela                                                                                                                      
Studentul Panaite Alexandru a luat nota  10, pusa de profesorul Varlan     Cosmin                                                                                                                       
Studentul Panaite Alexandru a luat nota  10, pusa de profesorul Lucanu     Dorel                                                                                                                        
Studentul Panaite Alexandru a luat nota  7, pusa de profesorul Iacob      Florin                                                                                                                        
Studentul Panaite Alexandru a luat nota  10, pusa de profesorul Masalagiu  Cristian                                                                                                                     
Studentul Panaite Alexandru a luat nota  10, pusa de profesorul Ciobaca    Stefan                                                                                                                       
Studentul Bodnar Ioana a luat nota  9, pusa de profesorul Lucanu     Dorel                                                                                                                              
Studentul Bodnar Ioana a luat nota  10, pusa de profesorul Iacob      Florin                                                                                                                            
Studentul Bodnar Ioana a luat nota  10, pusa de profesorul Masalagiu  Cristian                                                                                                                          
Studentul Bodnar Ioana a luat nota  10, pusa de profesorul Ciobaca    Stefan                                                                                                                            
Studentul Archip Andrada a luat nota  4, pusa de profesorul Lucanu     Dorel                                                                                                                            
Studentul Archip Andrada a luat nota  6, pusa de profesorul Iacob      Florin                                                                                                                           
Studentul Archip Andrada a luat nota  7, pusa de profesorul Masalagiu  Cristian                                                                                                                         

Note studenti                                                                                                                                                                                           
-------------------------------------------------------------------------------------------------------------------------------                                                                         
Studentul Archip Andrada a luat nota  7, pusa de profesorul Ciobaca    Stefan                                                                                                                           
Studentul Ciobotariu Ciprian a luat nota  7, pusa de profesorul Lucanu     Dorel                                                                                                                        
Studentul Ciobotariu Ciprian a luat nota  7, pusa de profesorul Iacob      Florin                                                                                                                       
Studentul Ciobotariu Ciprian a luat nota  7, pusa de profesorul Masalagiu  Cristian                                                                                                                     
Studentul Ciobotariu Ciprian a luat nota  7, pusa de profesorul Ciobaca    Stefan                                                                                                                       
Studentul Bodnar Ioana a luat nota  9, pusa de profesorul Lucanu     Dorel                                                                                                                              
Studentul Bodnar Ioana a luat nota  8, pusa de profesorul Iacob      Florin                                                                                                                             
Studentul Bodnar Ioana a luat nota  7, pusa de profesorul Masalagiu  Cristian                                                                                                                           
Studentul Bodnar Ioana a luat nota  7, pusa de profesorul Ciobaca    Stefan                                                                                                                             

56 rows selected.

SQL> describe note
 Name                                                                                                              Null?    Type
 ----------------------------------------------------------------------------------------------------------------- -------- ----------------------------------------------------------------------------
 NR_MATRICOL                                                                                                                CHAR(6)
 ID_CURS                                                                                                                    CHAR(4)
 VALOARE                                                                                                                    NUMBER(2)
 DATA_NOTARE                                                                                                                DATE

SQL> describe cursuri
 Name                                                                                                              Null?    Type
 ----------------------------------------------------------------------------------------------------------------- -------- ----------------------------------------------------------------------------
 ID_CURS                                                                                                           NOT NULL CHAR(4)
 TITLU_CURS                                                                                                                 VARCHAR2(15)
 AN                                                                                                                         NUMBER(1)
 SEMESTRU                                                                                                                   NUMBER(1)
 CREDITE                                                                                                                    NUMBER(2)

SQL> describe didactic
 Name                                                                                                              Null?    Type
 ----------------------------------------------------------------------------------------------------------------- -------- ----------------------------------------------------------------------------
 ID_PROF                                                                                                                    CHAR(4)
 ID_CURS                                                                                                                    CHAR(4)

SQL> select 'Studentul ' || s.nume || ' ' || s.prenume || ' a luat nota  ' || n.valoare || ', pusa de profesorul ' || p.nume || ' ' || p.prenume as "Note studenti" from studenti s join note n on s.nr_matricol=n.nr_matricol join cursuri c on n.id_curs=c.id_curs join didactic d on c.id_curs=d.id_curs join profesori p on d.id_prof=p.id_prof;

Note studenti                                                                                                                                                                                           
-------------------------------------------------------------------------------------------------------------------------------                                                                         
Studentul Popescu Bogdan a luat nota  8, pusa de profesorul Buraga     Sabin                                                                                                                            
Studentul Popescu Bogdan a luat nota  7, pusa de profesorul Frasinaru  Cristian                                                                                                                         
Studentul Popescu Bogdan a luat nota  9, pusa de profesorul Breaban    Mihaela                                                                                                                          
Studentul Popescu Bogdan a luat nota  9, pusa de profesorul Varlan     Cosmin                                                                                                                           
Studentul Popescu Bogdan a luat nota  10, pusa de profesorul Lucanu     Dorel                                                                                                                           
Studentul Popescu Bogdan a luat nota  9, pusa de profesorul Iacob      Florin                                                                                                                           
Studentul Popescu Bogdan a luat nota  8, pusa de profesorul Masalagiu  Cristian                                                                                                                         
Studentul Popescu Bogdan a luat nota  8, pusa de profesorul Ciobaca    Stefan                                                                                                                           
Studentul Prelipcean Radu a luat nota  4, pusa de profesorul Buraga     Sabin                                                                                                                           
Studentul Prelipcean Radu a luat nota  7, pusa de profesorul Frasinaru  Cristian                                                                                                                        
Studentul Prelipcean Radu a luat nota  6, pusa de profesorul Breaban    Mihaela                                                                                                                         
Studentul Prelipcean Radu a luat nota  6, pusa de profesorul Varlan     Cosmin                                                                                                                          
Studentul Prelipcean Radu a luat nota  5, pusa de profesorul Lucanu     Dorel                                                                                                                           
Studentul Prelipcean Radu a luat nota  6, pusa de profesorul Iacob      Florin                                                                                                                          
Studentul Prelipcean Radu a luat nota  7, pusa de profesorul Masalagiu  Cristian                                                                                                                        
Studentul Prelipcean Radu a luat nota  7, pusa de profesorul Ciobaca    Stefan                                                                                                                          
Studentul Antonie Ioana a luat nota  7, pusa de profesorul Buraga     Sabin                                                                                                                             
Studentul Antonie Ioana a luat nota  4, pusa de profesorul Frasinaru  Cristian                                                                                                                          
Studentul Antonie Ioana a luat nota  10, pusa de profesorul Breaban    Mihaela                                                                                                                          
Studentul Antonie Ioana a luat nota  10, pusa de profesorul Varlan     Cosmin                                                                                                                           
Studentul Antonie Ioana a luat nota  7, pusa de profesorul Lucanu     Dorel                                                                                                                             
Studentul Antonie Ioana a luat nota  9, pusa de profesorul Iacob      Florin                                                                                                                            
Studentul Antonie Ioana a luat nota  9, pusa de profesorul Masalagiu  Cristian                                                                                                                          
Studentul Antonie Ioana a luat nota  9, pusa de profesorul Ciobaca    Stefan                                                                                                                            
Studentul Arhire Raluca a luat nota  4, pusa de profesorul Buraga     Sabin                                                                                                                             
Studentul Arhire Raluca a luat nota  5, pusa de profesorul Frasinaru  Cristian                                                                                                                          
Studentul Arhire Raluca a luat nota  4, pusa de profesorul Breaban    Mihaela                                                                                                                           
Studentul Arhire Raluca a luat nota  4, pusa de profesorul Varlan     Cosmin                                                                                                                            
Studentul Arhire Raluca a luat nota  10, pusa de profesorul Lucanu     Dorel                                                                                                                            
Studentul Arhire Raluca a luat nota  9, pusa de profesorul Iacob      Florin                                                                                                                            
Studentul Arhire Raluca a luat nota  6, pusa de profesorul Masalagiu  Cristian                                                                                                                          
Studentul Arhire Raluca a luat nota  6, pusa de profesorul Ciobaca    Stefan                                                                                                                            
Studentul Panaite Alexandru a luat nota  9, pusa de profesorul Buraga     Sabin                                                                                                                         
Studentul Panaite Alexandru a luat nota  8, pusa de profesorul Frasinaru  Cristian                                                                                                                      
Studentul Panaite Alexandru a luat nota  10, pusa de profesorul Breaban    Mihaela                                                                                                                      
Studentul Panaite Alexandru a luat nota  10, pusa de profesorul Varlan     Cosmin                                                                                                                       
Studentul Panaite Alexandru a luat nota  10, pusa de profesorul Lucanu     Dorel                                                                                                                        
Studentul Panaite Alexandru a luat nota  7, pusa de profesorul Iacob      Florin                                                                                                                        
Studentul Panaite Alexandru a luat nota  10, pusa de profesorul Masalagiu  Cristian                                                                                                                     
Studentul Panaite Alexandru a luat nota  10, pusa de profesorul Ciobaca    Stefan                                                                                                                       
Studentul Bodnar Ioana a luat nota  9, pusa de profesorul Lucanu     Dorel                                                                                                                              
Studentul Bodnar Ioana a luat nota  10, pusa de profesorul Iacob      Florin                                                                                                                            
Studentul Bodnar Ioana a luat nota  10, pusa de profesorul Masalagiu  Cristian                                                                                                                          
Studentul Bodnar Ioana a luat nota  10, pusa de profesorul Ciobaca    Stefan                                                                                                                            
Studentul Archip Andrada a luat nota  4, pusa de profesorul Lucanu     Dorel                                                                                                                            
Studentul Archip Andrada a luat nota  6, pusa de profesorul Iacob      Florin                                                                                                                           
Studentul Archip Andrada a luat nota  7, pusa de profesorul Masalagiu  Cristian                                                                                                                         

Note studenti                                                                                                                                                                                           
-------------------------------------------------------------------------------------------------------------------------------                                                                         
Studentul Archip Andrada a luat nota  7, pusa de profesorul Ciobaca    Stefan                                                                                                                           
Studentul Ciobotariu Ciprian a luat nota  7, pusa de profesorul Lucanu     Dorel                                                                                                                        
Studentul Ciobotariu Ciprian a luat nota  7, pusa de profesorul Iacob      Florin                                                                                                                       
Studentul Ciobotariu Ciprian a luat nota  7, pusa de profesorul Masalagiu  Cristian                                                                                                                     
Studentul Ciobotariu Ciprian a luat nota  7, pusa de profesorul Ciobaca    Stefan                                                                                                                       
Studentul Bodnar Ioana a luat nota  9, pusa de profesorul Lucanu     Dorel                                                                                                                              
Studentul Bodnar Ioana a luat nota  8, pusa de profesorul Iacob      Florin                                                                                                                             
Studentul Bodnar Ioana a luat nota  7, pusa de profesorul Masalagiu  Cristian                                                                                                                           
Studentul Bodnar Ioana a luat nota  7, pusa de profesorul Ciobaca    Stefan                                                                                                                             

56 rows selected.

SQL> select 'Studentul ' || s.nume || ' ' || s.prenume || ' a luat nota  ' || n.valoare || ', pusa de profesorul ' || p.nume || ' ' || p.prenume as "Note studenti" from studenti s join note n on s.nr_matricol=n.nr_matricol join cursuri c on n.id_curs=c.id_curs join didactic d on c.id_curs=d.id_curs join profesori p on d.id_prof=p.id_prof;

Note studenti                                                                                                                                                                                           
-------------------------------------------------------------------------------------------------------------------------------                                                                         
Studentul Popescu Bogdan a luat nota  8, pusa de profesorul Buraga     Sabin                                                                                                                            
Studentul Popescu Bogdan a luat nota  7, pusa de profesorul Frasinaru  Cristian                                                                                                                         
Studentul Popescu Bogdan a luat nota  9, pusa de profesorul Breaban    Mihaela                                                                                                                          
Studentul Popescu Bogdan a luat nota  9, pusa de profesorul Varlan     Cosmin                                                                                                                           
Studentul Popescu Bogdan a luat nota  10, pusa de profesorul Lucanu     Dorel                                                                                                                           
Studentul Popescu Bogdan a luat nota  9, pusa de profesorul Iacob      Florin                                                                                                                           
Studentul Popescu Bogdan a luat nota  8, pusa de profesorul Masalagiu  Cristian                                                                                                                         
Studentul Popescu Bogdan a luat nota  8, pusa de profesorul Ciobaca    Stefan                                                                                                                           
Studentul Prelipcean Radu a luat nota  4, pusa de profesorul Buraga     Sabin                                                                                                                           
Studentul Prelipcean Radu a luat nota  7, pusa de profesorul Frasinaru  Cristian                                                                                                                        
Studentul Prelipcean Radu a luat nota  6, pusa de profesorul Breaban    Mihaela                                                                                                                         
Studentul Prelipcean Radu a luat nota  6, pusa de profesorul Varlan     Cosmin                                                                                                                          
Studentul Prelipcean Radu a luat nota  5, pusa de profesorul Lucanu     Dorel                                                                                                                           
Studentul Prelipcean Radu a luat nota  6, pusa de profesorul Iacob      Florin                                                                                                                          
Studentul Prelipcean Radu a luat nota  7, pusa de profesorul Masalagiu  Cristian                                                                                                                        
Studentul Prelipcean Radu a luat nota  7, pusa de profesorul Ciobaca    Stefan                                                                                                                          
Studentul Antonie Ioana a luat nota  7, pusa de profesorul Buraga     Sabin                                                                                                                             
Studentul Antonie Ioana a luat nota  4, pusa de profesorul Frasinaru  Cristian                                                                                                                          
Studentul Antonie Ioana a luat nota  10, pusa de profesorul Breaban    Mihaela                                                                                                                          
Studentul Antonie Ioana a luat nota  10, pusa de profesorul Varlan     Cosmin                                                                                                                           
Studentul Antonie Ioana a luat nota  7, pusa de profesorul Lucanu     Dorel                                                                                                                             
Studentul Antonie Ioana a luat nota  9, pusa de profesorul Iacob      Florin                                                                                                                            
Studentul Antonie Ioana a luat nota  9, pusa de profesorul Masalagiu  Cristian                                                                                                                          
Studentul Antonie Ioana a luat nota  9, pusa de profesorul Ciobaca    Stefan                                                                                                                            
Studentul Arhire Raluca a luat nota  4, pusa de profesorul Buraga     Sabin                                                                                                                             
Studentul Arhire Raluca a luat nota  5, pusa de profesorul Frasinaru  Cristian                                                                                                                          
Studentul Arhire Raluca a luat nota  4, pusa de profesorul Breaban    Mihaela                                                                                                                           
Studentul Arhire Raluca a luat nota  4, pusa de profesorul Varlan     Cosmin                                                                                                                            
Studentul Arhire Raluca a luat nota  10, pusa de profesorul Lucanu     Dorel                                                                                                                            
Studentul Arhire Raluca a luat nota  9, pusa de profesorul Iacob      Florin                                                                                                                            
Studentul Arhire Raluca a luat nota  6, pusa de profesorul Masalagiu  Cristian                                                                                                                          
Studentul Arhire Raluca a luat nota  6, pusa de profesorul Ciobaca    Stefan                                                                                                                            
Studentul Panaite Alexandru a luat nota  9, pusa de profesorul Buraga     Sabin                                                                                                                         
Studentul Panaite Alexandru a luat nota  8, pusa de profesorul Frasinaru  Cristian                                                                                                                      
Studentul Panaite Alexandru a luat nota  10, pusa de profesorul Breaban    Mihaela                                                                                                                      
Studentul Panaite Alexandru a luat nota  10, pusa de profesorul Varlan     Cosmin                                                                                                                       
Studentul Panaite Alexandru a luat nota  10, pusa de profesorul Lucanu     Dorel                                                                                                                        
Studentul Panaite Alexandru a luat nota  7, pusa de profesorul Iacob      Florin                                                                                                                        
Studentul Panaite Alexandru a luat nota  10, pusa de profesorul Masalagiu  Cristian                                                                                                                     
Studentul Panaite Alexandru a luat nota  10, pusa de profesorul Ciobaca    Stefan                                                                                                                       
Studentul Bodnar Ioana a luat nota  9, pusa de profesorul Lucanu     Dorel                                                                                                                              
Studentul Bodnar Ioana a luat nota  10, pusa de profesorul Iacob      Florin                                                                                                                            
Studentul Bodnar Ioana a luat nota  10, pusa de profesorul Masalagiu  Cristian                                                                                                                          
Studentul Bodnar Ioana a luat nota  10, pusa de profesorul Ciobaca    Stefan                                                                                                                            
Studentul Archip Andrada a luat nota  4, pusa de profesorul Lucanu     Dorel                                                                                                                            
Studentul Archip Andrada a luat nota  6, pusa de profesorul Iacob      Florin                                                                                                                           
Studentul Archip Andrada a luat nota  7, pusa de profesorul Masalagiu  Cristian                                                                                                                         

Note studenti                                                                                                                                                                                           
-------------------------------------------------------------------------------------------------------------------------------                                                                         
Studentul Archip Andrada a luat nota  7, pusa de profesorul Ciobaca    Stefan                                                                                                                           
Studentul Ciobotariu Ciprian a luat nota  7, pusa de profesorul Lucanu     Dorel                                                                                                                        
Studentul Ciobotariu Ciprian a luat nota  7, pusa de profesorul Iacob      Florin                                                                                                                       
Studentul Ciobotariu Ciprian a luat nota  7, pusa de profesorul Masalagiu  Cristian                                                                                                                     
Studentul Ciobotariu Ciprian a luat nota  7, pusa de profesorul Ciobaca    Stefan                                                                                                                       
Studentul Bodnar Ioana a luat nota  9, pusa de profesorul Lucanu     Dorel                                                                                                                              
Studentul Bodnar Ioana a luat nota  8, pusa de profesorul Iacob      Florin                                                                                                                             
Studentul Bodnar Ioana a luat nota  7, pusa de profesorul Masalagiu  Cristian                                                                                                                           
Studentul Bodnar Ioana a luat nota  7, pusa de profesorul Ciobaca    Stefan                                                                                                                             

56 rows selected.

SQL> select nume, prenume from studenti s join note n on s.nr_matricol=n.nr_matricol join cursuri c on n.id_curs=c.id_curs where c.titlu_curs='BD' and n.valoare='10';

NUME       PRENUME                                                                                                                                                                                      
---------- ----------                                                                                                                                                                                   
Antonie    Ioana                                                                                                                                                                                        
Panaite    Alexandru                                                                                                                                                                                    

SQL> select * from studenti s join note n on s.nr_matricol=n.nr_matricol join cursuri c on n.id_curs=c.id_curs where c.titlu_curs='BD' and n.valoare='10';

NR_MAT NUME       PRENUME            AN GR      BURSA DATA_NAST NR_MAT ID_C    VALOARE DATA_NOTA ID_C TITLU_CURS              AN   SEMESTRU    CREDITE                                                  
------ ---------- ---------- ---------- -- ---------- --------- ------ ---- ---------- --------- ---- --------------- ---------- ---------- ----------                                                  
113    Antonie    Ioana               3 A2        450 03-JAN-95 113    24           10 17-FEB-15 24   BD                       2          1          8                                                  
115    Panaite    Alexandru           3 B3            13-APR-95 115    24           10 17-FEB-15 24   BD                       2          1          8                                                  

SQL> select nume, prenume from studenti s join note n on s.nr_matricol=n.nr_matricol join cursuri c on n.id_curs=c.id_curs where c.titlu_curs='BD' and n.valoare='10';

NUME       PRENUME                                                                                                                                                                                      
---------- ----------                                                                                                                                                                                   
Antonie    Ioana                                                                                                                                                                                        
Panaite    Alexandru                                                                                                                                                                                    

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

SQL> elect p.nume, p.prenume, c.curs from profesori p join didactic d on p.id_prof=d.id_prof join cursuri c on d.id_curs=c.id_curs;
SP2-0734: unknown command beginning "elect p.nu..." - rest of line ignored.
SQL> select p.nume, p.prenume, c.curs from profesori p join didactic d on p.id_prof=d.id_prof join cursuri c on d.id_curs=c.id_curs
  2  ;
select p.nume, p.prenume, c.curs from profesori p join didactic d on p.id_prof=d.id_prof join cursuri c on d.id_curs=c.id_curs
                          *
ERROR at line 1:
ORA-00904: "C"."CURS": invalid identifier 


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

SQL> select p.nume, p.prenume, nvl(c.titlu_curs, 'nu tine curs') as Curs from profesori p left join didactic d on p.id_prof=d.id_prof left join cursuri c on d.id_curs=c.id_curs;

NUME       PRENUME    CURS                                                                                                                                                                              
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

SQL> select nvl(p.nume, 'Nu are alocat profesor') as Nuume, p.prenume, titlu_curs from profesori p right outer join didactic d on p.id_prof=d.id_prof right outer join cursuri c on d.id_curs=c.id_curs;

NUUME                  PRENUME    TITLU_CURS                                                                                                                                                            
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

SQL> select nvl(p.nume, 'Nu are alocat profesor') as Nume, p.prenume, titlu_curs from profesori p right outer join didactic d on p.id_prof=d.id_prof right outer join cursuri c on d.id_curs=c.id_curs;

NUME                   PRENUME    TITLU_CURS                                                                                                                                                            
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

SQL> select nvl(p.nume, 'Nu are alocat profesor') as Nume, p.prenume, nvl(titlu_curs, 'nu tine curs') as curs from profesori p full outer join didactic d on p.id_prof=d.id_prof full outer join cursuri c on d.id_curs=c.id_curs;

NUME                   PRENUME    CURS                                                                                                                                                                  
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

SQL> select nvl(p.nume, 'Nu are alocat profesor') as Nume, p.prenume, nvl(titlu_curs, 'nu tine curs') as curs from profesori p full outer join didactic d on p.id_prof=d.id_prof full outer join cursuri c on d.id_curs=c.id_curs;

NUME                   PRENUME    CURS                                                                                                                                                                  
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

SQL> select s.nume, c.nume, to_char(s.data_nastere, 'Day', 'nls_date_language=romanian') as Zi from studenti s join studenti c on to_char(s.data_nastere, 'Day')=to_char(c.data_nastere, 'Day') and s.nume<c.nume order by to_number(to_char(s.data_nastere, 'D'));

NUME       NUME       ZI                                                                                                                                                                                
---------- ---------- --------------------------------                                                                                                                                                  
Cobzaru    Pintescu   Marþi                                                                                                                                                                             
Arhire     Cobzaru    Marþi                                                                                                                                                                             
Antonie    Pintescu   Marþi                                                                                                                                                                             
Arhire     Pintescu   Marþi                                                                                                                                                                             
Antonie    Arhire     Marþi                                                                                                                                                                             
Antonie    Cobzaru    Marþi                                                                                                                                                                             
Archip     Ciobotariu Miercuri                                                                                                                                                                          
Arhire     Ciobotariu Miercuri                                                                                                                                                                          
Archip     Arhire     Miercuri                                                                                                                                                                          
Popescu    Prelipcean Vineri                                                                                                                                                                            

10 rows selected.

SQL> select s.nume || ' ' || s.prenume || ' a luat nota mai mare ca ' || coleg.nume || ' ' || coleg.prenume || ' la materia ' || c.titlu_curs from note n1 join note n2 on n1.valoare>n2.valoare and n1.id_curs=n2.id_curs join studenti s on s.nr_matricol=n1.nr_matricol join studenti coleg on coleg.nr_matricol=n2.nr_matricol join cursuri c on c.id_curs=n1.id_curs;

S.NUME||''||S.PRENUME||'ALUATNOTAMAIMARECA'||COLEG.NUME||''||COLEG.PRENUME||'LAMATERIA'||C.TIT                                                                                                          
----------------------------------------------------------------------------------------------                                                                                                          
Bodnar Ioana a luat nota mai mare ca Popescu Bogdan la materia Logica                                                                                                                                   
Panaite Alexandru a luat nota mai mare ca Popescu Bogdan la materia Logica                                                                                                                              
Antonie Ioana a luat nota mai mare ca Popescu Bogdan la materia Logica                                                                                                                                  
Bodnar Ioana a luat nota mai mare ca Popescu Bogdan la materia Matematica                                                                                                                               
Panaite Alexandru a luat nota mai mare ca Popescu Bogdan la materia BD                                                                                                                                  
Antonie Ioana a luat nota mai mare ca Popescu Bogdan la materia BD                                                                                                                                      
Panaite Alexandru a luat nota mai mare ca Popescu Bogdan la materia Java                                                                                                                                
Panaite Alexandru a luat nota mai mare ca Popescu Bogdan la materia Tehnologii Web                                                                                                                      
Bodnar Ioana a luat nota mai mare ca Prelipcean Radu la materia Logica                                                                                                                                  
Panaite Alexandru a luat nota mai mare ca Prelipcean Radu la materia Logica                                                                                                                             
Antonie Ioana a luat nota mai mare ca Prelipcean Radu la materia Logica                                                                                                                                 
Popescu Bogdan a luat nota mai mare ca Prelipcean Radu la materia Logica                                                                                                                                
Bodnar Ioana a luat nota mai mare ca Prelipcean Radu la materia Matematica                                                                                                                              
Ciobotariu Ciprian a luat nota mai mare ca Prelipcean Radu la materia Matematica                                                                                                                        
Bodnar Ioana a luat nota mai mare ca Prelipcean Radu la materia Matematica                                                                                                                              
Panaite Alexandru a luat nota mai mare ca Prelipcean Radu la materia Matematica                                                                                                                         
Arhire Raluca a luat nota mai mare ca Prelipcean Radu la materia Matematica                                                                                                                             
Antonie Ioana a luat nota mai mare ca Prelipcean Radu la materia Matematica                                                                                                                             
Popescu Bogdan a luat nota mai mare ca Prelipcean Radu la materia Matematica                                                                                                                            
Bodnar Ioana a luat nota mai mare ca Prelipcean Radu la materia OOP                                                                                                                                     
Ciobotariu Ciprian a luat nota mai mare ca Prelipcean Radu la materia OOP                                                                                                                               
Bodnar Ioana a luat nota mai mare ca Prelipcean Radu la materia OOP                                                                                                                                     
Panaite Alexandru a luat nota mai mare ca Prelipcean Radu la materia OOP                                                                                                                                
Arhire Raluca a luat nota mai mare ca Prelipcean Radu la materia OOP                                                                                                                                    
Antonie Ioana a luat nota mai mare ca Prelipcean Radu la materia OOP                                                                                                                                    
Popescu Bogdan a luat nota mai mare ca Prelipcean Radu la materia OOP                                                                                                                                   
Panaite Alexandru a luat nota mai mare ca Prelipcean Radu la materia BD                                                                                                                                 
Antonie Ioana a luat nota mai mare ca Prelipcean Radu la materia BD                                                                                                                                     
Popescu Bogdan a luat nota mai mare ca Prelipcean Radu la materia BD                                                                                                                                    
Panaite Alexandru a luat nota mai mare ca Prelipcean Radu la materia Java                                                                                                                               
Panaite Alexandru a luat nota mai mare ca Prelipcean Radu la materia Tehnologii Web                                                                                                                     
Antonie Ioana a luat nota mai mare ca Prelipcean Radu la materia Tehnologii Web                                                                                                                         
Popescu Bogdan a luat nota mai mare ca Prelipcean Radu la materia Tehnologii Web                                                                                                                        
Bodnar Ioana a luat nota mai mare ca Antonie Ioana la materia Logica                                                                                                                                    
Panaite Alexandru a luat nota mai mare ca Antonie Ioana la materia Logica                                                                                                                               
Bodnar Ioana a luat nota mai mare ca Antonie Ioana la materia Matematica                                                                                                                                
Bodnar Ioana a luat nota mai mare ca Antonie Ioana la materia OOP                                                                                                                                       
Bodnar Ioana a luat nota mai mare ca Antonie Ioana la materia OOP                                                                                                                                       
Panaite Alexandru a luat nota mai mare ca Antonie Ioana la materia OOP                                                                                                                                  
Arhire Raluca a luat nota mai mare ca Antonie Ioana la materia OOP                                                                                                                                      
Popescu Bogdan a luat nota mai mare ca Antonie Ioana la materia OOP                                                                                                                                     
Panaite Alexandru a luat nota mai mare ca Antonie Ioana la materia Java                                                                                                                                 
Arhire Raluca a luat nota mai mare ca Antonie Ioana la materia Java                                                                                                                                     
Prelipcean Radu a luat nota mai mare ca Antonie Ioana la materia Java                                                                                                                                   
Popescu Bogdan a luat nota mai mare ca Antonie Ioana la materia Java                                                                                                                                    
Panaite Alexandru a luat nota mai mare ca Antonie Ioana la materia Tehnologii Web                                                                                                                       
Popescu Bogdan a luat nota mai mare ca Antonie Ioana la materia Tehnologii Web                                                                                                                          

S.NUME||''||S.PRENUME||'ALUATNOTAMAIMARECA'||COLEG.NUME||''||COLEG.PRENUME||'LAMATERIA'||C.TIT                                                                                                          
----------------------------------------------------------------------------------------------                                                                                                          
Bodnar Ioana a luat nota mai mare ca Arhire Raluca la materia Logica                                                                                                                                    
Ciobotariu Ciprian a luat nota mai mare ca Arhire Raluca la materia Logica                                                                                                                              
Archip Andrada a luat nota mai mare ca Arhire Raluca la materia Logica                                                                                                                                  
Bodnar Ioana a luat nota mai mare ca Arhire Raluca la materia Logica                                                                                                                                    
Panaite Alexandru a luat nota mai mare ca Arhire Raluca la materia Logica                                                                                                                               
Antonie Ioana a luat nota mai mare ca Arhire Raluca la materia Logica                                                                                                                                   
Prelipcean Radu a luat nota mai mare ca Arhire Raluca la materia Logica                                                                                                                                 
Popescu Bogdan a luat nota mai mare ca Arhire Raluca la materia Logica                                                                                                                                  
Bodnar Ioana a luat nota mai mare ca Arhire Raluca la materia Matematica                                                                                                                                
Panaite Alexandru a luat nota mai mare ca Arhire Raluca la materia BD                                                                                                                                   
Antonie Ioana a luat nota mai mare ca Arhire Raluca la materia BD                                                                                                                                       
Prelipcean Radu a luat nota mai mare ca Arhire Raluca la materia BD                                                                                                                                     
Popescu Bogdan a luat nota mai mare ca Arhire Raluca la materia BD                                                                                                                                      
Panaite Alexandru a luat nota mai mare ca Arhire Raluca la materia Java                                                                                                                                 
Prelipcean Radu a luat nota mai mare ca Arhire Raluca la materia Java                                                                                                                                   
Popescu Bogdan a luat nota mai mare ca Arhire Raluca la materia Java                                                                                                                                    
Panaite Alexandru a luat nota mai mare ca Arhire Raluca la materia Tehnologii Web                                                                                                                       
Antonie Ioana a luat nota mai mare ca Arhire Raluca la materia Tehnologii Web                                                                                                                           
Popescu Bogdan a luat nota mai mare ca Arhire Raluca la materia Tehnologii Web                                                                                                                          
Bodnar Ioana a luat nota mai mare ca Panaite Alexandru la materia Matematica                                                                                                                            
Bodnar Ioana a luat nota mai mare ca Panaite Alexandru la materia Matematica                                                                                                                            
Arhire Raluca a luat nota mai mare ca Panaite Alexandru la materia Matematica                                                                                                                           
Antonie Ioana a luat nota mai mare ca Panaite Alexandru la materia Matematica                                                                                                                           
Popescu Bogdan a luat nota mai mare ca Panaite Alexandru la materia Matematica                                                                                                                          
Panaite Alexandru a luat nota mai mare ca Bodnar Ioana la materia OOP                                                                                                                                   
Arhire Raluca a luat nota mai mare ca Bodnar Ioana la materia OOP                                                                                                                                       
Popescu Bogdan a luat nota mai mare ca Bodnar Ioana la materia OOP                                                                                                                                      
Bodnar Ioana a luat nota mai mare ca Archip Andrada la materia Logica                                                                                                                                   
Panaite Alexandru a luat nota mai mare ca Archip Andrada la materia Logica                                                                                                                              
Antonie Ioana a luat nota mai mare ca Archip Andrada la materia Logica                                                                                                                                  
Popescu Bogdan a luat nota mai mare ca Archip Andrada la materia Logica                                                                                                                                 
Bodnar Ioana a luat nota mai mare ca Archip Andrada la materia Matematica                                                                                                                               
Ciobotariu Ciprian a luat nota mai mare ca Archip Andrada la materia Matematica                                                                                                                         
Bodnar Ioana a luat nota mai mare ca Archip Andrada la materia Matematica                                                                                                                               
Panaite Alexandru a luat nota mai mare ca Archip Andrada la materia Matematica                                                                                                                          
Arhire Raluca a luat nota mai mare ca Archip Andrada la materia Matematica                                                                                                                              
Antonie Ioana a luat nota mai mare ca Archip Andrada la materia Matematica                                                                                                                              
Popescu Bogdan a luat nota mai mare ca Archip Andrada la materia Matematica                                                                                                                             
Bodnar Ioana a luat nota mai mare ca Archip Andrada la materia OOP                                                                                                                                      
Ciobotariu Ciprian a luat nota mai mare ca Archip Andrada la materia OOP                                                                                                                                
Bodnar Ioana a luat nota mai mare ca Archip Andrada la materia OOP                                                                                                                                      
Panaite Alexandru a luat nota mai mare ca Archip Andrada la materia OOP                                                                                                                                 
Arhire Raluca a luat nota mai mare ca Archip Andrada la materia OOP                                                                                                                                     
Antonie Ioana a luat nota mai mare ca Archip Andrada la materia OOP                                                                                                                                     
Prelipcean Radu a luat nota mai mare ca Archip Andrada la materia OOP                                                                                                                                   
Popescu Bogdan a luat nota mai mare ca Archip Andrada la materia OOP                                                                                                                                    
Bodnar Ioana a luat nota mai mare ca Ciobotariu Ciprian la materia Logica                                                                                                                               

S.NUME||''||S.PRENUME||'ALUATNOTAMAIMARECA'||COLEG.NUME||''||COLEG.PRENUME||'LAMATERIA'||C.TIT                                                                                                          
----------------------------------------------------------------------------------------------                                                                                                          
Panaite Alexandru a luat nota mai mare ca Ciobotariu Ciprian la materia Logica                                                                                                                          
Antonie Ioana a luat nota mai mare ca Ciobotariu Ciprian la materia Logica                                                                                                                              
Popescu Bogdan a luat nota mai mare ca Ciobotariu Ciprian la materia Logica                                                                                                                             
Bodnar Ioana a luat nota mai mare ca Ciobotariu Ciprian la materia Matematica                                                                                                                           
Bodnar Ioana a luat nota mai mare ca Ciobotariu Ciprian la materia Matematica                                                                                                                           
Arhire Raluca a luat nota mai mare ca Ciobotariu Ciprian la materia Matematica                                                                                                                          
Antonie Ioana a luat nota mai mare ca Ciobotariu Ciprian la materia Matematica                                                                                                                          
Popescu Bogdan a luat nota mai mare ca Ciobotariu Ciprian la materia Matematica                                                                                                                         
Bodnar Ioana a luat nota mai mare ca Ciobotariu Ciprian la materia OOP                                                                                                                                  
Bodnar Ioana a luat nota mai mare ca Ciobotariu Ciprian la materia OOP                                                                                                                                  
Panaite Alexandru a luat nota mai mare ca Ciobotariu Ciprian la materia OOP                                                                                                                             
Arhire Raluca a luat nota mai mare ca Ciobotariu Ciprian la materia OOP                                                                                                                                 
Popescu Bogdan a luat nota mai mare ca Ciobotariu Ciprian la materia OOP                                                                                                                                
Bodnar Ioana a luat nota mai mare ca Bodnar Ioana la materia Logica                                                                                                                                     
Panaite Alexandru a luat nota mai mare ca Bodnar Ioana la materia Logica                                                                                                                                
Antonie Ioana a luat nota mai mare ca Bodnar Ioana la materia Logica                                                                                                                                    
Popescu Bogdan a luat nota mai mare ca Bodnar Ioana la materia Logica                                                                                                                                   
Bodnar Ioana a luat nota mai mare ca Bodnar Ioana la materia Matematica                                                                                                                                 
Arhire Raluca a luat nota mai mare ca Bodnar Ioana la materia Matematica                                                                                                                                
Antonie Ioana a luat nota mai mare ca Bodnar Ioana la materia Matematica                                                                                                                                
Popescu Bogdan a luat nota mai mare ca Bodnar Ioana la materia Matematica                                                                                                                               
Panaite Alexandru a luat nota mai mare ca Bodnar Ioana la materia OOP                                                                                                                                   
Arhire Raluca a luat nota mai mare ca Bodnar Ioana la materia OOP                                                                                                                                       
Popescu Bogdan a luat nota mai mare ca Bodnar Ioana la materia OOP                                                                                                                                      

118 rows selected.

SQL> select s.nume || ' ' || s.prenume || ' a luat nota mai mare ca ' || coleg.nume || ' ' || coleg.prenume || ' la materia ' || c.titlu_curs as "Comparare note" from note n1 join note n2 on n1.valoare>n2.valoare and n1.id_curs=n2.id_curs join studenti s on s.nr_matricol=n1.nr_matricol join studenti coleg on coleg.nr_matricol=n2.nr_matricol join cursuri c on c.id_curs=n1.id_curs;

Comparare note                                                                                                                                                                                          
----------------------------------------------------------------------------------------------                                                                                                          
Bodnar Ioana a luat nota mai mare ca Popescu Bogdan la materia Logica                                                                                                                                   
Panaite Alexandru a luat nota mai mare ca Popescu Bogdan la materia Logica                                                                                                                              
Antonie Ioana a luat nota mai mare ca Popescu Bogdan la materia Logica                                                                                                                                  
Bodnar Ioana a luat nota mai mare ca Popescu Bogdan la materia Matematica                                                                                                                               
Panaite Alexandru a luat nota mai mare ca Popescu Bogdan la materia BD                                                                                                                                  
Antonie Ioana a luat nota mai mare ca Popescu Bogdan la materia BD                                                                                                                                      
Panaite Alexandru a luat nota mai mare ca Popescu Bogdan la materia Java                                                                                                                                
Panaite Alexandru a luat nota mai mare ca Popescu Bogdan la materia Tehnologii Web                                                                                                                      
Bodnar Ioana a luat nota mai mare ca Prelipcean Radu la materia Logica                                                                                                                                  
Panaite Alexandru a luat nota mai mare ca Prelipcean Radu la materia Logica                                                                                                                             
Antonie Ioana a luat nota mai mare ca Prelipcean Radu la materia Logica                                                                                                                                 
Popescu Bogdan a luat nota mai mare ca Prelipcean Radu la materia Logica                                                                                                                                
Bodnar Ioana a luat nota mai mare ca Prelipcean Radu la materia Matematica                                                                                                                              
Ciobotariu Ciprian a luat nota mai mare ca Prelipcean Radu la materia Matematica                                                                                                                        
Bodnar Ioana a luat nota mai mare ca Prelipcean Radu la materia Matematica                                                                                                                              
Panaite Alexandru a luat nota mai mare ca Prelipcean Radu la materia Matematica                                                                                                                         
Arhire Raluca a luat nota mai mare ca Prelipcean Radu la materia Matematica                                                                                                                             
Antonie Ioana a luat nota mai mare ca Prelipcean Radu la materia Matematica                                                                                                                             
Popescu Bogdan a luat nota mai mare ca Prelipcean Radu la materia Matematica                                                                                                                            
Bodnar Ioana a luat nota mai mare ca Prelipcean Radu la materia OOP                                                                                                                                     
Ciobotariu Ciprian a luat nota mai mare ca Prelipcean Radu la materia OOP                                                                                                                               
Bodnar Ioana a luat nota mai mare ca Prelipcean Radu la materia OOP                                                                                                                                     
Panaite Alexandru a luat nota mai mare ca Prelipcean Radu la materia OOP                                                                                                                                
Arhire Raluca a luat nota mai mare ca Prelipcean Radu la materia OOP                                                                                                                                    
Antonie Ioana a luat nota mai mare ca Prelipcean Radu la materia OOP                                                                                                                                    
Popescu Bogdan a luat nota mai mare ca Prelipcean Radu la materia OOP                                                                                                                                   
Panaite Alexandru a luat nota mai mare ca Prelipcean Radu la materia BD                                                                                                                                 
Antonie Ioana a luat nota mai mare ca Prelipcean Radu la materia BD                                                                                                                                     
Popescu Bogdan a luat nota mai mare ca Prelipcean Radu la materia BD                                                                                                                                    
Panaite Alexandru a luat nota mai mare ca Prelipcean Radu la materia Java                                                                                                                               
Panaite Alexandru a luat nota mai mare ca Prelipcean Radu la materia Tehnologii Web                                                                                                                     
Antonie Ioana a luat nota mai mare ca Prelipcean Radu la materia Tehnologii Web                                                                                                                         
Popescu Bogdan a luat nota mai mare ca Prelipcean Radu la materia Tehnologii Web                                                                                                                        
Bodnar Ioana a luat nota mai mare ca Antonie Ioana la materia Logica                                                                                                                                    
Panaite Alexandru a luat nota mai mare ca Antonie Ioana la materia Logica                                                                                                                               
Bodnar Ioana a luat nota mai mare ca Antonie Ioana la materia Matematica                                                                                                                                
Bodnar Ioana a luat nota mai mare ca Antonie Ioana la materia OOP                                                                                                                                       
Bodnar Ioana a luat nota mai mare ca Antonie Ioana la materia OOP                                                                                                                                       
Panaite Alexandru a luat nota mai mare ca Antonie Ioana la materia OOP                                                                                                                                  
Arhire Raluca a luat nota mai mare ca Antonie Ioana la materia OOP                                                                                                                                      
Popescu Bogdan a luat nota mai mare ca Antonie Ioana la materia OOP                                                                                                                                     
Panaite Alexandru a luat nota mai mare ca Antonie Ioana la materia Java                                                                                                                                 
Arhire Raluca a luat nota mai mare ca Antonie Ioana la materia Java                                                                                                                                     
Prelipcean Radu a luat nota mai mare ca Antonie Ioana la materia Java                                                                                                                                   
Popescu Bogdan a luat nota mai mare ca Antonie Ioana la materia Java                                                                                                                                    
Panaite Alexandru a luat nota mai mare ca Antonie Ioana la materia Tehnologii Web                                                                                                                       
Popescu Bogdan a luat nota mai mare ca Antonie Ioana la materia Tehnologii Web                                                                                                                          

Comparare note                                                                                                                                                                                          
----------------------------------------------------------------------------------------------                                                                                                          
Bodnar Ioana a luat nota mai mare ca Arhire Raluca la materia Logica                                                                                                                                    
Ciobotariu Ciprian a luat nota mai mare ca Arhire Raluca la materia Logica                                                                                                                              
Archip Andrada a luat nota mai mare ca Arhire Raluca la materia Logica                                                                                                                                  
Bodnar Ioana a luat nota mai mare ca Arhire Raluca la materia Logica                                                                                                                                    
Panaite Alexandru a luat nota mai mare ca Arhire Raluca la materia Logica                                                                                                                               
Antonie Ioana a luat nota mai mare ca Arhire Raluca la materia Logica                                                                                                                                   
Prelipcean Radu a luat nota mai mare ca Arhire Raluca la materia Logica                                                                                                                                 
Popescu Bogdan a luat nota mai mare ca Arhire Raluca la materia Logica                                                                                                                                  
Bodnar Ioana a luat nota mai mare ca Arhire Raluca la materia Matematica                                                                                                                                
Panaite Alexandru a luat nota mai mare ca Arhire Raluca la materia BD                                                                                                                                   
Antonie Ioana a luat nota mai mare ca Arhire Raluca la materia BD                                                                                                                                       
Prelipcean Radu a luat nota mai mare ca Arhire Raluca la materia BD                                                                                                                                     
Popescu Bogdan a luat nota mai mare ca Arhire Raluca la materia BD                                                                                                                                      
Panaite Alexandru a luat nota mai mare ca Arhire Raluca la materia Java                                                                                                                                 
Prelipcean Radu a luat nota mai mare ca Arhire Raluca la materia Java                                                                                                                                   
Popescu Bogdan a luat nota mai mare ca Arhire Raluca la materia Java                                                                                                                                    
Panaite Alexandru a luat nota mai mare ca Arhire Raluca la materia Tehnologii Web                                                                                                                       
Antonie Ioana a luat nota mai mare ca Arhire Raluca la materia Tehnologii Web                                                                                                                           
Popescu Bogdan a luat nota mai mare ca Arhire Raluca la materia Tehnologii Web                                                                                                                          
Bodnar Ioana a luat nota mai mare ca Panaite Alexandru la materia Matematica                                                                                                                            
Bodnar Ioana a luat nota mai mare ca Panaite Alexandru la materia Matematica                                                                                                                            
Arhire Raluca a luat nota mai mare ca Panaite Alexandru la materia Matematica                                                                                                                           
Antonie Ioana a luat nota mai mare ca Panaite Alexandru la materia Matematica                                                                                                                           
Popescu Bogdan a luat nota mai mare ca Panaite Alexandru la materia Matematica                                                                                                                          
Panaite Alexandru a luat nota mai mare ca Bodnar Ioana la materia OOP                                                                                                                                   
Arhire Raluca a luat nota mai mare ca Bodnar Ioana la materia OOP                                                                                                                                       
Popescu Bogdan a luat nota mai mare ca Bodnar Ioana la materia OOP                                                                                                                                      
Bodnar Ioana a luat nota mai mare ca Archip Andrada la materia Logica                                                                                                                                   
Panaite Alexandru a luat nota mai mare ca Archip Andrada la materia Logica                                                                                                                              
Antonie Ioana a luat nota mai mare ca Archip Andrada la materia Logica                                                                                                                                  
Popescu Bogdan a luat nota mai mare ca Archip Andrada la materia Logica                                                                                                                                 
Bodnar Ioana a luat nota mai mare ca Archip Andrada la materia Matematica                                                                                                                               
Ciobotariu Ciprian a luat nota mai mare ca Archip Andrada la materia Matematica                                                                                                                         
Bodnar Ioana a luat nota mai mare ca Archip Andrada la materia Matematica                                                                                                                               
Panaite Alexandru a luat nota mai mare ca Archip Andrada la materia Matematica                                                                                                                          
Arhire Raluca a luat nota mai mare ca Archip Andrada la materia Matematica                                                                                                                              
Antonie Ioana a luat nota mai mare ca Archip Andrada la materia Matematica                                                                                                                              
Popescu Bogdan a luat nota mai mare ca Archip Andrada la materia Matematica                                                                                                                             
Bodnar Ioana a luat nota mai mare ca Archip Andrada la materia OOP                                                                                                                                      
Ciobotariu Ciprian a luat nota mai mare ca Archip Andrada la materia OOP                                                                                                                                
Bodnar Ioana a luat nota mai mare ca Archip Andrada la materia OOP                                                                                                                                      
Panaite Alexandru a luat nota mai mare ca Archip Andrada la materia OOP                                                                                                                                 
Arhire Raluca a luat nota mai mare ca Archip Andrada la materia OOP                                                                                                                                     
Antonie Ioana a luat nota mai mare ca Archip Andrada la materia OOP                                                                                                                                     
Prelipcean Radu a luat nota mai mare ca Archip Andrada la materia OOP                                                                                                                                   
Popescu Bogdan a luat nota mai mare ca Archip Andrada la materia OOP                                                                                                                                    
Bodnar Ioana a luat nota mai mare ca Ciobotariu Ciprian la materia Logica                                                                                                                               

Comparare note                                                                                                                                                                                          
----------------------------------------------------------------------------------------------                                                                                                          
Panaite Alexandru a luat nota mai mare ca Ciobotariu Ciprian la materia Logica                                                                                                                          
Antonie Ioana a luat nota mai mare ca Ciobotariu Ciprian la materia Logica                                                                                                                              
Popescu Bogdan a luat nota mai mare ca Ciobotariu Ciprian la materia Logica                                                                                                                             
Bodnar Ioana a luat nota mai mare ca Ciobotariu Ciprian la materia Matematica                                                                                                                           
Bodnar Ioana a luat nota mai mare ca Ciobotariu Ciprian la materia Matematica                                                                                                                           
Arhire Raluca a luat nota mai mare ca Ciobotariu Ciprian la materia Matematica                                                                                                                          
Antonie Ioana a luat nota mai mare ca Ciobotariu Ciprian la materia Matematica                                                                                                                          
Popescu Bogdan a luat nota mai mare ca Ciobotariu Ciprian la materia Matematica                                                                                                                         
Bodnar Ioana a luat nota mai mare ca Ciobotariu Ciprian la materia OOP                                                                                                                                  
Bodnar Ioana a luat nota mai mare ca Ciobotariu Ciprian la materia OOP                                                                                                                                  
Panaite Alexandru a luat nota mai mare ca Ciobotariu Ciprian la materia OOP                                                                                                                             
Arhire Raluca a luat nota mai mare ca Ciobotariu Ciprian la materia OOP                                                                                                                                 
Popescu Bogdan a luat nota mai mare ca Ciobotariu Ciprian la materia OOP                                                                                                                                
Bodnar Ioana a luat nota mai mare ca Bodnar Ioana la materia Logica                                                                                                                                     
Panaite Alexandru a luat nota mai mare ca Bodnar Ioana la materia Logica                                                                                                                                
Antonie Ioana a luat nota mai mare ca Bodnar Ioana la materia Logica                                                                                                                                    
Popescu Bogdan a luat nota mai mare ca Bodnar Ioana la materia Logica                                                                                                                                   
Bodnar Ioana a luat nota mai mare ca Bodnar Ioana la materia Matematica                                                                                                                                 
Arhire Raluca a luat nota mai mare ca Bodnar Ioana la materia Matematica                                                                                                                                
Antonie Ioana a luat nota mai mare ca Bodnar Ioana la materia Matematica                                                                                                                                
Popescu Bogdan a luat nota mai mare ca Bodnar Ioana la materia Matematica                                                                                                                               
Panaite Alexandru a luat nota mai mare ca Bodnar Ioana la materia OOP                                                                                                                                   
Arhire Raluca a luat nota mai mare ca Bodnar Ioana la materia OOP                                                                                                                                       
Popescu Bogdan a luat nota mai mare ca Bodnar Ioana la materia OOP                                                                                                                                      

118 rows selected.

SQL> select s.nume || ' ' || s.prenume || ' a luat nota mai mare ca ' || coleg.nume || ' ' || coleg.prenume || ' la materia ' || c.titlu_curs as "Comparare note" from note n1 join note n2 on n1.valoare>n2.valoare and n1.id_curs=n2.id_curs join studenti s on s.nr_matricol=n1.nr_matricol join studenti coleg on coleg.nr_matricol=n2.nr_matricol join cursuri c on c.id_curs=n1.id_curs;

Comparare note                                                                                                                                                                                          
----------------------------------------------------------------------------------------------                                                                                                          
Bodnar Ioana a luat nota mai mare ca Popescu Bogdan la materia Logica                                                                                                                                   
Panaite Alexandru a luat nota mai mare ca Popescu Bogdan la materia Logica                                                                                                                              
Antonie Ioana a luat nota mai mare ca Popescu Bogdan la materia Logica                                                                                                                                  
Bodnar Ioana a luat nota mai mare ca Popescu Bogdan la materia Matematica                                                                                                                               
Panaite Alexandru a luat nota mai mare ca Popescu Bogdan la materia BD                                                                                                                                  
Antonie Ioana a luat nota mai mare ca Popescu Bogdan la materia BD                                                                                                                                      
Panaite Alexandru a luat nota mai mare ca Popescu Bogdan la materia Java                                                                                                                                
Panaite Alexandru a luat nota mai mare ca Popescu Bogdan la materia Tehnologii Web                                                                                                                      
Bodnar Ioana a luat nota mai mare ca Prelipcean Radu la materia Logica                                                                                                                                  
Panaite Alexandru a luat nota mai mare ca Prelipcean Radu la materia Logica                                                                                                                             
Antonie Ioana a luat nota mai mare ca Prelipcean Radu la materia Logica                                                                                                                                 
Popescu Bogdan a luat nota mai mare ca Prelipcean Radu la materia Logica                                                                                                                                
Bodnar Ioana a luat nota mai mare ca Prelipcean Radu la materia Matematica                                                                                                                              
Ciobotariu Ciprian a luat nota mai mare ca Prelipcean Radu la materia Matematica                                                                                                                        
Bodnar Ioana a luat nota mai mare ca Prelipcean Radu la materia Matematica                                                                                                                              
Panaite Alexandru a luat nota mai mare ca Prelipcean Radu la materia Matematica                                                                                                                         
Arhire Raluca a luat nota mai mare ca Prelipcean Radu la materia Matematica                                                                                                                             
Antonie Ioana a luat nota mai mare ca Prelipcean Radu la materia Matematica                                                                                                                             
Popescu Bogdan a luat nota mai mare ca Prelipcean Radu la materia Matematica                                                                                                                            
Bodnar Ioana a luat nota mai mare ca Prelipcean Radu la materia OOP                                                                                                                                     
Ciobotariu Ciprian a luat nota mai mare ca Prelipcean Radu la materia OOP                                                                                                                               
Bodnar Ioana a luat nota mai mare ca Prelipcean Radu la materia OOP                                                                                                                                     
Panaite Alexandru a luat nota mai mare ca Prelipcean Radu la materia OOP                                                                                                                                
Arhire Raluca a luat nota mai mare ca Prelipcean Radu la materia OOP                                                                                                                                    
Antonie Ioana a luat nota mai mare ca Prelipcean Radu la materia OOP                                                                                                                                    
Popescu Bogdan a luat nota mai mare ca Prelipcean Radu la materia OOP                                                                                                                                   
Panaite Alexandru a luat nota mai mare ca Prelipcean Radu la materia BD                                                                                                                                 
Antonie Ioana a luat nota mai mare ca Prelipcean Radu la materia BD                                                                                                                                     
Popescu Bogdan a luat nota mai mare ca Prelipcean Radu la materia BD                                                                                                                                    
Panaite Alexandru a luat nota mai mare ca Prelipcean Radu la materia Java                                                                                                                               
Panaite Alexandru a luat nota mai mare ca Prelipcean Radu la materia Tehnologii Web                                                                                                                     
Antonie Ioana a luat nota mai mare ca Prelipcean Radu la materia Tehnologii Web                                                                                                                         
Popescu Bogdan a luat nota mai mare ca Prelipcean Radu la materia Tehnologii Web                                                                                                                        
Bodnar Ioana a luat nota mai mare ca Antonie Ioana la materia Logica                                                                                                                                    
Panaite Alexandru a luat nota mai mare ca Antonie Ioana la materia Logica                                                                                                                               
Bodnar Ioana a luat nota mai mare ca Antonie Ioana la materia Matematica                                                                                                                                
Bodnar Ioana a luat nota mai mare ca Antonie Ioana la materia OOP                                                                                                                                       
Bodnar Ioana a luat nota mai mare ca Antonie Ioana la materia OOP                                                                                                                                       
Panaite Alexandru a luat nota mai mare ca Antonie Ioana la materia OOP                                                                                                                                  
Arhire Raluca a luat nota mai mare ca Antonie Ioana la materia OOP                                                                                                                                      
Popescu Bogdan a luat nota mai mare ca Antonie Ioana la materia OOP                                                                                                                                     
Panaite Alexandru a luat nota mai mare ca Antonie Ioana la materia Java                                                                                                                                 
Arhire Raluca a luat nota mai mare ca Antonie Ioana la materia Java                                                                                                                                     
Prelipcean Radu a luat nota mai mare ca Antonie Ioana la materia Java                                                                                                                                   
Popescu Bogdan a luat nota mai mare ca Antonie Ioana la materia Java                                                                                                                                    
Panaite Alexandru a luat nota mai mare ca Antonie Ioana la materia Tehnologii Web                                                                                                                       
Popescu Bogdan a luat nota mai mare ca Antonie Ioana la materia Tehnologii Web                                                                                                                          

Comparare note                                                                                                                                                                                          
----------------------------------------------------------------------------------------------                                                                                                          
Bodnar Ioana a luat nota mai mare ca Arhire Raluca la materia Logica                                                                                                                                    
Ciobotariu Ciprian a luat nota mai mare ca Arhire Raluca la materia Logica                                                                                                                              
Archip Andrada a luat nota mai mare ca Arhire Raluca la materia Logica                                                                                                                                  
Bodnar Ioana a luat nota mai mare ca Arhire Raluca la materia Logica                                                                                                                                    
Panaite Alexandru a luat nota mai mare ca Arhire Raluca la materia Logica                                                                                                                               
Antonie Ioana a luat nota mai mare ca Arhire Raluca la materia Logica                                                                                                                                   
Prelipcean Radu a luat nota mai mare ca Arhire Raluca la materia Logica                                                                                                                                 
Popescu Bogdan a luat nota mai mare ca Arhire Raluca la materia Logica                                                                                                                                  
Bodnar Ioana a luat nota mai mare ca Arhire Raluca la materia Matematica                                                                                                                                
Panaite Alexandru a luat nota mai mare ca Arhire Raluca la materia BD                                                                                                                                   
Antonie Ioana a luat nota mai mare ca Arhire Raluca la materia BD                                                                                                                                       
Prelipcean Radu a luat nota mai mare ca Arhire Raluca la materia BD                                                                                                                                     
Popescu Bogdan a luat nota mai mare ca Arhire Raluca la materia BD                                                                                                                                      
Panaite Alexandru a luat nota mai mare ca Arhire Raluca la materia Java                                                                                                                                 
Prelipcean Radu a luat nota mai mare ca Arhire Raluca la materia Java                                                                                                                                   
Popescu Bogdan a luat nota mai mare ca Arhire Raluca la materia Java                                                                                                                                    
Panaite Alexandru a luat nota mai mare ca Arhire Raluca la materia Tehnologii Web                                                                                                                       
Antonie Ioana a luat nota mai mare ca Arhire Raluca la materia Tehnologii Web                                                                                                                           
Popescu Bogdan a luat nota mai mare ca Arhire Raluca la materia Tehnologii Web                                                                                                                          
Bodnar Ioana a luat nota mai mare ca Panaite Alexandru la materia Matematica                                                                                                                            
Bodnar Ioana a luat nota mai mare ca Panaite Alexandru la materia Matematica                                                                                                                            
Arhire Raluca a luat nota mai mare ca Panaite Alexandru la materia Matematica                                                                                                                           
Antonie Ioana a luat nota mai mare ca Panaite Alexandru la materia Matematica                                                                                                                           
Popescu Bogdan a luat nota mai mare ca Panaite Alexandru la materia Matematica                                                                                                                          
Panaite Alexandru a luat nota mai mare ca Bodnar Ioana la materia OOP                                                                                                                                   
Arhire Raluca a luat nota mai mare ca Bodnar Ioana la materia OOP                                                                                                                                       
Popescu Bogdan a luat nota mai mare ca Bodnar Ioana la materia OOP                                                                                                                                      
Bodnar Ioana a luat nota mai mare ca Archip Andrada la materia Logica                                                                                                                                   
Panaite Alexandru a luat nota mai mare ca Archip Andrada la materia Logica                                                                                                                              
Antonie Ioana a luat nota mai mare ca Archip Andrada la materia Logica                                                                                                                                  
Popescu Bogdan a luat nota mai mare ca Archip Andrada la materia Logica                                                                                                                                 
Bodnar Ioana a luat nota mai mare ca Archip Andrada la materia Matematica                                                                                                                               
Ciobotariu Ciprian a luat nota mai mare ca Archip Andrada la materia Matematica                                                                                                                         
Bodnar Ioana a luat nota mai mare ca Archip Andrada la materia Matematica                                                                                                                               
Panaite Alexandru a luat nota mai mare ca Archip Andrada la materia Matematica                                                                                                                          
Arhire Raluca a luat nota mai mare ca Archip Andrada la materia Matematica                                                                                                                              
Antonie Ioana a luat nota mai mare ca Archip Andrada la materia Matematica                                                                                                                              
Popescu Bogdan a luat nota mai mare ca Archip Andrada la materia Matematica                                                                                                                             
Bodnar Ioana a luat nota mai mare ca Archip Andrada la materia OOP                                                                                                                                      
Ciobotariu Ciprian a luat nota mai mare ca Archip Andrada la materia OOP                                                                                                                                
Bodnar Ioana a luat nota mai mare ca Archip Andrada la materia OOP                                                                                                                                      
Panaite Alexandru a luat nota mai mare ca Archip Andrada la materia OOP                                                                                                                                 
Arhire Raluca a luat nota mai mare ca Archip Andrada la materia OOP                                                                                                                                     
Antonie Ioana a luat nota mai mare ca Archip Andrada la materia OOP                                                                                                                                     
Prelipcean Radu a luat nota mai mare ca Archip Andrada la materia OOP                                                                                                                                   
Popescu Bogdan a luat nota mai mare ca Archip Andrada la materia OOP                                                                                                                                    
Bodnar Ioana a luat nota mai mare ca Ciobotariu Ciprian la materia Logica                                                                                                                               

Comparare note                                                                                                                                                                                          
----------------------------------------------------------------------------------------------                                                                                                          
Panaite Alexandru a luat nota mai mare ca Ciobotariu Ciprian la materia Logica                                                                                                                          
Antonie Ioana a luat nota mai mare ca Ciobotariu Ciprian la materia Logica                                                                                                                              
Popescu Bogdan a luat nota mai mare ca Ciobotariu Ciprian la materia Logica                                                                                                                             
Bodnar Ioana a luat nota mai mare ca Ciobotariu Ciprian la materia Matematica                                                                                                                           
Bodnar Ioana a luat nota mai mare ca Ciobotariu Ciprian la materia Matematica                                                                                                                           
Arhire Raluca a luat nota mai mare ca Ciobotariu Ciprian la materia Matematica                                                                                                                          
Antonie Ioana a luat nota mai mare ca Ciobotariu Ciprian la materia Matematica                                                                                                                          
Popescu Bogdan a luat nota mai mare ca Ciobotariu Ciprian la materia Matematica                                                                                                                         
Bodnar Ioana a luat nota mai mare ca Ciobotariu Ciprian la materia OOP                                                                                                                                  
Bodnar Ioana a luat nota mai mare ca Ciobotariu Ciprian la materia OOP                                                                                                                                  
Panaite Alexandru a luat nota mai mare ca Ciobotariu Ciprian la materia OOP                                                                                                                             
Arhire Raluca a luat nota mai mare ca Ciobotariu Ciprian la materia OOP                                                                                                                                 
Popescu Bogdan a luat nota mai mare ca Ciobotariu Ciprian la materia OOP                                                                                                                                
Bodnar Ioana a luat nota mai mare ca Bodnar Ioana la materia Logica                                                                                                                                     
Panaite Alexandru a luat nota mai mare ca Bodnar Ioana la materia Logica                                                                                                                                
Antonie Ioana a luat nota mai mare ca Bodnar Ioana la materia Logica                                                                                                                                    
Popescu Bogdan a luat nota mai mare ca Bodnar Ioana la materia Logica                                                                                                                                   
Bodnar Ioana a luat nota mai mare ca Bodnar Ioana la materia Matematica                                                                                                                                 
Arhire Raluca a luat nota mai mare ca Bodnar Ioana la materia Matematica                                                                                                                                
Antonie Ioana a luat nota mai mare ca Bodnar Ioana la materia Matematica                                                                                                                                
Popescu Bogdan a luat nota mai mare ca Bodnar Ioana la materia Matematica                                                                                                                               
Panaite Alexandru a luat nota mai mare ca Bodnar Ioana la materia OOP                                                                                                                                   
Arhire Raluca a luat nota mai mare ca Bodnar Ioana la materia OOP                                                                                                                                       
Popescu Bogdan a luat nota mai mare ca Bodnar Ioana la materia OOP                                                                                                                                      

118 rows selected.

SQL> select s.nume, s.prenume, c.nume, c.prenume, s.data_nastere-c.data_nastere as "Diferenta zile" from studenti s join studenti c on s.nr_matricol!=c.nr_matricol and s.data_nastere>c.data_nastere order by s.data_nastere-c.data_nastere;

NUME       PRENUME    NUME       PRENUME    Diferenta zile                                                                                                                                              
---------- ---------- ---------- ---------- --------------                                                                                                                                              
Bucur      Andreea    Cobzaru    George                 11                                                                                                                                              
Prelipcean Radu       Panaite    Alexandru              43                                                                                                                                              
Popescu    Bogdan     Antonie    Ioana                  45                                                                                                                                              
Arhire     Alexandra  Bucur      Andreea                53                                                                                                                                              
Pintescu   Andrei     Arhire     Alexandra              55                                                                                                                                              
Panaite    Alexandru  Popescu    Bogdan                 55                                                                                                                                              
Arhire     Alexandra  Cobzaru    George                 64                                                                                                                                              
Bodnar     Ioana      Ciobotariu Ciprian                68                                                                                                                                              
Bodnar     Ioana      Archip     Andrada                68                                                                                                                                              
Bodnar     Ioana      Bodnar     Ioana                  77                                                                                                                                              
Prelipcean Radu       Popescu    Bogdan                 98                                                                                                                                              
Archip     Andrada    Arhire     Raluca                 99                                                                                                                                              
Ciobotariu Ciprian    Arhire     Raluca                 99                                                                                                                                              
Panaite    Alexandru  Antonie    Ioana                 100                                                                                                                                              
Pintescu   Andrei     Bucur      Andreea               108                                                                                                                                              
Pintescu   Andrei     Cobzaru    George                119                                                                                                                                              
Prelipcean Radu       Antonie    Ioana                 143                                                                                                                                              
Bodnar     Ioana      Archip     Andrada               145                                                                                                                                              
Bodnar     Ioana      Ciobotariu Ciprian               145                                                                                                                                              
Bodnar     Ioana      Arhire     Raluca                167                                                                                                                                              
Arhire     Raluca     Prelipcean Radu                  214                                                                                                                                              
Bodnar     Ioana      Arhire     Raluca                244                                                                                                                                              
Cobzaru    George     Bodnar     Ioana                 246                                                                                                                                              
Arhire     Raluca     Panaite    Alexandru             257                                                                                                                                              
Bucur      Andreea    Bodnar     Ioana                 257                                                                                                                                              
Arhire     Alexandra  Bodnar     Ioana                 310                                                                                                                                              
Arhire     Raluca     Popescu    Bogdan                312                                                                                                                                              
Ciobotariu Ciprian    Prelipcean Radu                  313                                                                                                                                              
Archip     Andrada    Prelipcean Radu                  313                                                                                                                                              
Cobzaru    George     Bodnar     Ioana                 323                                                                                                                                              
Bucur      Andreea    Bodnar     Ioana                 334                                                                                                                                              
Archip     Andrada    Panaite    Alexandru             356                                                                                                                                              
Ciobotariu Ciprian    Panaite    Alexandru             356                                                                                                                                              
Arhire     Raluca     Antonie    Ioana                 357                                                                                                                                              
Pintescu   Andrei     Bodnar     Ioana                 365                                                                                                                                              
Bodnar     Ioana      Prelipcean Radu                  381                                                                                                                                              
Arhire     Alexandra  Bodnar     Ioana                 387                                                                                                                                              
Cobzaru    George     Ciobotariu Ciprian               391                                                                                                                                              
Cobzaru    George     Archip     Andrada               391                                                                                                                                              
Bucur      Andreea    Archip     Andrada               402                                                                                                                                              
Bucur      Andreea    Ciobotariu Ciprian               402                                                                                                                                              
Archip     Andrada    Popescu    Bogdan                411                                                                                                                                              
Ciobotariu Ciprian    Popescu    Bogdan                411                                                                                                                                              
Bodnar     Ioana      Panaite    Alexandru             424                                                                                                                                              
Pintescu   Andrei     Bodnar     Ioana                 442                                                                                                                                              
Arhire     Alexandra  Ciobotariu Ciprian               455                                                                                                                                              
Arhire     Alexandra  Archip     Andrada               455                                                                                                                                              

NUME       PRENUME    NUME       PRENUME    Diferenta zile                                                                                                                                              
---------- ---------- ---------- ---------- --------------                                                                                                                                              
Archip     Andrada    Antonie    Ioana                 456                                                                                                                                              
Ciobotariu Ciprian    Antonie    Ioana                 456                                                                                                                                              
Bodnar     Ioana      Prelipcean Radu                  458                                                                                                                                              
Bodnar     Ioana      Popescu    Bogdan                479                                                                                                                                              
Cobzaru    George     Arhire     Raluca                490                                                                                                                                              
Bucur      Andreea    Arhire     Raluca                501                                                                                                                                              
Bodnar     Ioana      Panaite    Alexandru             501                                                                                                                                              
Pintescu   Andrei     Archip     Andrada               510                                                                                                                                              
Pintescu   Andrei     Ciobotariu Ciprian               510                                                                                                                                              
Bodnar     Ioana      Antonie    Ioana                 524                                                                                                                                              
Arhire     Alexandra  Arhire     Raluca                554                                                                                                                                              
Bodnar     Ioana      Popescu    Bogdan                556                                                                                                                                              
Bodnar     Ioana      Antonie    Ioana                 601                                                                                                                                              
Pintescu   Andrei     Arhire     Raluca                609                                                                                                                                              
Cobzaru    George     Prelipcean Radu                  704                                                                                                                                              
Bucur      Andreea    Prelipcean Radu                  715                                                                                                                                              
Cobzaru    George     Panaite    Alexandru             747                                                                                                                                              
Bucur      Andreea    Panaite    Alexandru             758                                                                                                                                              
Arhire     Alexandra  Prelipcean Radu                  768                                                                                                                                              
Cobzaru    George     Popescu    Bogdan                802                                                                                                                                              
Arhire     Alexandra  Panaite    Alexandru             811                                                                                                                                              
Bucur      Andreea    Popescu    Bogdan                813                                                                                                                                              
Pintescu   Andrei     Prelipcean Radu                  823                                                                                                                                              
Cobzaru    George     Antonie    Ioana                 847                                                                                                                                              
Bucur      Andreea    Antonie    Ioana                 858                                                                                                                                              
Arhire     Alexandra  Popescu    Bogdan                866                                                                                                                                              
Pintescu   Andrei     Panaite    Alexandru             866                                                                                                                                              
Arhire     Alexandra  Antonie    Ioana                 911                                                                                                                                              
Pintescu   Andrei     Popescu    Bogdan                921                                                                                                                                              
Pintescu   Andrei     Antonie    Ioana                 966                                                                                                                                              

77 rows selected.

SQL> select s.nume, s.prenume, c.nume, c.prenume, s.data_nastere-c.data_nastere as "Diferenta zile" from studenti s join studenti c on s.nr_matricol!=c.nr_matricol and s.data_nastere>=c.data_nastere order by s.data_nastere-c.data_nastere;

NUME       PRENUME    NUME       PRENUME    Diferenta zile                                                                                                                                              
---------- ---------- ---------- ---------- --------------                                                                                                                                              
Archip     Andrada    Ciobotariu Ciprian                 0                                                                                                                                              
Ciobotariu Ciprian    Archip     Andrada                 0                                                                                                                                              
Bucur      Andreea    Cobzaru    George                 11                                                                                                                                              
Prelipcean Radu       Panaite    Alexandru              43                                                                                                                                              
Popescu    Bogdan     Antonie    Ioana                  45                                                                                                                                              
Arhire     Alexandra  Bucur      Andreea                53                                                                                                                                              
Pintescu   Andrei     Arhire     Alexandra              55                                                                                                                                              
Panaite    Alexandru  Popescu    Bogdan                 55                                                                                                                                              
Arhire     Alexandra  Cobzaru    George                 64                                                                                                                                              
Bodnar     Ioana      Ciobotariu Ciprian                68                                                                                                                                              
Bodnar     Ioana      Archip     Andrada                68                                                                                                                                              
Bodnar     Ioana      Bodnar     Ioana                  77                                                                                                                                              
Prelipcean Radu       Popescu    Bogdan                 98                                                                                                                                              
Archip     Andrada    Arhire     Raluca                 99                                                                                                                                              
Ciobotariu Ciprian    Arhire     Raluca                 99                                                                                                                                              
Panaite    Alexandru  Antonie    Ioana                 100                                                                                                                                              
Pintescu   Andrei     Bucur      Andreea               108                                                                                                                                              
Pintescu   Andrei     Cobzaru    George                119                                                                                                                                              
Prelipcean Radu       Antonie    Ioana                 143                                                                                                                                              
Bodnar     Ioana      Archip     Andrada               145                                                                                                                                              
Bodnar     Ioana      Ciobotariu Ciprian               145                                                                                                                                              
Bodnar     Ioana      Arhire     Raluca                167                                                                                                                                              
Arhire     Raluca     Prelipcean Radu                  214                                                                                                                                              
Bodnar     Ioana      Arhire     Raluca                244                                                                                                                                              
Cobzaru    George     Bodnar     Ioana                 246                                                                                                                                              
Arhire     Raluca     Panaite    Alexandru             257                                                                                                                                              
Bucur      Andreea    Bodnar     Ioana                 257                                                                                                                                              
Arhire     Alexandra  Bodnar     Ioana                 310                                                                                                                                              
Arhire     Raluca     Popescu    Bogdan                312                                                                                                                                              
Ciobotariu Ciprian    Prelipcean Radu                  313                                                                                                                                              
Archip     Andrada    Prelipcean Radu                  313                                                                                                                                              
Cobzaru    George     Bodnar     Ioana                 323                                                                                                                                              
Bucur      Andreea    Bodnar     Ioana                 334                                                                                                                                              
Archip     Andrada    Panaite    Alexandru             356                                                                                                                                              
Ciobotariu Ciprian    Panaite    Alexandru             356                                                                                                                                              
Arhire     Raluca     Antonie    Ioana                 357                                                                                                                                              
Pintescu   Andrei     Bodnar     Ioana                 365                                                                                                                                              
Bodnar     Ioana      Prelipcean Radu                  381                                                                                                                                              
Arhire     Alexandra  Bodnar     Ioana                 387                                                                                                                                              
Cobzaru    George     Ciobotariu Ciprian               391                                                                                                                                              
Cobzaru    George     Archip     Andrada               391                                                                                                                                              
Bucur      Andreea    Archip     Andrada               402                                                                                                                                              
Bucur      Andreea    Ciobotariu Ciprian               402                                                                                                                                              
Archip     Andrada    Popescu    Bogdan                411                                                                                                                                              
Ciobotariu Ciprian    Popescu    Bogdan                411                                                                                                                                              
Bodnar     Ioana      Panaite    Alexandru             424                                                                                                                                              
Pintescu   Andrei     Bodnar     Ioana                 442                                                                                                                                              

NUME       PRENUME    NUME       PRENUME    Diferenta zile                                                                                                                                              
---------- ---------- ---------- ---------- --------------                                                                                                                                              
Arhire     Alexandra  Ciobotariu Ciprian               455                                                                                                                                              
Arhire     Alexandra  Archip     Andrada               455                                                                                                                                              
Archip     Andrada    Antonie    Ioana                 456                                                                                                                                              
Ciobotariu Ciprian    Antonie    Ioana                 456                                                                                                                                              
Bodnar     Ioana      Prelipcean Radu                  458                                                                                                                                              
Bodnar     Ioana      Popescu    Bogdan                479                                                                                                                                              
Cobzaru    George     Arhire     Raluca                490                                                                                                                                              
Bucur      Andreea    Arhire     Raluca                501                                                                                                                                              
Bodnar     Ioana      Panaite    Alexandru             501                                                                                                                                              
Pintescu   Andrei     Archip     Andrada               510                                                                                                                                              
Pintescu   Andrei     Ciobotariu Ciprian               510                                                                                                                                              
Bodnar     Ioana      Antonie    Ioana                 524                                                                                                                                              
Arhire     Alexandra  Arhire     Raluca                554                                                                                                                                              
Bodnar     Ioana      Popescu    Bogdan                556                                                                                                                                              
Bodnar     Ioana      Antonie    Ioana                 601                                                                                                                                              
Pintescu   Andrei     Arhire     Raluca                609                                                                                                                                              
Cobzaru    George     Prelipcean Radu                  704                                                                                                                                              
Bucur      Andreea    Prelipcean Radu                  715                                                                                                                                              
Cobzaru    George     Panaite    Alexandru             747                                                                                                                                              
Bucur      Andreea    Panaite    Alexandru             758                                                                                                                                              
Arhire     Alexandra  Prelipcean Radu                  768                                                                                                                                              
Cobzaru    George     Popescu    Bogdan                802                                                                                                                                              
Arhire     Alexandra  Panaite    Alexandru             811                                                                                                                                              
Bucur      Andreea    Popescu    Bogdan                813                                                                                                                                              
Pintescu   Andrei     Prelipcean Radu                  823                                                                                                                                              
Cobzaru    George     Antonie    Ioana                 847                                                                                                                                              
Bucur      Andreea    Antonie    Ioana                 858                                                                                                                                              
Arhire     Alexandra  Popescu    Bogdan                866                                                                                                                                              
Pintescu   Andrei     Panaite    Alexandru             866                                                                                                                                              
Arhire     Alexandra  Antonie    Ioana                 911                                                                                                                                              
Pintescu   Andrei     Popescu    Bogdan                921                                                                                                                                              
Pintescu   Andrei     Antonie    Ioana                 966                                                                                                                                              

79 rows selected.

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

SQL> select distinct titlu_curs from cursuri minus select distinct c.titlu_curs from note n join cursuri c on n.id_curs=c.id_curs where n.valoare>8;

TITLU_CURS                                                                                                                                                                                              
---------------                                                                                                                                                                                         
DSFUM                                                                                                                                                                                                   
Java                                                                                                                                                                                                    
Limbaje formale                                                                                                                                                                                         
Sec. Info.                                                                                                                                                                                              

SQL> select * from note n join cursuri c on n.id_curs=c.id_curs;

NR_MAT ID_C    VALOARE DATA_NOTA ID_C TITLU_CURS              AN   SEMESTRU    CREDITE                                                                                                                  
------ ---- ---------- --------- ---- --------------- ---------- ---------- ----------                                                                                                                  
111    21            8 17-FEB-14 21   Logica                   1          1          5                                                                                                                  
111    22            9 19-FEB-14 22   Matematica               1          1          4                                                                                                                  
111    23           10 24-JUN-14 23   OOP                      1          2          5                                                                                                                  
111    24            9 17-FEB-15 24   BD                       2          1          8                                                                                                                  
111    25            7 20-JUN-15 25   Java                     2          2          5                                                                                                                  
111    26            8 21-JUN-15 26   Tehnologii Web           2          2          5                                                                                                                  
112    21            7 25-FEB-14 21   Logica                   1          1          5                                                                                                                  
112    22            6 19-FEB-14 22   Matematica               1          1          4                                                                                                                  
112    23            5 24-JUN-14 23   OOP                      1          2          5                                                                                                                  
112    24            6 17-FEB-15 24   BD                       2          1          8                                                                                                                  
112    25            7 20-JUN-15 25   Java                     2          2          5                                                                                                                  
112    26            4 21-JUN-15 26   Tehnologii Web           2          2          5                                                                                                                  
113    21            9 17-FEB-14 21   Logica                   1          1          5                                                                                                                  
113    22            9 19-FEB-14 22   Matematica               1          1          4                                                                                                                  
113    23            7 24-JUN-14 23   OOP                      1          2          5                                                                                                                  
113    24           10 17-FEB-15 24   BD                       2          1          8                                                                                                                  
113    25            4 20-JUN-15 25   Java                     2          2          5                                                                                                                  
113    26            7 21-JUN-15 26   Tehnologii Web           2          2          5                                                                                                                  
114    21            6 17-FEB-14 21   Logica                   1          1          5                                                                                                                  
114    22            9 19-FEB-14 22   Matematica               1          1          4                                                                                                                  
114    23           10 24-JUN-14 23   OOP                      1          2          5                                                                                                                  
114    24            4 17-FEB-15 24   BD                       2          1          8                                                                                                                  
114    25            5 20-JUN-15 25   Java                     2          2          5                                                                                                                  
114    26            4 21-JUN-15 26   Tehnologii Web           2          2          5                                                                                                                  
115    21           10 17-FEB-14 21   Logica                   1          1          5                                                                                                                  
115    22            7 19-FEB-14 22   Matematica               1          1          4                                                                                                                  
115    23           10 24-JUN-14 23   OOP                      1          2          5                                                                                                                  
115    24           10 17-FEB-15 24   BD                       2          1          8                                                                                                                  
115    25            8 20-JUN-15 25   Java                     2          2          5                                                                                                                  
115    26            9 21-JUN-15 26   Tehnologii Web           2          2          5                                                                                                                  
116    21           10 18-FEB-15 21   Logica                   1          1          5                                                                                                                  
116    22           10 20-FEB-15 22   Matematica               1          1          4                                                                                                                  
116    23            9 21-JUN-15 23   OOP                      1          2          5                                                                                                                  
117    21            7 18-FEB-15 21   Logica                   1          1          5                                                                                                                  
117    22            6 20-FEB-15 22   Matematica               1          1          4                                                                                                                  
117    23            4 25-JUN-15 23   OOP                      1          2          5                                                                                                                  
118    21            7 22-FEB-15 21   Logica                   1          1          5                                                                                                                  
118    22            7 24-FEB-15 22   Matematica               1          1          4                                                                                                                  
118    23            7 21-JUN-15 23   OOP                      1          2          5                                                                                                                  
119    21            7 18-FEB-15 21   Logica                   1          1          5                                                                                                                  
119    22            8 20-FEB-15 22   Matematica               1          1          4                                                                                                                  
119    23            9 21-JUN-15 23   OOP                      1          2          5                                                                                                                  

42 rows selected.

SQL> select distinct c.titlu_curs from note n join cursuri c on n.id_curs=c.id_curs minus select distinct c.titlu_curs from note n join cursuri c on n.id_curs=c.id_curs where n.valoare>8;

TITLU_CURS                                                                                                                                                                                              
---------------                                                                                                                                                                                         
Java                                                                                                                                                                                                    

SQL> select distinct s.nume, s.prenume from studenti s join note n on s.nr_matricol=n.nr_matricol minus select distinct s.nume, s.prenume from studenti s join note n on s.nr_matricol=n.nr_matricol where n.valoare<7;

NUME       PRENUME                                                                                                                                                                                      
---------- ----------                                                                                                                                                                                   
Bodnar     Ioana                                                                                                                                                                                        
Ciobotariu Ciprian                                                                                                                                                                                      
Panaite    Alexandru                                                                                                                                                                                    
Popescu    Bogdan                                                                                                                                                                                       

SQL> select * from note n join cursuri c on n.id_curs=c.id_curs;

NR_MAT ID_C    VALOARE DATA_NOTA ID_C TITLU_CURS              AN   SEMESTRU    CREDITE                                                                                                                  
------ ---- ---------- --------- ---- --------------- ---------- ---------- ----------                                                                                                                  
111    21            8 17-FEB-14 21   Logica                   1          1          5                                                                                                                  
111    22            9 19-FEB-14 22   Matematica               1          1          4                                                                                                                  
111    23           10 24-JUN-14 23   OOP                      1          2          5                                                                                                                  
111    24            9 17-FEB-15 24   BD                       2          1          8                                                                                                                  
111    25            7 20-JUN-15 25   Java                     2          2          5                                                                                                                  
111    26            8 21-JUN-15 26   Tehnologii Web           2          2          5                                                                                                                  
112    21            7 25-FEB-14 21   Logica                   1          1          5                                                                                                                  
112    22            6 19-FEB-14 22   Matematica               1          1          4                                                                                                                  
112    23            5 24-JUN-14 23   OOP                      1          2          5                                                                                                                  
112    24            6 17-FEB-15 24   BD                       2          1          8                                                                                                                  
112    25            7 20-JUN-15 25   Java                     2          2          5                                                                                                                  
112    26            4 21-JUN-15 26   Tehnologii Web           2          2          5                                                                                                                  
113    21            9 17-FEB-14 21   Logica                   1          1          5                                                                                                                  
113    22            9 19-FEB-14 22   Matematica               1          1          4                                                                                                                  
113    23            7 24-JUN-14 23   OOP                      1          2          5                                                                                                                  
113    24           10 17-FEB-15 24   BD                       2          1          8                                                                                                                  
113    25            4 20-JUN-15 25   Java                     2          2          5                                                                                                                  
113    26            7 21-JUN-15 26   Tehnologii Web           2          2          5                                                                                                                  
114    21            6 17-FEB-14 21   Logica                   1          1          5                                                                                                                  
114    22            9 19-FEB-14 22   Matematica               1          1          4                                                                                                                  
114    23           10 24-JUN-14 23   OOP                      1          2          5                                                                                                                  
114    24            4 17-FEB-15 24   BD                       2          1          8                                                                                                                  
114    25            5 20-JUN-15 25   Java                     2          2          5                                                                                                                  
114    26            4 21-JUN-15 26   Tehnologii Web           2          2          5                                                                                                                  
115    21           10 17-FEB-14 21   Logica                   1          1          5                                                                                                                  
115    22            7 19-FEB-14 22   Matematica               1          1          4                                                                                                                  
115    23           10 24-JUN-14 23   OOP                      1          2          5                                                                                                                  
115    24           10 17-FEB-15 24   BD                       2          1          8                                                                                                                  
115    25            8 20-JUN-15 25   Java                     2          2          5                                                                                                                  
115    26            9 21-JUN-15 26   Tehnologii Web           2          2          5                                                                                                                  
116    21           10 18-FEB-15 21   Logica                   1          1          5                                                                                                                  
116    22           10 20-FEB-15 22   Matematica               1          1          4                                                                                                                  
116    23            9 21-JUN-15 23   OOP                      1          2          5                                                                                                                  
117    21            7 18-FEB-15 21   Logica                   1          1          5                                                                                                                  
117    22            6 20-FEB-15 22   Matematica               1          1          4                                                                                                                  
117    23            4 25-JUN-15 23   OOP                      1          2          5                                                                                                                  
118    21            7 22-FEB-15 21   Logica                   1          1          5                                                                                                                  
118    22            7 24-FEB-15 22   Matematica               1          1          4                                                                                                                  
118    23            7 21-JUN-15 23   OOP                      1          2          5                                                                                                                  
119    21            7 18-FEB-15 21   Logica                   1          1          5                                                                                                                  
119    22            8 20-FEB-15 22   Matematica               1          1          4                                                                                                                  
119    23            9 21-JUN-15 23   OOP                      1          2          5                                                                                                                  

42 rows selected.

SQL> select * from note n join cursuri c on n.id_curs=c.id_curs join studenti s on s.nr_matricol=n.nr_matricol;

NR_MAT ID_C    VALOARE DATA_NOTA ID_C TITLU_CURS              AN   SEMESTRU    CREDITE NR_MAT NUME       PRENUME            AN GR      BURSA DATA_NAST                                                  
------ ---- ---------- --------- ---- --------------- ---------- ---------- ---------- ------ ---------- ---------- ---------- -- ---------- ---------                                                  
111    26            8 21-JUN-15 26   Tehnologii Web           2          2          5 111    Popescu    Bogdan              3 A2            17-FEB-95                                                  
111    25            7 20-JUN-15 25   Java                     2          2          5 111    Popescu    Bogdan              3 A2            17-FEB-95                                                  
111    24            9 17-FEB-15 24   BD                       2          1          8 111    Popescu    Bogdan              3 A2            17-FEB-95                                                  
111    23           10 24-JUN-14 23   OOP                      1          2          5 111    Popescu    Bogdan              3 A2            17-FEB-95                                                  
111    22            9 19-FEB-14 22   Matematica               1          1          4 111    Popescu    Bogdan              3 A2            17-FEB-95                                                  
111    21            8 17-FEB-14 21   Logica                   1          1          5 111    Popescu    Bogdan              3 A2            17-FEB-95                                                  
112    26            4 21-JUN-15 26   Tehnologii Web           2          2          5 112    Prelipcean Radu                3 A2            26-MAY-95                                                  
112    25            7 20-JUN-15 25   Java                     2          2          5 112    Prelipcean Radu                3 A2            26-MAY-95                                                  
112    24            6 17-FEB-15 24   BD                       2          1          8 112    Prelipcean Radu                3 A2            26-MAY-95                                                  
112    23            5 24-JUN-14 23   OOP                      1          2          5 112    Prelipcean Radu                3 A2            26-MAY-95                                                  
112    22            6 19-FEB-14 22   Matematica               1          1          4 112    Prelipcean Radu                3 A2            26-MAY-95                                                  
112    21            7 25-FEB-14 21   Logica                   1          1          5 112    Prelipcean Radu                3 A2            26-MAY-95                                                  
113    26            7 21-JUN-15 26   Tehnologii Web           2          2          5 113    Antonie    Ioana               3 A2        450 03-JAN-95                                                  
113    25            4 20-JUN-15 25   Java                     2          2          5 113    Antonie    Ioana               3 A2        450 03-JAN-95                                                  
113    24           10 17-FEB-15 24   BD                       2          1          8 113    Antonie    Ioana               3 A2        450 03-JAN-95                                                  
113    23            7 24-JUN-14 23   OOP                      1          2          5 113    Antonie    Ioana               3 A2        450 03-JAN-95                                                  
113    22            9 19-FEB-14 22   Matematica               1          1          4 113    Antonie    Ioana               3 A2        450 03-JAN-95                                                  
113    21            9 17-FEB-14 21   Logica                   1          1          5 113    Antonie    Ioana               3 A2        450 03-JAN-95                                                  
114    26            4 21-JUN-15 26   Tehnologii Web           2          2          5 114    Arhire     Raluca              3 A4            26-DEC-95                                                  
114    25            5 20-JUN-15 25   Java                     2          2          5 114    Arhire     Raluca              3 A4            26-DEC-95                                                  
114    24            4 17-FEB-15 24   BD                       2          1          8 114    Arhire     Raluca              3 A4            26-DEC-95                                                  
114    23           10 24-JUN-14 23   OOP                      1          2          5 114    Arhire     Raluca              3 A4            26-DEC-95                                                  
114    22            9 19-FEB-14 22   Matematica               1          1          4 114    Arhire     Raluca              3 A4            26-DEC-95                                                  
114    21            6 17-FEB-14 21   Logica                   1          1          5 114    Arhire     Raluca              3 A4            26-DEC-95                                                  
115    26            9 21-JUN-15 26   Tehnologii Web           2          2          5 115    Panaite    Alexandru           3 B3            13-APR-95                                                  
115    25            8 20-JUN-15 25   Java                     2          2          5 115    Panaite    Alexandru           3 B3            13-APR-95                                                  
115    24           10 17-FEB-15 24   BD                       2          1          8 115    Panaite    Alexandru           3 B3            13-APR-95                                                  
115    23           10 24-JUN-14 23   OOP                      1          2          5 115    Panaite    Alexandru           3 B3            13-APR-95                                                  
115    22            7 19-FEB-14 22   Matematica               1          1          4 115    Panaite    Alexandru           3 B3            13-APR-95                                                  
115    21           10 17-FEB-14 21   Logica                   1          1          5 115    Panaite    Alexandru           3 B3            13-APR-95                                                  
116    23            9 21-JUN-15 23   OOP                      1          2          5 116    Bodnar     Ioana               2 A1            26-AUG-96                                                  
116    22           10 20-FEB-15 22   Matematica               1          1          4 116    Bodnar     Ioana               2 A1            26-AUG-96                                                  
116    21           10 18-FEB-15 21   Logica                   1          1          5 116    Bodnar     Ioana               2 A1            26-AUG-96                                                  
117    23            4 25-JUN-15 23   OOP                      1          2          5 117    Archip     Andrada             2 A1        350 03-APR-96                                                  
117    22            6 20-FEB-15 22   Matematica               1          1          4 117    Archip     Andrada             2 A1        350 03-APR-96                                                  
117    21            7 18-FEB-15 21   Logica                   1          1          5 117    Archip     Andrada             2 A1        350 03-APR-96                                                  
118    23            7 21-JUN-15 23   OOP                      1          2          5 118    Ciobotariu Ciprian             2 A1        350 03-APR-96                                                  
118    22            7 24-FEB-15 22   Matematica               1          1          4 118    Ciobotariu Ciprian             2 A1        350 03-APR-96                                                  
118    21            7 22-FEB-15 21   Logica                   1          1          5 118    Ciobotariu Ciprian             2 A1        350 03-APR-96                                                  
119    23            9 21-JUN-15 23   OOP                      1          2          5 119    Bodnar     Ioana               2 B2            10-JUN-96                                                  
119    22            8 20-FEB-15 22   Matematica               1          1          4 119    Bodnar     Ioana               2 B2            10-JUN-96                                                  
119    21            7 18-FEB-15 21   Logica                   1          1          5 119    Bodnar     Ioana               2 B2            10-JUN-96                                                  

42 rows selected.

SQL> select s.nume, s.prenume from studenti s join note n on s.nr_matricol=n.nr_matricol join cursuri c on c.id_curs=n.id_curs where to_char(n.data_notare, 'D')='3' and (n.valoare='7' or n.valoare='10') and c.titlu_curs='OOP';

NUME       PRENUME                                                                                                                                                                                      
---------- ----------                                                                                                                                                                                   
Popescu    Bogdan                                                                                                                                                                                       
Antonie    Ioana                                                                                                                                                                                        
Arhire     Raluca                                                                                                                                                                                       
Panaite    Alexandru                                                                                                                                                                                    

SQL> spool off
