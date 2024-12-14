SQL> select s.nume, s.prenume, c.nume, c.prenume from studenti s join studenti c on s.nr_matricol!=c.nr_matricol;

NUME       PRENUME    NUME       PRENUME                                                                                                                                                                
---------- ---------- ---------- ----------                                                                                                                                                             
Popescu    Bogdan     Prelipcean Radu                                                                                                                                                                   
Popescu    Bogdan     Antonie    Ioana                                                                                                                                                                  
Popescu    Bogdan     Arhire     Raluca                                                                                                                                                                 
Popescu    Bogdan     Panaite    Alexandru                                                                                                                                                              
Popescu    Bogdan     Bodnar     Ioana                                                                                                                                                                  
Popescu    Bogdan     Archip     Andrada                                                                                                                                                                
Popescu    Bogdan     Ciobotariu Ciprian                                                                                                                                                                
Popescu    Bogdan     Bodnar     Ioana                                                                                                                                                                  
Popescu    Bogdan     Pintescu   Andrei                                                                                                                                                                 
Popescu    Bogdan     Arhire     Alexandra                                                                                                                                                              
Popescu    Bogdan     Cobzaru    George                                                                                                                                                                 
Popescu    Bogdan     Bucur      Andreea                                                                                                                                                                
Prelipcean Radu       Popescu    Bogdan                                                                                                                                                                 
Prelipcean Radu       Antonie    Ioana                                                                                                                                                                  
Prelipcean Radu       Arhire     Raluca                                                                                                                                                                 
Prelipcean Radu       Panaite    Alexandru                                                                                                                                                              
Prelipcean Radu       Bodnar     Ioana                                                                                                                                                                  
Prelipcean Radu       Archip     Andrada                                                                                                                                                                
Prelipcean Radu       Ciobotariu Ciprian                                                                                                                                                                
Prelipcean Radu       Bodnar     Ioana                                                                                                                                                                  
Prelipcean Radu       Pintescu   Andrei                                                                                                                                                                 
Prelipcean Radu       Arhire     Alexandra                                                                                                                                                              
Prelipcean Radu       Cobzaru    George                                                                                                                                                                 
Prelipcean Radu       Bucur      Andreea                                                                                                                                                                
Antonie    Ioana      Popescu    Bogdan                                                                                                                                                                 
Antonie    Ioana      Prelipcean Radu                                                                                                                                                                   
Antonie    Ioana      Arhire     Raluca                                                                                                                                                                 
Antonie    Ioana      Panaite    Alexandru                                                                                                                                                              
Antonie    Ioana      Bodnar     Ioana                                                                                                                                                                  
Antonie    Ioana      Archip     Andrada                                                                                                                                                                
Antonie    Ioana      Ciobotariu Ciprian                                                                                                                                                                
Antonie    Ioana      Bodnar     Ioana                                                                                                                                                                  
Antonie    Ioana      Pintescu   Andrei                                                                                                                                                                 
Antonie    Ioana      Arhire     Alexandra                                                                                                                                                              
Antonie    Ioana      Cobzaru    George                                                                                                                                                                 
Antonie    Ioana      Bucur      Andreea                                                                                                                                                                
Arhire     Raluca     Popescu    Bogdan                                                                                                                                                                 
Arhire     Raluca     Prelipcean Radu                                                                                                                                                                   
Arhire     Raluca     Antonie    Ioana                                                                                                                                                                  
Arhire     Raluca     Panaite    Alexandru                                                                                                                                                              
Arhire     Raluca     Bodnar     Ioana                                                                                                                                                                  
Arhire     Raluca     Archip     Andrada                                                                                                                                                                
Arhire     Raluca     Ciobotariu Ciprian                                                                                                                                                                
Arhire     Raluca     Bodnar     Ioana                                                                                                                                                                  
Arhire     Raluca     Pintescu   Andrei                                                                                                                                                                 
Arhire     Raluca     Arhire     Alexandra                                                                                                                                                              
Arhire     Raluca     Cobzaru    George                                                                                                                                                                 

NUME       PRENUME    NUME       PRENUME                                                                                                                                                                
---------- ---------- ---------- ----------                                                                                                                                                             
Arhire     Raluca     Bucur      Andreea                                                                                                                                                                
Panaite    Alexandru  Popescu    Bogdan                                                                                                                                                                 
Panaite    Alexandru  Prelipcean Radu                                                                                                                                                                   
Panaite    Alexandru  Antonie    Ioana                                                                                                                                                                  
Panaite    Alexandru  Arhire     Raluca                                                                                                                                                                 
Panaite    Alexandru  Bodnar     Ioana                                                                                                                                                                  
Panaite    Alexandru  Archip     Andrada                                                                                                                                                                
Panaite    Alexandru  Ciobotariu Ciprian                                                                                                                                                                
Panaite    Alexandru  Bodnar     Ioana                                                                                                                                                                  
Panaite    Alexandru  Pintescu   Andrei                                                                                                                                                                 
Panaite    Alexandru  Arhire     Alexandra                                                                                                                                                              
Panaite    Alexandru  Cobzaru    George                                                                                                                                                                 
Panaite    Alexandru  Bucur      Andreea                                                                                                                                                                
Bodnar     Ioana      Popescu    Bogdan                                                                                                                                                                 
Bodnar     Ioana      Prelipcean Radu                                                                                                                                                                   
Bodnar     Ioana      Antonie    Ioana                                                                                                                                                                  
Bodnar     Ioana      Arhire     Raluca                                                                                                                                                                 
Bodnar     Ioana      Panaite    Alexandru                                                                                                                                                              
Bodnar     Ioana      Archip     Andrada                                                                                                                                                                
Bodnar     Ioana      Ciobotariu Ciprian                                                                                                                                                                
Bodnar     Ioana      Bodnar     Ioana                                                                                                                                                                  
Bodnar     Ioana      Pintescu   Andrei                                                                                                                                                                 
Bodnar     Ioana      Arhire     Alexandra                                                                                                                                                              
Bodnar     Ioana      Cobzaru    George                                                                                                                                                                 
Bodnar     Ioana      Bucur      Andreea                                                                                                                                                                
Archip     Andrada    Popescu    Bogdan                                                                                                                                                                 
Archip     Andrada    Prelipcean Radu                                                                                                                                                                   
Archip     Andrada    Antonie    Ioana                                                                                                                                                                  
Archip     Andrada    Arhire     Raluca                                                                                                                                                                 
Archip     Andrada    Panaite    Alexandru                                                                                                                                                              
Archip     Andrada    Bodnar     Ioana                                                                                                                                                                  
Archip     Andrada    Ciobotariu Ciprian                                                                                                                                                                
Archip     Andrada    Bodnar     Ioana                                                                                                                                                                  
Archip     Andrada    Pintescu   Andrei                                                                                                                                                                 
Archip     Andrada    Arhire     Alexandra                                                                                                                                                              
Archip     Andrada    Cobzaru    George                                                                                                                                                                 
Archip     Andrada    Bucur      Andreea                                                                                                                                                                
Ciobotariu Ciprian    Popescu    Bogdan                                                                                                                                                                 
Ciobotariu Ciprian    Prelipcean Radu                                                                                                                                                                   
Ciobotariu Ciprian    Antonie    Ioana                                                                                                                                                                  
Ciobotariu Ciprian    Arhire     Raluca                                                                                                                                                                 
Ciobotariu Ciprian    Panaite    Alexandru                                                                                                                                                              
Ciobotariu Ciprian    Bodnar     Ioana                                                                                                                                                                  
Ciobotariu Ciprian    Archip     Andrada                                                                                                                                                                
Ciobotariu Ciprian    Bodnar     Ioana                                                                                                                                                                  
Ciobotariu Ciprian    Pintescu   Andrei                                                                                                                                                                 
Ciobotariu Ciprian    Arhire     Alexandra                                                                                                                                                              

NUME       PRENUME    NUME       PRENUME                                                                                                                                                                
---------- ---------- ---------- ----------                                                                                                                                                             
Ciobotariu Ciprian    Cobzaru    George                                                                                                                                                                 
Ciobotariu Ciprian    Bucur      Andreea                                                                                                                                                                
Bodnar     Ioana      Popescu    Bogdan                                                                                                                                                                 
Bodnar     Ioana      Prelipcean Radu                                                                                                                                                                   
Bodnar     Ioana      Antonie    Ioana                                                                                                                                                                  
Bodnar     Ioana      Arhire     Raluca                                                                                                                                                                 
Bodnar     Ioana      Panaite    Alexandru                                                                                                                                                              
Bodnar     Ioana      Bodnar     Ioana                                                                                                                                                                  
Bodnar     Ioana      Archip     Andrada                                                                                                                                                                
Bodnar     Ioana      Ciobotariu Ciprian                                                                                                                                                                
Bodnar     Ioana      Pintescu   Andrei                                                                                                                                                                 
Bodnar     Ioana      Arhire     Alexandra                                                                                                                                                              
Bodnar     Ioana      Cobzaru    George                                                                                                                                                                 
Bodnar     Ioana      Bucur      Andreea                                                                                                                                                                
Pintescu   Andrei     Popescu    Bogdan                                                                                                                                                                 
Pintescu   Andrei     Prelipcean Radu                                                                                                                                                                   
Pintescu   Andrei     Antonie    Ioana                                                                                                                                                                  
Pintescu   Andrei     Arhire     Raluca                                                                                                                                                                 
Pintescu   Andrei     Panaite    Alexandru                                                                                                                                                              
Pintescu   Andrei     Bodnar     Ioana                                                                                                                                                                  
Pintescu   Andrei     Archip     Andrada                                                                                                                                                                
Pintescu   Andrei     Ciobotariu Ciprian                                                                                                                                                                
Pintescu   Andrei     Bodnar     Ioana                                                                                                                                                                  
Pintescu   Andrei     Arhire     Alexandra                                                                                                                                                              
Pintescu   Andrei     Cobzaru    George                                                                                                                                                                 
Pintescu   Andrei     Bucur      Andreea                                                                                                                                                                
Arhire     Alexandra  Popescu    Bogdan                                                                                                                                                                 
Arhire     Alexandra  Prelipcean Radu                                                                                                                                                                   
Arhire     Alexandra  Antonie    Ioana                                                                                                                                                                  
Arhire     Alexandra  Arhire     Raluca                                                                                                                                                                 
Arhire     Alexandra  Panaite    Alexandru                                                                                                                                                              
Arhire     Alexandra  Bodnar     Ioana                                                                                                                                                                  
Arhire     Alexandra  Archip     Andrada                                                                                                                                                                
Arhire     Alexandra  Ciobotariu Ciprian                                                                                                                                                                
Arhire     Alexandra  Bodnar     Ioana                                                                                                                                                                  
Arhire     Alexandra  Pintescu   Andrei                                                                                                                                                                 
Arhire     Alexandra  Cobzaru    George                                                                                                                                                                 
Arhire     Alexandra  Bucur      Andreea                                                                                                                                                                
Cobzaru    George     Popescu    Bogdan                                                                                                                                                                 
Cobzaru    George     Prelipcean Radu                                                                                                                                                                   
Cobzaru    George     Antonie    Ioana                                                                                                                                                                  
Cobzaru    George     Arhire     Raluca                                                                                                                                                                 
Cobzaru    George     Panaite    Alexandru                                                                                                                                                              
Cobzaru    George     Bodnar     Ioana                                                                                                                                                                  
Cobzaru    George     Archip     Andrada                                                                                                                                                                
Cobzaru    George     Ciobotariu Ciprian                                                                                                                                                                
Cobzaru    George     Bodnar     Ioana                                                                                                                                                                  

NUME       PRENUME    NUME       PRENUME                                                                                                                                                                
---------- ---------- ---------- ----------                                                                                                                                                             
Cobzaru    George     Pintescu   Andrei                                                                                                                                                                 
Cobzaru    George     Arhire     Alexandra                                                                                                                                                              
Cobzaru    George     Bucur      Andreea                                                                                                                                                                
Bucur      Andreea    Popescu    Bogdan                                                                                                                                                                 
Bucur      Andreea    Prelipcean Radu                                                                                                                                                                   
Bucur      Andreea    Antonie    Ioana                                                                                                                                                                  
Bucur      Andreea    Arhire     Raluca                                                                                                                                                                 
Bucur      Andreea    Panaite    Alexandru                                                                                                                                                              
Bucur      Andreea    Bodnar     Ioana                                                                                                                                                                  
Bucur      Andreea    Archip     Andrada                                                                                                                                                                
Bucur      Andreea    Ciobotariu Ciprian                                                                                                                                                                
Bucur      Andreea    Bodnar     Ioana                                                                                                                                                                  
Bucur      Andreea    Pintescu   Andrei                                                                                                                                                                 
Bucur      Andreea    Arhire     Alexandra                                                                                                                                                              
Bucur      Andreea    Cobzaru    George                                                                                                                                                                 

156 rows selected.

SQL> select * from studenti;

NR_MAT NUME       PRENUME            AN GR      BURSA DATA_NAST                                                                                                                                         
------ ---------- ---------- ---------- -- ---------- ---------                                                                                                                                         
111    Popescu    Bogdan              3 A2            17-FEB-95                                                                                                                                         
112    Prelipcean Radu                3 A2            26-MAY-95                                                                                                                                         
113    Antonie    Ioana               3 A2        450 03-JAN-95                                                                                                                                         
114    Arhire     Raluca              3 A4            26-DEC-95                                                                                                                                         
115    Panaite    Alexandru           3 B3            13-APR-95                                                                                                                                         
116    Bodnar     Ioana               2 A1            26-AUG-96                                                                                                                                         
117    Archip     Andrada             2 A1        350 03-APR-96                                                                                                                                         
118    Ciobotariu Ciprian             2 A1        350 03-APR-96                                                                                                                                         
119    Bodnar     Ioana               2 B2            10-JUN-96                                                                                                                                         
120    Pintescu   Andrei              1 B1        250 26-AUG-97                                                                                                                                         
121    Arhire     Alexandra           1 B1            02-JUL-97                                                                                                                                         
122    Cobzaru    George              1 B1        350 29-APR-97                                                                                                                                         
123    Bucur      Andreea             1 B2            10-MAY-97                                                                                                                                         

13 rows selected.

SQL> select s.nume, s.prenume, c.nume, c.prenume s.data_nastere-c.data_nastere from studenti s join studenti c on s.nr_matricol!=c.nr_matricol and s.data_nastere<c.data_nastere;
select s.nume, s.prenume, c.nume, c.prenume s.data_nastere-c.data_nastere from studenti s join studenti c on s.nr_matricol!=c.nr_matricol and s.data_nastere<c.data_nastere
                                             *
ERROR at line 1:
ORA-00923: FROM keyword not found where expected 


SQL> select s.nume, s.prenume, c.nume, c.prenume s.data_nastere-c.data_nastere from studenti s join studenti c on s.nr_matricol!=c.nr_matricol;
select s.nume, s.prenume, c.nume, c.prenume s.data_nastere-c.data_nastere from studenti s join studenti c on s.nr_matricol!=c.nr_matricol
                                             *
ERROR at line 1:
ORA-00923: FROM keyword not found where expected 


SQL> select s.nume, s.prenume, c.nume, c.prenume, s.data_nastere-c.data_nastere from studenti s join studenti c on s.nr_matricol!=c.nr_matricol and s.data_nastere<c.data_nastere;

NUME       PRENUME    NUME       PRENUME    S.DATA_NASTERE-C.DATA_NASTERE                                                                                                                               
---------- ---------- ---------- ---------- -----------------------------                                                                                                                               
Antonie    Ioana      Popescu    Bogdan                               -45                                                                                                                               
Antonie    Ioana      Panaite    Alexandru                           -100                                                                                                                               
Antonie    Ioana      Prelipcean Radu                                -143                                                                                                                               
Antonie    Ioana      Arhire     Raluca                              -357                                                                                                                               
Antonie    Ioana      Archip     Andrada                             -456                                                                                                                               
Antonie    Ioana      Ciobotariu Ciprian                             -456                                                                                                                               
Antonie    Ioana      Bodnar     Ioana                               -524                                                                                                                               
Antonie    Ioana      Bodnar     Ioana                               -601                                                                                                                               
Antonie    Ioana      Cobzaru    George                              -847                                                                                                                               
Antonie    Ioana      Bucur      Andreea                             -858                                                                                                                               
Antonie    Ioana      Arhire     Alexandra                           -911                                                                                                                               
Antonie    Ioana      Pintescu   Andrei                              -966                                                                                                                               
Popescu    Bogdan     Panaite    Alexandru                            -55                                                                                                                               
Popescu    Bogdan     Prelipcean Radu                                 -98                                                                                                                               
Popescu    Bogdan     Arhire     Raluca                              -312                                                                                                                               
Popescu    Bogdan     Archip     Andrada                             -411                                                                                                                               
Popescu    Bogdan     Ciobotariu Ciprian                             -411                                                                                                                               
Popescu    Bogdan     Bodnar     Ioana                               -479                                                                                                                               
Popescu    Bogdan     Bodnar     Ioana                               -556                                                                                                                               
Popescu    Bogdan     Cobzaru    George                              -802                                                                                                                               
Popescu    Bogdan     Bucur      Andreea                             -813                                                                                                                               
Popescu    Bogdan     Arhire     Alexandra                           -866                                                                                                                               
Popescu    Bogdan     Pintescu   Andrei                              -921                                                                                                                               
Panaite    Alexandru  Prelipcean Radu                                 -43                                                                                                                               
Panaite    Alexandru  Arhire     Raluca                              -257                                                                                                                               
Panaite    Alexandru  Archip     Andrada                             -356                                                                                                                               
Panaite    Alexandru  Ciobotariu Ciprian                             -356                                                                                                                               
Panaite    Alexandru  Bodnar     Ioana                               -424                                                                                                                               
Panaite    Alexandru  Bodnar     Ioana                               -501                                                                                                                               
Panaite    Alexandru  Cobzaru    George                              -747                                                                                                                               
Panaite    Alexandru  Bucur      Andreea                             -758                                                                                                                               
Panaite    Alexandru  Arhire     Alexandra                           -811                                                                                                                               
Panaite    Alexandru  Pintescu   Andrei                              -866                                                                                                                               
Prelipcean Radu       Arhire     Raluca                              -214                                                                                                                               
Prelipcean Radu       Archip     Andrada                             -313                                                                                                                               
Prelipcean Radu       Ciobotariu Ciprian                             -313                                                                                                                               
Prelipcean Radu       Bodnar     Ioana                               -381                                                                                                                               
Prelipcean Radu       Bodnar     Ioana                               -458                                                                                                                               
Prelipcean Radu       Cobzaru    George                              -704                                                                                                                               
Prelipcean Radu       Bucur      Andreea                             -715                                                                                                                               
Prelipcean Radu       Arhire     Alexandra                           -768                                                                                                                               
Prelipcean Radu       Pintescu   Andrei                              -823                                                                                                                               
Arhire     Raluca     Archip     Andrada                              -99                                                                                                                               
Arhire     Raluca     Ciobotariu Ciprian                              -99                                                                                                                               
Arhire     Raluca     Bodnar     Ioana                               -167                                                                                                                               
Arhire     Raluca     Bodnar     Ioana                               -244                                                                                                                               
Arhire     Raluca     Cobzaru    George                              -490                                                                                                                               

NUME       PRENUME    NUME       PRENUME    S.DATA_NASTERE-C.DATA_NASTERE                                                                                                                               
---------- ---------- ---------- ---------- -----------------------------                                                                                                                               
Arhire     Raluca     Bucur      Andreea                             -501                                                                                                                               
Arhire     Raluca     Arhire     Alexandra                           -554                                                                                                                               
Arhire     Raluca     Pintescu   Andrei                              -609                                                                                                                               
Archip     Andrada    Bodnar     Ioana                                -68                                                                                                                               
Archip     Andrada    Bodnar     Ioana                               -145                                                                                                                               
Archip     Andrada    Cobzaru    George                              -391                                                                                                                               
Archip     Andrada    Bucur      Andreea                             -402                                                                                                                               
Archip     Andrada    Arhire     Alexandra                           -455                                                                                                                               
Archip     Andrada    Pintescu   Andrei                              -510                                                                                                                               
Ciobotariu Ciprian    Bodnar     Ioana                                -68                                                                                                                               
Ciobotariu Ciprian    Bodnar     Ioana                               -145                                                                                                                               
Ciobotariu Ciprian    Cobzaru    George                              -391                                                                                                                               
Ciobotariu Ciprian    Bucur      Andreea                             -402                                                                                                                               
Ciobotariu Ciprian    Arhire     Alexandra                           -455                                                                                                                               
Ciobotariu Ciprian    Pintescu   Andrei                              -510                                                                                                                               
Bodnar     Ioana      Bodnar     Ioana                                -77                                                                                                                               
Bodnar     Ioana      Cobzaru    George                              -323                                                                                                                               
Bodnar     Ioana      Bucur      Andreea                             -334                                                                                                                               
Bodnar     Ioana      Arhire     Alexandra                           -387                                                                                                                               
Bodnar     Ioana      Pintescu   Andrei                              -442                                                                                                                               
Bodnar     Ioana      Cobzaru    George                              -246                                                                                                                               
Bodnar     Ioana      Bucur      Andreea                             -257                                                                                                                               
Bodnar     Ioana      Arhire     Alexandra                           -310                                                                                                                               
Bodnar     Ioana      Pintescu   Andrei                              -365                                                                                                                               
Cobzaru    George     Bucur      Andreea                              -11                                                                                                                               
Cobzaru    George     Arhire     Alexandra                            -64                                                                                                                               
Cobzaru    George     Pintescu   Andrei                              -119                                                                                                                               
Bucur      Andreea    Arhire     Alexandra                            -53                                                                                                                               
Bucur      Andreea    Pintescu   Andrei                              -108                                                                                                                               
Arhire     Alexandra  Pintescu   Andrei                               -55                                                                                                                               

77 rows selected.

SQL> select s.nume, s.prenume, c.nume, c.prenume, s.data_nastere-c.data_nastere as "Diferenta zile" from studenti s join studenti c on s.nr_matricol!=c.nr_matricol and s.data_nastere>c.data_nastere;

NUME       PRENUME    NUME       PRENUME    Diferenta zile                                                                                                                                              
---------- ---------- ---------- ---------- --------------                                                                                                                                              
Pintescu   Andrei     Arhire     Alexandra              55                                                                                                                                              
Pintescu   Andrei     Bucur      Andreea               108                                                                                                                                              
Pintescu   Andrei     Cobzaru    George                119                                                                                                                                              
Pintescu   Andrei     Bodnar     Ioana                 365                                                                                                                                              
Pintescu   Andrei     Bodnar     Ioana                 442                                                                                                                                              
Pintescu   Andrei     Archip     Andrada               510                                                                                                                                              
Pintescu   Andrei     Ciobotariu Ciprian               510                                                                                                                                              
Pintescu   Andrei     Arhire     Raluca                609                                                                                                                                              
Pintescu   Andrei     Prelipcean Radu                  823                                                                                                                                              
Pintescu   Andrei     Panaite    Alexandru             866                                                                                                                                              
Pintescu   Andrei     Popescu    Bogdan                921                                                                                                                                              
Pintescu   Andrei     Antonie    Ioana                 966                                                                                                                                              
Arhire     Alexandra  Bucur      Andreea                53                                                                                                                                              
Arhire     Alexandra  Cobzaru    George                 64                                                                                                                                              
Arhire     Alexandra  Bodnar     Ioana                 310                                                                                                                                              
Arhire     Alexandra  Bodnar     Ioana                 387                                                                                                                                              
Arhire     Alexandra  Archip     Andrada               455                                                                                                                                              
Arhire     Alexandra  Ciobotariu Ciprian               455                                                                                                                                              
Arhire     Alexandra  Arhire     Raluca                554                                                                                                                                              
Arhire     Alexandra  Prelipcean Radu                  768                                                                                                                                              
Arhire     Alexandra  Panaite    Alexandru             811                                                                                                                                              
Arhire     Alexandra  Popescu    Bogdan                866                                                                                                                                              
Arhire     Alexandra  Antonie    Ioana                 911                                                                                                                                              
Bucur      Andreea    Cobzaru    George                 11                                                                                                                                              
Bucur      Andreea    Bodnar     Ioana                 257                                                                                                                                              
Bucur      Andreea    Bodnar     Ioana                 334                                                                                                                                              
Bucur      Andreea    Archip     Andrada               402                                                                                                                                              
Bucur      Andreea    Ciobotariu Ciprian               402                                                                                                                                              
Bucur      Andreea    Arhire     Raluca                501                                                                                                                                              
Bucur      Andreea    Prelipcean Radu                  715                                                                                                                                              
Bucur      Andreea    Panaite    Alexandru             758                                                                                                                                              
Bucur      Andreea    Popescu    Bogdan                813                                                                                                                                              
Bucur      Andreea    Antonie    Ioana                 858                                                                                                                                              
Cobzaru    George     Bodnar     Ioana                 246                                                                                                                                              
Cobzaru    George     Bodnar     Ioana                 323                                                                                                                                              
Cobzaru    George     Archip     Andrada               391                                                                                                                                              
Cobzaru    George     Ciobotariu Ciprian               391                                                                                                                                              
Cobzaru    George     Arhire     Raluca                490                                                                                                                                              
Cobzaru    George     Prelipcean Radu                  704                                                                                                                                              
Cobzaru    George     Panaite    Alexandru             747                                                                                                                                              
Cobzaru    George     Popescu    Bogdan                802                                                                                                                                              
Cobzaru    George     Antonie    Ioana                 847                                                                                                                                              
Bodnar     Ioana      Bodnar     Ioana                  77                                                                                                                                              
Bodnar     Ioana      Archip     Andrada               145                                                                                                                                              
Bodnar     Ioana      Ciobotariu Ciprian               145                                                                                                                                              
Bodnar     Ioana      Arhire     Raluca                244                                                                                                                                              
Bodnar     Ioana      Prelipcean Radu                  458                                                                                                                                              

NUME       PRENUME    NUME       PRENUME    Diferenta zile                                                                                                                                              
---------- ---------- ---------- ---------- --------------                                                                                                                                              
Bodnar     Ioana      Panaite    Alexandru             501                                                                                                                                              
Bodnar     Ioana      Popescu    Bogdan                556                                                                                                                                              
Bodnar     Ioana      Antonie    Ioana                 601                                                                                                                                              
Bodnar     Ioana      Archip     Andrada                68                                                                                                                                              
Bodnar     Ioana      Ciobotariu Ciprian                68                                                                                                                                              
Bodnar     Ioana      Arhire     Raluca                167                                                                                                                                              
Bodnar     Ioana      Prelipcean Radu                  381                                                                                                                                              
Bodnar     Ioana      Panaite    Alexandru             424                                                                                                                                              
Bodnar     Ioana      Popescu    Bogdan                479                                                                                                                                              
Bodnar     Ioana      Antonie    Ioana                 524                                                                                                                                              
Archip     Andrada    Arhire     Raluca                 99                                                                                                                                              
Archip     Andrada    Prelipcean Radu                  313                                                                                                                                              
Archip     Andrada    Panaite    Alexandru             356                                                                                                                                              
Archip     Andrada    Popescu    Bogdan                411                                                                                                                                              
Archip     Andrada    Antonie    Ioana                 456                                                                                                                                              
Ciobotariu Ciprian    Arhire     Raluca                 99                                                                                                                                              
Ciobotariu Ciprian    Prelipcean Radu                  313                                                                                                                                              
Ciobotariu Ciprian    Panaite    Alexandru             356                                                                                                                                              
Ciobotariu Ciprian    Popescu    Bogdan                411                                                                                                                                              
Ciobotariu Ciprian    Antonie    Ioana                 456                                                                                                                                              
Arhire     Raluca     Prelipcean Radu                  214                                                                                                                                              
Arhire     Raluca     Panaite    Alexandru             257                                                                                                                                              
Arhire     Raluca     Popescu    Bogdan                312                                                                                                                                              
Arhire     Raluca     Antonie    Ioana                 357                                                                                                                                              
Prelipcean Radu       Panaite    Alexandru              43                                                                                                                                              
Prelipcean Radu       Popescu    Bogdan                 98                                                                                                                                              
Prelipcean Radu       Antonie    Ioana                 143                                                                                                                                              
Panaite    Alexandru  Popescu    Bogdan                 55                                                                                                                                              
Panaite    Alexandru  Antonie    Ioana                 100                                                                                                                                              
Popescu    Bogdan     Antonie    Ioana                  45                                                                                                                                              

77 rows selected.

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

SQL> spool off
