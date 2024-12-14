SQL> select s.nume, s.prenume, n.valoare from studenti s join note n on s.nr_matricol=n.nr_matricol join cursuri c on c.id_curs=n.id_curs where trim(titlu_curs)='Logica' and n.valoare= (select n.valoare from note n join studenti s on n.nr_matricol=s.nr_matricol join cursuri c on c.id_curs=n.id_curs where ((trim(s.nume)='Ciobotariu' and trim(s.prenume)='Ciprian') and c.titlu_curs='Logica');
select s.nume, s.prenume, n.valoare from studenti s join note n on s.nr_matricol=n.nr_matricol join cursuri c on c.id_curs=n.id_curs where trim(titlu_curs)='Logica' and n.valoare= (select n.valoare from note n join studenti s on n.nr_matricol=s.nr_matricol join cursuri c on c.id_curs=n.id_curs where ((trim(s.nume)='Ciobotariu' and trim(s.prenume)='Ciprian') and c.titlu_curs='Logica')
                                                                                                                                                                                     *
ERROR at line 1:
ORA-00921: unexpected end of SQL command 


SQL> select s.nume, s.prenume, n.valoare from studenti s join note n on s.nr_matricol=n.nr_matricol join cursuri c on c.id_curs=n.id_curs where trim(titlu_curs)='Logica' and n.valoare= (select n.valoare from note n join studenti s on n.nr_matricol=s.nr_matricol join cursuri c on c.id_curs=n.id_curs where ((trim(s.nume)='Ciobotariu' and trim(s.prenume)='Ciprian') and c.titlu_curs='Logica'));

NUME       PRENUME       VALOARE                                                
---------- ---------- ----------                                                
Prelipcean Radu                7                                                
Archip     Andrada             7                                                
Ciobotariu Ciprian             7                                                
Bodnar     Ioana               7                                                

SQL> select s.nume, s.prenume, n.valoare from studenti s join note n on s.nr_matricol=n.nr_matricol join cursuri c on c.id_curs=n.id_curs where ((trim(titlu_curs)='Logica' and n.valoare= (select n.valoare from note n join studenti s on n.nr_matricol=s.nr_matricol join cursuri c on c.id_curs=n.id_curs where ((trim(s.nume)='Ciobotariu' and trim(s.prenume)='Ciprian') and c.titlu_curs='Logica'))) and (trim(nume), trim(prenume)) not in ('Ciobotariu', 'Ciprian');
select s.nume, s.prenume, n.valoare from studenti s join note n on s.nr_matricol=n.nr_matricol join cursuri c on c.id_curs=n.id_curs where ((trim(titlu_curs)='Logica' and n.valoare= (select n.valoare from note n join studenti s on n.nr_matricol=s.nr_matricol join cursuri c on c.id_curs=n.id_curs where ((trim(s.nume)='Ciobotariu' and trim(s.prenume)='Ciprian') and c.titlu_curs='Logica'))) and (trim(nume), trim(prenume)) not in ('Ciobotariu', 'Ciprian')
                                                                                                                                                             *
ERROR at line 1:
ORA-00920: invalid relational operator 


SQL> select s.nume, s.prenume, n.valoare from studenti s join note n on s.nr_matricol=n.nr_matricol join cursuri c on c.id_curs=n.id_curs where ((trim(titlu_curs)='Logica' and n.valoare= (select n.valoare from note n join studenti s on n.nr_matricol=s.nr_matricol join cursuri c on c.id_curs=n.id_curs where ((trim(s.nume)='Ciobotariu' and trim(s.prenume)='Ciprian') and c.titlu_curs='Logica'))) and (trim(s.nume)) not in ('Ciobotariu');
select s.nume, s.prenume, n.valoare from studenti s join note n on s.nr_matricol=n.nr_matricol join cursuri c on c.id_curs=n.id_curs where ((trim(titlu_curs)='Logica' and n.valoare= (select n.valoare from note n join studenti s on n.nr_matricol=s.nr_matricol join cursuri c on c.id_curs=n.id_curs where ((trim(s.nume)='Ciobotariu' and trim(s.prenume)='Ciprian') and c.titlu_curs='Logica'))) and (trim(s.nume)) not in ('Ciobotariu')
                                                                                                                                                             *
ERROR at line 1:
ORA-00907: missing right parenthesis 


SQL> select s.nume, s.prenume, n.valoare from studenti s join note n on s.nr_matricol=n.nr_matricol join cursuri c on c.id_curs=n.id_curs where ((trim(titlu_curs)='Logica' and n.valoare= (select n.valoare from note n join studenti s on n.nr_matricol=s.nr_matricol join cursuri c on c.id_curs=n.id_curs where ((trim(s.nume)='Ciobotariu' and trim(s.prenume)='Ciprian') and c.titlu_curs='Logica'))) and (trim(s.nume)) not in ('Ciobotariu'));

NUME       PRENUME       VALOARE                                                
---------- ---------- ----------                                                
Prelipcean Radu                7                                                
Archip     Andrada             7                                                
Bodnar     Ioana               7                                                

SQL> select s.nume, s.prenume, n.valoare from studenti s join note n on s.nr_matricol=n.nr_matricol join cursuri c on c.id_curs=n.id_curs where ((trim(titlu_curs)='Logica' and n.valoare= (select n.valoare from note n join studenti s on n.nr_matricol=s.nr_matricol join cursuri c on c.id_curs=n.id_curs where ((trim(s.nume)='Ciobotariu' and trim(s.prenume)='Ciprian') and c.titlu_curs='Logica'))) and (trim(s.nume), trim(s.prenume)) not in ('Ciobotariu', 'Ciprian'));
select s.nume, s.prenume, n.valoare from studenti s join note n on s.nr_matricol=n.nr_matricol join cursuri c on c.id_curs=n.id_curs where ((trim(titlu_curs)='Logica' and n.valoare= (select n.valoare from note n join studenti s on n.nr_matricol=s.nr_matricol join cursuri c on c.id_curs=n.id_curs where ((trim(s.nume)='Ciobotariu' and trim(s.prenume)='Ciprian') and c.titlu_curs='Logica'))) and (trim(s.nume), trim(s.prenume)) not in ('Ciobotariu', 'Ciprian'))
                                                                                                                                                             *
ERROR at line 1:
ORA-00920: invalid relational operator 


SQL> select s.nume, s.prenume, n.valoare from studenti s join note n on s.nr_matricol=n.nr_matricol join cursuri c on c.id_curs=n.id_curs where ((trim(titlu_curs)='Logica' and n.valoare= (select n.valoare from note n join studenti s on n.nr_matricol=s.nr_matricol join cursuri c on c.id_curs=n.id_curs where ((trim(s.nume)='Ciobotariu' and trim(s.prenume)='Ciprian') and c.titlu_curs='Logica'))) and (trim(s.nume)) not in ('Ciobotariu');
select s.nume, s.prenume, n.valoare from studenti s join note n on s.nr_matricol=n.nr_matricol join cursuri c on c.id_curs=n.id_curs where ((trim(titlu_curs)='Logica' and n.valoare= (select n.valoare from note n join studenti s on n.nr_matricol=s.nr_matricol join cursuri c on c.id_curs=n.id_curs where ((trim(s.nume)='Ciobotariu' and trim(s.prenume)='Ciprian') and c.titlu_curs='Logica'))) and (trim(s.nume)) not in ('Ciobotariu')
                                                                                                                                                             *
ERROR at line 1:
ORA-00907: missing right parenthesis 


SQL> select s.nume, s.prenume, n.valoare from studenti s join note n on s.nr_matricol=n.nr_matricol join cursuri c on c.id_curs=n.id_curs where ((trim(titlu_curs)='Logica' and n.valoare= (select n.valoare from note n join studenti s on n.nr_matricol=s.nr_matricol join cursuri c on c.id_curs=n.id_curs where ((trim(s.nume)='Ciobotariu' and trim(s.prenume)='Ciprian') and c.titlu_curs='Logica'))) and (trim(s.nume)) not in ('Ciobotariu'));

NUME       PRENUME       VALOARE                                                
---------- ---------- ----------                                                
Prelipcean Radu                7                                                
Archip     Andrada             7                                                
Bodnar     Ioana               7                                                

SQL> spool off
