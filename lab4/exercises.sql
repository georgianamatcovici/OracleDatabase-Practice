SQL> selclear screen;s.nume, s.prenume, s.valoare
SP2-0734: unknown command beginning "selclear s..." - rest of line ignored.
SQL> clear screen;

SQL> select 'Studentul ' || s.nume || ' ' || s.prenume || ' a luat nota  ' || n.valoare || ' , pusa de profesorul ' || p.nume || ' ' || p.prenume from studenti s join note n on s.nr_matricol=n.nr_matricol join
  2  ;

*
ERROR at line 2:
ORA-00903: invalid table name 


SQL> describe cursuri;
 Name                                                                                                              Null?    Type
 ----------------------------------------------------------------------------------------------------------------- -------- ----------------------------------------------------------------------------
 ID_CURS                                                                                                           NOT NULL CHAR(4)
 TITLU_CURS                                                                                                                 VARCHAR2(15)
 AN                                                                                                                         NUMBER(1)
 SEMESTRU                                                                                                                   NUMBER(1)
 CREDITE                                                                                                                    NUMBER(2)

SQL> describe profeori;
ERROR:
ORA-04043: object profeori does not exist 


SQL> describe profesori;
 Name                                                                                                              Null?    Type
 ----------------------------------------------------------------------------------------------------------------- -------- ----------------------------------------------------------------------------
 ID_PROF                                                                                                                    CHAR(4)
 NUME                                                                                                                       CHAR(10)
 PRENUME                                                                                                                    CHAR(10)
 GRAD_DIDACTIC                                                                                                              VARCHAR2(5)

SQL> describe didactic;
 Name                                                                                                              Null?    Type
 ----------------------------------------------------------------------------------------------------------------- -------- ----------------------------------------------------------------------------
 ID_PROF                                                                                                                    CHAR(4)
 ID_CURS                                                                                                                    CHAR(4)

SQL> select 'Studentul ' || s.nume || ' ' || s.prenume || ' a luat nota  ' || n.valoare || ' , pusa de profesorul ' || p.nume || ' ' || p.prenume from studenti s join note n on s.nr_matricol=n.nr_matricol join cursuri c on n.id_curs=c.id_curs join didactic d on c.id_curs=d.id_curs join profesori p on d.id_prof=p.id_prof;

'STUDENTUL'||S.NUME||''||S.PRENUME||'ALUATNOTA'||N.VALOARE||',PUSADEPROFESORUL'||P.NUME||''||P.PRENUME                                                                                                  
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

'STUDENTUL'||S.NUME||''||S.PRENUME||'ALUATNOTA'||N.VALOARE||',PUSADEPROFESORUL'||P.NUME||''||P.PRENUME                                                                                                  
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

SQL> select 'Studentul ' || s.nume || ' ' || s.prenume || ' a luat nota  ' || n.valoare || ' , pusa de profesorul ' || p.nume || ' ' || p.prenume from studenti s join note n on s.nr_matricol=n.nr_matricol join cursuri c on n.id_curs=c.id_curs join didactic d on c.id_curs=d.id_curs join profesori p on d.id_prof=p.id_prof;

'STUDENTUL'||S.NUME||''||S.PRENUME||'ALUATNOTA'||N.VALOARE||',PUSADEPROFESORUL'||P.NUME||''||P.PRENUME                                                                                                  
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

'STUDENTUL'||S.NUME||''||S.PRENUME||'ALUATNOTA'||N.VALOARE||',PUSADEPROFESORUL'||P.NUME||''||P.PRENUME                                                                                                  
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

SQL> select distinct nume, prenume from studenti;

NUME       PRENUME                                                                                                                                                                                      
---------- ----------                                                                                                                                                                                   
Prelipcean Radu                                                                                                                                                                                         
Arhire     Raluca                                                                                                                                                                                       
Pintescu   Andrei                                                                                                                                                                                       
Archip     Andrada                                                                                                                                                                                      
Cobzaru    George                                                                                                                                                                                       
Bucur      Andreea                                                                                                                                                                                      
Bodnar     Ioana                                                                                                                                                                                        
Ciobotariu Ciprian                                                                                                                                                                                      
Popescu    Bogdan                                                                                                                                                                                       
Panaite    Alexandru                                                                                                                                                                                    
Arhire     Alexandra                                                                                                                                                                                    
Antonie    Ioana                                                                                                                                                                                        

12 rows selected.

SQL> select distinct nume, prenume from studenti natural join note;

NUME       PRENUME                                                                                                                                                                                      
---------- ----------                                                                                                                                                                                   
Prelipcean Radu                                                                                                                                                                                         
Arhire     Raluca                                                                                                                                                                                       
Archip     Andrada                                                                                                                                                                                      
Bodnar     Ioana                                                                                                                                                                                        
Ciobotariu Ciprian                                                                                                                                                                                      
Popescu    Bogdan                                                                                                                                                                                       
Panaite    Alexandru                                                                                                                                                                                    
Antonie    Ioana                                                                                                                                                                                        

8 rows selected.

SQL> select nume, prenume from studenti natural join note;

NUME       PRENUME                                                                                                                                                                                      
---------- ----------                                                                                                                                                                                   
Popescu    Bogdan                                                                                                                                                                                       
Popescu    Bogdan                                                                                                                                                                                       
Popescu    Bogdan                                                                                                                                                                                       
Popescu    Bogdan                                                                                                                                                                                       
Popescu    Bogdan                                                                                                                                                                                       
Popescu    Bogdan                                                                                                                                                                                       
Prelipcean Radu                                                                                                                                                                                         
Prelipcean Radu                                                                                                                                                                                         
Prelipcean Radu                                                                                                                                                                                         
Prelipcean Radu                                                                                                                                                                                         
Prelipcean Radu                                                                                                                                                                                         
Prelipcean Radu                                                                                                                                                                                         
Antonie    Ioana                                                                                                                                                                                        
Antonie    Ioana                                                                                                                                                                                        
Antonie    Ioana                                                                                                                                                                                        
Antonie    Ioana                                                                                                                                                                                        
Antonie    Ioana                                                                                                                                                                                        
Antonie    Ioana                                                                                                                                                                                        
Arhire     Raluca                                                                                                                                                                                       
Arhire     Raluca                                                                                                                                                                                       
Arhire     Raluca                                                                                                                                                                                       
Arhire     Raluca                                                                                                                                                                                       
Arhire     Raluca                                                                                                                                                                                       
Arhire     Raluca                                                                                                                                                                                       
Panaite    Alexandru                                                                                                                                                                                    
Panaite    Alexandru                                                                                                                                                                                    
Panaite    Alexandru                                                                                                                                                                                    
Panaite    Alexandru                                                                                                                                                                                    
Panaite    Alexandru                                                                                                                                                                                    
Panaite    Alexandru                                                                                                                                                                                    
Bodnar     Ioana                                                                                                                                                                                        
Bodnar     Ioana                                                                                                                                                                                        
Bodnar     Ioana                                                                                                                                                                                        
Archip     Andrada                                                                                                                                                                                      
Archip     Andrada                                                                                                                                                                                      
Archip     Andrada                                                                                                                                                                                      
Ciobotariu Ciprian                                                                                                                                                                                      
Ciobotariu Ciprian                                                                                                                                                                                      
Ciobotariu Ciprian                                                                                                                                                                                      
Bodnar     Ioana                                                                                                                                                                                        
Bodnar     Ioana                                                                                                                                                                                        
Bodnar     Ioana                                                                                                                                                                                        

42 rows selected.

SQL> select s.nume, s.prenume from studenti s join note n on s.nr_matricol=n.nr_matricol join cursuri c on n.id_curs=c.id_curs where c.titlu_curs='BD' and n.valoare='10';

NUME       PRENUME                                                                                                                                                                                      
---------- ----------                                                                                                                                                                                   
Antonie    Ioana                                                                                                                                                                                        
Panaite    Alexandru                                                                                                                                                                                    

SQL> select * from studenti s join note n on s.nr_matricol=n.nr_matricol join cursuri c on n.id_curs=c.id_curs where c.titlu_curs='BD' and n.valoare='10';

NR_MAT NUME       PRENUME            AN GR      BURSA DATA_NAST NR_MAT ID_C    VALOARE DATA_NOTA ID_C TITLU_CURS              AN   SEMESTRU    CREDITE                                                  
------ ---------- ---------- ---------- -- ---------- --------- ------ ---- ---------- --------- ---- --------------- ---------- ---------- ----------                                                  
113    Antonie    Ioana               3 A2        450 03-JAN-95 113    24           10 17-FEB-15 24   BD                       2          1          8                                                  
115    Panaite    Alexandru           3 B3            13-APR-95 115    24           10 17-FEB-15 24   BD                       2          1          8                                                  

SQL> select * from note;

NR_MAT ID_C    VALOARE DATA_NOTA                                                                                                                                                                        
------ ---- ---------- ---------                                                                                                                                                                        
111    21            8 17-FEB-14                                                                                                                                                                        
111    22            9 19-FEB-14                                                                                                                                                                        
111    23           10 24-JUN-14                                                                                                                                                                        
111    24            9 17-FEB-15                                                                                                                                                                        
111    25            7 20-JUN-15                                                                                                                                                                        
111    26            8 21-JUN-15                                                                                                                                                                        
112    21            7 25-FEB-14                                                                                                                                                                        
112    22            6 19-FEB-14                                                                                                                                                                        
112    23            5 24-JUN-14                                                                                                                                                                        
112    24            6 17-FEB-15                                                                                                                                                                        
112    25            7 20-JUN-15                                                                                                                                                                        
112    26            4 21-JUN-15                                                                                                                                                                        
113    21            9 17-FEB-14                                                                                                                                                                        
113    22            9 19-FEB-14                                                                                                                                                                        
113    23            7 24-JUN-14                                                                                                                                                                        
113    24           10 17-FEB-15                                                                                                                                                                        
113    25            4 20-JUN-15                                                                                                                                                                        
113    26            7 21-JUN-15                                                                                                                                                                        
114    21            6 17-FEB-14                                                                                                                                                                        
114    22            9 19-FEB-14                                                                                                                                                                        
114    23           10 24-JUN-14                                                                                                                                                                        
114    24            4 17-FEB-15                                                                                                                                                                        
114    25            5 20-JUN-15                                                                                                                                                                        
114    26            4 21-JUN-15                                                                                                                                                                        
115    21           10 17-FEB-14                                                                                                                                                                        
115    22            7 19-FEB-14                                                                                                                                                                        
115    23           10 24-JUN-14                                                                                                                                                                        
115    24           10 17-FEB-15                                                                                                                                                                        
115    25            8 20-JUN-15                                                                                                                                                                        
115    26            9 21-JUN-15                                                                                                                                                                        
116    21           10 18-FEB-15                                                                                                                                                                        
116    22           10 20-FEB-15                                                                                                                                                                        
116    23            9 21-JUN-15                                                                                                                                                                        
117    21            7 18-FEB-15                                                                                                                                                                        
117    22            6 20-FEB-15                                                                                                                                                                        
117    23            4 25-JUN-15                                                                                                                                                                        
118    21            7 22-FEB-15                                                                                                                                                                        
118    22            7 24-FEB-15                                                                                                                                                                        
118    23            7 21-JUN-15                                                                                                                                                                        
119    21            7 18-FEB-15                                                                                                                                                                        
119    22            8 20-FEB-15                                                                                                                                                                        
119    23            9 21-JUN-15                                                                                                                                                                        

42 rows selected.

SQL> spool off
