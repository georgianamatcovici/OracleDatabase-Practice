SQL> SELECT * FROM studenti
  2      WHERE an=&an AND nume LIKE '&nume';
Enter value for an: 3
Enter value for nume: Popescu
old   2:     WHERE an=&an AND nume LIKE '&nume'
new   2:     WHERE an=3 AND nume LIKE 'Popescu'

NR_MAT NUME       PRENUME            AN GR      BURSA DATA_NAST                 
------ ---------- ---------- ---------- -- ---------- ---------                 
111    Popescu    Bogdan              3 A2            17-FEB-95                 

SQL> SELECT nume, &camp_afisare
  2      FROM studenti
  3      WHERE &conditie2
  4      ORDER BY &camp_sortare;
Enter value for camp_afisare: prenume
old   1: SELECT nume, &camp_afisare
new   1: SELECT nume, prenume
Enter value for conditie2: nume like 'Popescu'
old   3:     WHERE &conditie2
new   3:     WHERE nume like 'Popescu'
Enter value for camp_sortare: data_nastere
old   4:     ORDER BY &camp_sortare
new   4:     ORDER BY data_nastere

NUME       PRENUME                                                              
---------- ----------                                                           
Popescu    Bogdan                                                               

SQL> INSERT INTO cursuri VALUES(30, 'Inv. automata', 3, 1, 5);

1 row created.

SQL> insert into cursuri VALUES(30, 'Inv. automata', 3, 1, 5);

1 row created.

SQL> select * from cursuri;

ID_C TITLU_CURS              AN   SEMESTRU    CREDITE                           
---- --------------- ---------- ---------- ----------                           
21   Logica                   1          1          5                           
22   Matematica               1          1          4                           
23   OOP                      1          2          5                           
24   BD                       2          1          8                           
25   Java                     2          2          5                           
26   Tehnologii Web           2          2          5                           
27   Sec. Info.               3          1          5                           
28   DSFUM                    3          1          6                           
29   Limbaje formale          2          1          5                           
30   Inv. automata            3          1          5                           
30   Inv. automata            3          1          5                           

11 rows selected.

SQL> INSERT INTO cursuri (ID_curs, titlu_curs) VALUES(31, 'NoSQL');

1 row created.

SQL> select * from cursuri;

ID_C TITLU_CURS              AN   SEMESTRU    CREDITE                           
---- --------------- ---------- ---------- ----------                           
21   Logica                   1          1          5                           
22   Matematica               1          1          4                           
23   OOP                      1          2          5                           
24   BD                       2          1          8                           
25   Java                     2          2          5                           
26   Tehnologii Web           2          2          5                           
27   Sec. Info.               3          1          5                           
28   DSFUM                    3          1          6                           
29   Limbaje formale          2          1          5                           
30   Inv. automata            3          1          5                           
30   Inv. automata            3          1          5                           

ID_C TITLU_CURS              AN   SEMESTRU    CREDITE                           
---- --------------- ---------- ---------- ----------                           
31   NoSQL                                                                      

12 rows selected.

SQL> INSERT INTO note
  2  SELECT nr_matricol, 30, 10, SYSDATE
  3    FROM studenti
  4    WHERE an=3;

5 rows created.

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

NR_MAT ID_C    VALOARE DATA_NOTA                                                
------ ---- ---------- ---------                                                
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

NR_MAT ID_C    VALOARE DATA_NOTA                                                
------ ---- ---------- ---------                                                
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

NR_MAT ID_C    VALOARE DATA_NOTA                                                
------ ---- ---------- ---------                                                
117    21            7 18-FEB-15                                                
117    22            6 20-FEB-15                                                
117    23            4 25-JUN-15                                                
118    21            7 22-FEB-15                                                
118    22            7 24-FEB-15                                                
118    23            7 21-JUN-15                                                
119    21            7 18-FEB-15                                                
119    22            8 20-FEB-15                                                
119    23            9 21-JUN-15                                                
111    30           10 04-DEC-24                                                
112    30           10 04-DEC-24                                                

NR_MAT ID_C    VALOARE DATA_NOTA                                                
------ ---- ---------- ---------                                                
113    30           10 04-DEC-24                                                
114    30           10 04-DEC-24                                                
115    30           10 04-DEC-24                                                

47 rows selected.

SQL> CREATE SEQUENCE s1
  2    INCREMENT BY 2
  3    START WITH 10
  4    MAXVALUE 15;

Sequence created.

SQL> select s1.nexval from dual;
select s1.nexval from dual
       *
ERROR at line 1:
ORA-00904: "S1"."NEXVAL": invalid identifier 


SQL> select s1.nextval from dual;

   NEXTVAL                                                                      
----------                                                                      
        10                                                                      

SQL> select s1.nextval from dual;

   NEXTVAL                                                                      
----------                                                                      
        12                                                                      

SQL> select s1.nextval from dual;

   NEXTVAL                                                                      
----------                                                                      
        14                                                                      

SQL> select s1.nextval from dual;
select s1.nextval from dual
*
ERROR at line 1:
ORA-08004: sequence S1.NEXTVAL exceeds MAXVALUE and cannot be instantiated 


SQL> select s1.nextval from dual;
select s1.nextval from dual
*
ERROR at line 1:
ORA-08004: sequence S1.NEXTVAL exceeds MAXVALUE and cannot be instantiated 


SQL> drop sequence s1;

Sequence dropped.

SQL> CREATE SEQUENCE s1
  2    INCREMENT BY 2
  3    START WITH 10
  4    MAXVALUE 15;

Sequence created.

SQL> insert into cursuri (id_curs, titlu_curs) ;
insert into cursuri (id_curs, titlu_curs) 
                                         *
ERROR at line 1:
ORA-00926: missing VALUES keyword 


SQL>   UPDATE studenti
  2  SET bursa=bursa*0.15 WHERE bursa<300;

1 row updated.

SQL> SET bursa=bursa*1.15 WHERE bursa<300;
SP2-0735: unknown SET option beginning "bursa=burs..."
SQL>   UPDATE studenti
  2  SET bursa=bursa*1.15 WHERE bursa<300;

1 row updated.

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
120    Pintescu   Andrei              1 B1      43.13 26-AUG-97                 
121    Arhire     Alexandra           1 B1            02-JUL-97                 

NR_MAT NUME       PRENUME            AN GR      BURSA DATA_NAST                 
------ ---------- ---------- ---------- -- ---------- ---------                 
122    Cobzaru    George              1 B1        350 29-APR-97                 
123    Bucur      Andreea             1 B2            10-MAY-97                 

13 rows selected.

SQL> update studenti set bursa=500 where nr_matricol in (select nr_matricol from note where valoare=10);

6 rows updated.

SQL> selet * from studenti;
SP2-0734: unknown command beginning "selet * fr..." - rest of line ignored.
SQL> select * from studenti;

NR_MAT NUME       PRENUME            AN GR      BURSA DATA_NAST                 
------ ---------- ---------- ---------- -- ---------- ---------                 
111    Popescu    Bogdan              3 A2        500 17-FEB-95                 
112    Prelipcean Radu                3 A2        500 26-MAY-95                 
113    Antonie    Ioana               3 A2        500 03-JAN-95                 
114    Arhire     Raluca              3 A4        500 26-DEC-95                 
115    Panaite    Alexandru           3 B3        500 13-APR-95                 
116    Bodnar     Ioana               2 A1        500 26-AUG-96                 
117    Archip     Andrada             2 A1        350 03-APR-96                 
118    Ciobotariu Ciprian             2 A1        350 03-APR-96                 
119    Bodnar     Ioana               2 B2            10-JUN-96                 
120    Pintescu   Andrei              1 B1      43.13 26-AUG-97                 
121    Arhire     Alexandra           1 B1            02-JUL-97                 

NR_MAT NUME       PRENUME            AN GR      BURSA DATA_NAST                 
------ ---------- ---------- ---------- -- ---------- ---------                 
122    Cobzaru    George              1 B1        350 29-APR-97                 
123    Bucur      Andreea             1 B2            10-MAY-97                 

13 rows selected.

SQL> rollback;

Rollback complete.

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

NR_MAT NUME       PRENUME            AN GR      BURSA DATA_NAST                 
------ ---------- ---------- ---------- -- ---------- ---------                 
122    Cobzaru    George              1 B1        350 29-APR-97                 
123    Bucur      Andreea             1 B2            10-MAY-97                 

13 rows selected.

SQL> update studenti s set bursa=500 where exist (select 1 from note n where valoare=10 and s.nr_matricol=n.nr_matricol);
update studenti s set bursa=500 where exist (select 1 from note n where valoare=10 and s.nr_matricol=n.nr_matricol)
                                             *
ERROR at line 1:
ORA-00936: missing expression 


SQL> update studenti s set bursa=500 where exist (select 1 from note n where valoare=10 and s.nr_matricol=n.nr_matricol);
update studenti s set bursa=500 where exist (select 1 from note n where valoare=10 and s.nr_matricol=n.nr_matricol)
                                             *
ERROR at line 1:
ORA-00936: missing expression 


SQL> update studenti s set bursa=500 where exists (select 1 from note n where valoare=10 and s.nr_matricol=n.nr_matricol);

6 rows updated.

SQL> update studenti s set bursa=100* (select round(avg(valoare),2) from note n where s.nr_matricol=n.nr_matricol);

13 rows updated.

SQL> select * from studenti;

NR_MAT NUME       PRENUME            AN GR      BURSA DATA_NAST                 
------ ---------- ---------- ---------- -- ---------- ---------                 
111    Popescu    Bogdan              3 A2        871 17-FEB-95                 
112    Prelipcean Radu                3 A2        643 26-MAY-95                 
113    Antonie    Ioana               3 A2        800 03-JAN-95                 
114    Arhire     Raluca              3 A4        686 26-DEC-95                 
115    Panaite    Alexandru           3 B3        914 13-APR-95                 
116    Bodnar     Ioana               2 A1        967 26-AUG-96                 
117    Archip     Andrada             2 A1        567 03-APR-96                 
118    Ciobotariu Ciprian             2 A1        700 03-APR-96                 
119    Bodnar     Ioana               2 B2        800 10-JUN-96                 
120    Pintescu   Andrei              1 B1            26-AUG-97                 
121    Arhire     Alexandra           1 B1            02-JUL-97                 

NR_MAT NUME       PRENUME            AN GR      BURSA DATA_NAST                 
------ ---------- ---------- ---------- -- ---------- ---------                 
122    Cobzaru    George              1 B1            29-APR-97                 
123    Bucur      Andreea             1 B2            10-MAY-97                 

13 rows selected.

SQL> update studenti s set bursa=100* (select round(avg(valoare),2) media from note n where s.nr_matricol=n.nr_matricol);

13 rows updated.

SQL> delete from studenti where nr_matricol not in (select nr_matricol from note);

4 rows deleted.

SQL> rollback
  2  ;

Rollback complete.

SQL> select * from note
  2  ;

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

NR_MAT ID_C    VALOARE DATA_NOTA                                                
------ ---- ---------- ---------                                                
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

NR_MAT ID_C    VALOARE DATA_NOTA                                                
------ ---- ---------- ---------                                                
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

NR_MAT ID_C    VALOARE DATA_NOTA                                                
------ ---- ---------- ---------                                                
117    21            7 18-FEB-15                                                
117    22            6 20-FEB-15                                                
117    23            4 25-JUN-15                                                
118    21            7 22-FEB-15                                                
118    22            7 24-FEB-15                                                
118    23            7 21-JUN-15                                                
119    21            7 18-FEB-15                                                
119    22            8 20-FEB-15                                                
119    23            9 21-JUN-15                                                
111    30           10 04-DEC-24                                                
112    30           10 04-DEC-24                                                

NR_MAT ID_C    VALOARE DATA_NOTA                                                
------ ---- ---------- ---------                                                
113    30           10 04-DEC-24                                                
114    30           10 04-DEC-24                                                
115    30           10 04-DEC-24                                                

47 rows selected.

SQL> create table medii as select nume, prenume, bursa, round(avg(valoare),2) media from studenti natural join note group by nume, prenume, bursa, nr_matricol;

Table created.

SQL> alter table cursuri add (abreviere char(2) NULL, descriere varchar(20) default 'obligatoriu');

Table altered.

SQL> alter table drop column descriere;
alter table drop column descriere
            *
ERROR at line 1:
ORA-00903: invalid table name 


SQL> alter table cursuri drop column descriere;

Table altered.

SQL> alter table profesori modify (nume varchar(20), prenume varchar2(20));

Table altered.

SQL> alter table note rename column valoare to nota;

Table altered.

SQL> alter table note rename column nota to valoare;

Table altered.

SQL> describe note;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 NR_MATRICOL                                        CHAR(6)
 ID_CURS                                            CHAR(4)
 VALOARE                                            NUMBER(2)
 DATA_NOTARE                                        DATE

SQL> select * from profesori;

ID_P NUME                 PRENUME              GRAD_                            
---- -------------------- -------------------- -----                            
p1   Masalagiu            Cristian             Prof                             
p2   Buraga               Sabin                Conf                             
p3   Lucanu               Dorel                Prof                             
p4   Tiplea               Laurentiu            Prof                             
p5   Iacob                Florin               Lect                             
p6   Breaban              Mihaela              Conf                             
p7   Varlan               Cosmin               Lect                             
p8   Frasinaru            Cristian             Prof                             
p9   Ciobaca              Stefan               Conf                             
p10  Captarencu           Oana                 Lect                             
p11  Moruz                Alexandru            Lect                             

ID_P NUME                 PRENUME              GRAD_                            
---- -------------------- -------------------- -----                            
p20  PASCARIU             GEORGIANA                                             
p21  LAZAR                LUCIAN                                                
p22  Kristo               ROBERT                                                
p20  Nastasa              Laura                                                 
p21  PASAT                Tiberiu                                               

16 rows selected.

SQL> alter table studenti add constraint pk_stud Primary Key (nr_matricol);

Table altered.

SQL> describe studenti;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 NR_MATRICOL                               NOT NULL CHAR(6)
 NUME                                               VARCHAR2(10)
 PRENUME                                            VARCHAR2(10)
 AN                                                 NUMBER(1)
 GRUPA                                              CHAR(2)
 BURSA                                              NUMBER(6,2)
 DATA_NASTERE                                       DATE

SQL> insert into studenti value(nr_matricol, nume, prenume) values (111, 'a', 'b');
insert into studenti value(nr_matricol, nume, prenume) values (111, 'a', 'b')
*
ERROR at line 1:
ORA-00001: unique constraint (STUDENT.PK_STUD) violated 


SQL> insert into studenti value(nume, prenume) values ('a', 'b');
insert into studenti value(nume, prenume) values ('a', 'b')
*
ERROR at line 1:
ORA-01400: cannot insert NULL into ("STUDENT"."STUDENTI"."NR_MATRICOL") 


SQL> select * from profesori;

ID_P NUME                 PRENUME              GRAD_                            
---- -------------------- -------------------- -----                            
p1   Masalagiu            Cristian             Prof                             
p2   Buraga               Sabin                Conf                             
p3   Lucanu               Dorel                Prof                             
p4   Tiplea               Laurentiu            Prof                             
p5   Iacob                Florin               Lect                             
p6   Breaban              Mihaela              Conf                             
p7   Varlan               Cosmin               Lect                             
p8   Frasinaru            Cristian             Prof                             
p9   Ciobaca              Stefan               Conf                             
p10  Captarencu           Oana                 Lect                             
p11  Moruz                Alexandru            Lect                             

ID_P NUME                 PRENUME              GRAD_                            
---- -------------------- -------------------- -----                            
p20  PASCARIU             GEORGIANA                                             
p21  LAZAR                LUCIAN                                                
p22  Kristo               ROBERT                                                
p20  Nastasa              Laura                                                 
p21  PASAT                Tiberiu                                               

16 rows selected.

SQL> alter table profesori add constraint pk_prof PRIMARY KEY (id_prof);
alter table profesori add constraint pk_prof PRIMARY KEY (id_prof)
                                     *
ERROR at line 1:
ORA-02437: cannot validate (STUDENT.PK_PROF) - primary key violated 


SQL> alter table note add constraint fk_stud FOREIGN KEY (nr_matricol);
alter table note add constraint fk_stud FOREIGN KEY (nr_matricol)
                                                                *
ERROR at line 1:
ORA-00905: missing keyword 


SQL> alter table note add constraint fk_stud FOREIGN KEY (nr_matricol) references studenti (nr_matricol):
  2  ;
alter table note add constraint fk_stud FOREIGN KEY (nr_matricol) references studenti (nr_matricol):
                                                                                                   *
ERROR at line 1:
ORA-01735: invalid ALTER TABLE option 


SQL> alter table note add constraint fk_stud FOREIGN KEY (nr_matricol) references studenti (nr_matricol);

Table altered.

SQL> spool off
