SQL> select * from studenti s join note n on s.nr_matricol=n.nr_matricol where to_char(data_nota, 'D')='3';
select * from studenti s join note n on s.nr_matricol=n.nr_matricol where to_char(data_nota, 'D')='3'
                                                                                  *
ERROR at line 1:
ORA-00904: "DATA_NOTA": invalid identifier 


SQL> select * from studenti s join note n on s.nr_matricol=n.nr_matricol where to_number(data_nota, 'D')='3';
select * from studenti s join note n on s.nr_matricol=n.nr_matricol where to_number(data_nota, 'D')='3'
                                                                                    *
ERROR at line 1:
ORA-00904: "DATA_NOTA": invalid identifier 


SQL> select * from studenti s join note n on s.nr_matricol=n.nr_matricol where to_char(data_nota, 'Day')='Wednesday';
select * from studenti s join note n on s.nr_matricol=n.nr_matricol where to_char(data_nota, 'Day')='Wednesday'
                                                                                  *
ERROR at line 1:
ORA-00904: "DATA_NOTA": invalid identifier 


SQL> select * from studenti s join note n on s.nr_matricol=n.nr_matricol where to_char(n.data_nota, 'D')='3';
select * from studenti s join note n on s.nr_matricol=n.nr_matricol where to_char(n.data_nota, 'D')='3'
                                                                                  *
ERROR at line 1:
ORA-00904: "N"."DATA_NOTA": invalid identifier 


SQL> describe note
 Name                                                                                                              Null?    Type
 ----------------------------------------------------------------------------------------------------------------- -------- ----------------------------------------------------------------------------
 NR_MATRICOL                                                                                                                CHAR(6)
 ID_CURS                                                                                                                    CHAR(4)
 VALOARE                                                                                                                    NUMBER(2)
 DATA_NOTARE                                                                                                                DATE

SQL> select * from studenti s join note n on s.nr_matricol=n.nr_matricol where to_char(n.data_notare, 'D')='3';

NR_MAT NUME       PRENUME            AN GR      BURSA DATA_NAST NR_MAT ID_C    VALOARE DATA_NOTA                                                                                                        
------ ---------- ---------- ---------- -- ---------- --------- ------ ---- ---------- ---------                                                                                                        
111    Popescu    Bogdan              3 A2            17-FEB-95 111    24            9 17-FEB-15                                                                                                        
111    Popescu    Bogdan              3 A2            17-FEB-95 111    23           10 24-JUN-14                                                                                                        
112    Prelipcean Radu                3 A2            26-MAY-95 112    24            6 17-FEB-15                                                                                                        
112    Prelipcean Radu                3 A2            26-MAY-95 112    23            5 24-JUN-14                                                                                                        
112    Prelipcean Radu                3 A2            26-MAY-95 112    21            7 25-FEB-14                                                                                                        
113    Antonie    Ioana               3 A2        450 03-JAN-95 113    24           10 17-FEB-15                                                                                                        
113    Antonie    Ioana               3 A2        450 03-JAN-95 113    23            7 24-JUN-14                                                                                                        
114    Arhire     Raluca              3 A4            26-DEC-95 114    24            4 17-FEB-15                                                                                                        
114    Arhire     Raluca              3 A4            26-DEC-95 114    23           10 24-JUN-14                                                                                                        
115    Panaite    Alexandru           3 B3            13-APR-95 115    24           10 17-FEB-15                                                                                                        
115    Panaite    Alexandru           3 B3            13-APR-95 115    23           10 24-JUN-14                                                                                                        
118    Ciobotariu Ciprian             2 A1        350 03-APR-96 118    22            7 24-FEB-15                                                                                                        

12 rows selected.

SQL> select s.nume, s.prenume, n.valoare, to_char(data_nota, 'Day') as Zi from studenti s join note n on s.nr_matricol=n.nr_matricol where to_char(n.data_notare, 'D')='3';
select s.nume, s.prenume, n.valoare, to_char(data_nota, 'Day') as Zi from studenti s join note n on s.nr_matricol=n.nr_matricol where to_char(n.data_notare, 'D')='3'
                                             *
ERROR at line 1:
ORA-00904: "DATA_NOTA": invalid identifier 


SQL> select s.nume, s.prenume, n.valoare, to_char(data_notare, 'Day') as Zi from studenti s join note n on s.nr_matricol=n.nr_matricol where to_char(n.data_notare, 'D')='3';

NUME       PRENUME       VALOARE ZI                                                                                                                                                                     
---------- ---------- ---------- ------------------------------------                                                                                                                                   
Popescu    Bogdan              9 Tuesday                                                                                                                                                                
Popescu    Bogdan             10 Tuesday                                                                                                                                                                
Prelipcean Radu                6 Tuesday                                                                                                                                                                
Prelipcean Radu                5 Tuesday                                                                                                                                                                
Prelipcean Radu                7 Tuesday                                                                                                                                                                
Antonie    Ioana              10 Tuesday                                                                                                                                                                
Antonie    Ioana               7 Tuesday                                                                                                                                                                
Arhire     Raluca              4 Tuesday                                                                                                                                                                
Arhire     Raluca             10 Tuesday                                                                                                                                                                
Panaite    Alexandru          10 Tuesday                                                                                                                                                                
Panaite    Alexandru          10 Tuesday                                                                                                                                                                
Ciobotariu Ciprian             7 Tuesday                                                                                                                                                                

12 rows selected.

SQL> select s.nume, s.prenume from studenti s join note n on s.nr_matricol=n.nr_matricol join cursuri c on c.id_curs=n.id_curs where to_char(n.data_notare, 'D')='3' and (n.valoare='7' or n.valoare='10') and c.titlu_curs='OOP';

NUME       PRENUME                                                                                                                                                                                      
---------- ----------                                                                                                                                                                                   
Popescu    Bogdan                                                                                                                                                                                       
Antonie    Ioana                                                                                                                                                                                        
Arhire     Raluca                                                                                                                                                                                       
Panaite    Alexandru                                                                                                                                                                                    

SQL> spool off
