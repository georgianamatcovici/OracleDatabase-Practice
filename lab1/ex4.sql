SQL> SELECT 'Studentul '||nume||' '||prenume||' este inmatriculat in anul '|| an ||'.' AS info FROM studenti;

INFO                                                                            
--------------------------------------------------------------------------------
Studentul Popescu Bogdan este inmatriculat in anul 3.                           
Studentul Prelipcean Radu este inmatriculat in anul 3.                          
Studentul Antonie Ioana este inmatriculat in anul 3.                            
Studentul Arhire Raluca este inmatriculat in anul 3.                            
Studentul Panaite Alexandru este inmatriculat in anul 3.                        
Studentul Bodnar Ioana este inmatriculat in anul 2.                             
Studentul Archip Andrada este inmatriculat in anul 2.                           
Studentul Ciobotariu Ciprian este inmatriculat in anul 2.                       
Studentul Bodnar Ioana este inmatriculat in anul 2.                             
Studentul Pintescu Andrei este inmatriculat in anul 1.                          
Studentul Arhire Alexandra este inmatriculat in anul 1.                         

INFO                                                                            
--------------------------------------------------------------------------------
Studentul Cobzaru George este inmatriculat in anul 1.                           
Studentul Bucur Andreea este inmatriculat in anul 1.                            

13 rows selected.

SQL> select ||nume||' '||prenume||','||an|| ORDER BY an as "Studenti pe ani de studiu" from STUDENTI
  2  select ||nume||' '||prenume||','||an|| ORDER BY an as "Studenti pe ani de studiu" from STUDENTI;
select ||nume||' '||prenume||','||an|| ORDER BY an as "Studenti pe ani de studiu" from STUDENTI
       *
ERROR at line 1:
ORA-00936: missing expression 


SQL> select ||nume||' '||prenume||','||an|| ORDER BY an as "Studenti pe ani de studiu" from STUDENTI;
select ||nume||' '||prenume||','||an|| ORDER BY an as "Studenti pe ani de studiu" from STUDENTI
       *
ERROR at line 1:
ORA-00936: missing expression 


SQL> select '||nume||'' ''||prenume||'',''||an||' ORDER BY an as "Studenti pe ani de studiu" from STUDENTI;
select '||nume||'' ''||prenume||'',''||an||' ORDER BY an as "Studenti pe ani de studiu" from STUDENTI
                                             *
ERROR at line 1:
ORA-00923: FROM keyword not found where expected 


SQL> select nume '|| ||' prenume'',''||an||' ORDER BY an as "Studenti pe ani de studiu" from STUDENTI;
ERROR:
ORA-01756: quoted string not properly terminated 


SQL> select nume || prenume || ',' || an order by an as "Studenti pe ani de studiu" from STUDENTI;
select nume || prenume || ',' || an order by an as "Studenti pe ani de studiu" from STUDENTI
                                    *
ERROR at line 1:
ORA-00923: FROM keyword not found where expected 


SQL> select nume || prenume || ',' || an, order by an as "Studenti pe ani de studiu" from STUDENTI;
select nume || prenume || ',' || an, order by an as "Studenti pe ani de studiu" from STUDENTI
                                     *
ERROR at line 1:
ORA-00936: missing expression 


SQL> select nume || ' ' || prenume || ',' || an as "Studenti pe ani de studiu" from STUDENTI order by an asc;

Studenti pe ani de studiu                                                       
--------------------------------------------------------------                  
Cobzaru George,1                                                                
Arhire Alexandra,1                                                              
Pintescu Andrei,1                                                               
Bucur Andreea,1                                                                 
Archip Andrada,2                                                                
Bodnar Ioana,2                                                                  
Ciobotariu Ciprian,2                                                            
Bodnar Ioana,2                                                                  
Popescu Bogdan,3                                                                
Prelipcean Radu,3                                                               
Arhire Raluca,3                                                                 

Studenti pe ani de studiu                                                       
--------------------------------------------------------------                  
Antonie Ioana,3                                                                 
Panaite Alexandru,3                                                             

13 rows selected.

SQL> spool off
