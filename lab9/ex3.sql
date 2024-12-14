SQL> select s1.nume, s1.prenume, s1.grupa from studenti s1 join note n1 on s1.nr_matricol=n1.nr_matricol group by s1.nume, s1.prenume, s1.grupa
  2  ;

NUME       PRENUME    GR                                                        
---------- ---------- --                                                        
Prelipcean Radu       A2                                                        
Bodnar     Ioana      A1                                                        
Antonie    Ioana      A2                                                        
Bodnar     Ioana      B2                                                        
Ciobotariu Ciprian    A1                                                        
Popescu    Bogdan     A2                                                        
Arhire     Raluca     A4                                                        
Panaite    Alexandru  B3                                                        
Archip     Andrada    A1                                                        

9 rows selected.

SQL> select s1.nume, s1.prenume, s1.grupa from studenti s1 join note n1 on s1.nr_matricol=n1.nr_matricol group by s1.nume, s1.prenume, s1.grupa, s1.nr_matricol having avg(n1.valoare) = (select max(avg(n2.valoare)) from note n2 join studenti s2 on s2.nr_matricol=n2.nr_matricol where s2.grupa=s1.grupa);
select s1.nume, s1.prenume, s1.grupa from studenti s1 join note n1 on s1.nr_matricol=n1.nr_matricol group by s1.nume, s1.prenume, s1.grupa, s1.nr_matricol having avg(n1.valoare) = (select max(avg(n2.valoare)) from note n2 join studenti s2 on s2.nr_matricol=n2.nr_matricol where s2.grupa=s1.grupa)
                                                                                                                                                                                                *
ERROR at line 1:
ORA-00978: nested group function without GROUP BY 


SQL> select s1.nume, s1.prenume, s1.grupa, avg(n1.valoare) from studenti s1 join note n1 on s1.nr_matricol=n1.nr_matricol group by s1.nume, s1.prenume, s1.grupa, s1.nr_matricol having avg(n1.valoare) = (select max(avg(n2.valoare)) from note n2 join studenti s2 on s2.nr_matricol=n2.nr_matricol where s2.grupa=s1.grupa);
select s1.nume, s1.prenume, s1.grupa, avg(n1.valoare) from studenti s1 join note n1 on s1.nr_matricol=n1.nr_matricol group by s1.nume, s1.prenume, s1.grupa, s1.nr_matricol having avg(n1.valoare) = (select max(avg(n2.valoare)) from note n2 join studenti s2 on s2.nr_matricol=n2.nr_matricol where s2.grupa=s1.grupa)
                                                                                                                                                                                                                 *
ERROR at line 1:
ORA-00978: nested group function without GROUP BY 


SQL> select s1.nume, s1.prenume, s1.grupa, avg(n1.valoare) from studenti s1 join note n1 on s1.nr_matricol=n1.nr_matricol group by s1.nume, s1.prenume, s1.grupa, s1.nr_matricol having avg(n1.valoare) = (select max(avg(n2.valoare)) from note n2 join studenti s2 on s2.nr_matricol=n2.nr_matricol where s2.grupa=s1.grupa);
select s1.nume, s1.prenume, s1.grupa, avg(n1.valoare) from studenti s1 join note n1 on s1.nr_matricol=n1.nr_matricol group by s1.nume, s1.prenume, s1.grupa, s1.nr_matricol having avg(n1.valoare) = (select max(avg(n2.valoare)) from note n2 join studenti s2 on s2.nr_matricol=n2.nr_matricol where s2.grupa=s1.grupa)
                                                                                                                                                                                                                 *
ERROR at line 1:
ORA-00978: nested group function without GROUP BY 


SQL> ed
Wrote file afiedt.buf

  1* select s1.nume, s1.prenume, s1.grupa from studenti s1 join note n1 on s1.nr_matricol=n1.nr_matricol group by s1.nume, s1.prenume, s1.grupa, s1.nr_matricol;
SQL> /
select s1.nume, s1.prenume, s1.grupa from studenti s1 join note n1 on s1.nr_matricol=n1.nr_matricol group by s1.nume, s1.prenume, s1.grupa, s1.nr_matricol;
                                                                                                                                                          *
ERROR at line 1:
ORA-00911: invalid character 


SQL> ed
Wrote file afiedt.buf

  1* select s1.nume, s1.prenume, s1.grupa from studenti s1 join note n1 on s1.nr_matricol=n1.nr_matricol group by s1.nume, s1.prenume, s1.grupa, s1.nr_matricol;
SQL> select s1.nume, s1.prenume, s1.grupa, avg(n1.valoare) from studenti s1 join note n1 on s1.nr_matricol=n1.nr_matricol group by s1.nume, s1.prenume, s1.grupa, s1.nr_matricol having avg(n1.valoare) = (select max(avg(n2.valoare)) from note n2 join studenti s2 on s2.nr_matricol=n2.nr_matricol where s2.grupa=s1.grupa);
select s1.nume, s1.prenume, s1.grupa, avg(n1.valoare) from studenti s1 join note n1 on s1.nr_matricol=n1.nr_matricol group by s1.nume, s1.prenume, s1.grupa, s1.nr_matricol having avg(n1.valoare) = (select max(avg(n2.valoare)) from note n2 join studenti s2 on s2.nr_matricol=n2.nr_matricol where s2.grupa=s1.grupa)
                                                                                                                                                                                                                 *
ERROR at line 1:
ORA-00978: nested group function without GROUP BY 


SQL> ed
Wrote file afiedt.buf

  1* select s1.nume, s1.prenume, s1.grupa, avg(n1.valoare) from studenti s1 join note n1 on s1.nr_matricol=n1.nr_matricol group by s1.nume, s1.prenume, s1.grupa, s1.nr_matricol having avg(n1.valoare) = (select max(avg(n2.valoare)) from note n2 join studenti s2 on s2.nr_matricol=n2.nr_matricol where s2.grupa=s1.grupa group by s2.nume, s2.prenume, s2.nr_matricol, s2.grupa);
SQL> /
select s1.nume, s1.prenume, s1.grupa, avg(n1.valoare) from studenti s1 join note n1 on s1.nr_matricol=n1.nr_matricol group by s1.nume, s1.prenume, s1.grupa, s1.nr_matricol having avg(n1.valoare) = (select max(avg(n2.valoare)) from note n2 join studenti s2 on s2.nr_matricol=n2.nr_matricol where s2.grupa=s1.grupa group by s2.nume, s2.prenume, s2.nr_matricol, s2.grupa);
                                                                                                                                                                                                                                                                                                                                                                                *
ERROR at line 1:
ORA-00911: invalid character 


SQL> ed
Wrote file afiedt.buf

  1* select s1.nume, s1.prenume, s1.grupa, avg(n1.valoare) from studenti s1 join note n1 on s1.nr_matricol=n1.nr_matricol group by s1.nume, s1.prenume, s1.grupa, s1.nr_matricol having avg(n1.valoare) = (select max(avg(n2.valoare)) from note n2 join studenti s2 on s2.nr_matricol=n2.nr_matricol where s2.grupa=s1.grupa group by s2.nume, s2.prenume, s2.nr_matricol, s2.grupa);
  2  /
select s1.nume, s1.prenume, s1.grupa, avg(n1.valoare) from studenti s1 join note n1 on s1.nr_matricol=n1.nr_matricol group by s1.nume, s1.prenume, s1.grupa, s1.nr_matricol having avg(n1.valoare) = (select max(avg(n2.valoare)) from note n2 join studenti s2 on s2.nr_matricol=n2.nr_matricol where s2.grupa=s1.grupa group by s2.nume, s2.prenume, s2.nr_matricol, s2.grupa);
                                                                                                                                                                                                                                                                                                                                                                                *
ERROR at line 1:
ORA-00911: invalid character 


SQL> select s1.nume, s1.prenume, s1.grupa, avg(n1.valoare) from studenti s1 join note n1 on s1.nr_matricol=n1.nr_matricol group by s1.nume, s1.prenume, s1.grupa, s1.nr_matricol having avg(n1.valoare) = (select max(avg(n2.valoare)) from note n2 join studenti s2 on s2.nr_matricol=n2.nr_matricol where s2.grupa=s1.grupa group by s2.nr_matricol, s2.nume, s2.prenume, s2.grupa);

NUME       PRENUME    GR AVG(N1.VALOARE)                                        
---------- ---------- -- ---------------                                        
Bodnar     Ioana      B2               8                                        
Arhire     Raluca     A4      6.85714286                                        
Popescu    Bogdan     A2      8.71428571                                        
Panaite    Alexandru  B3      9.14285714                                        
Bodnar     Ioana      A1      9.66666667                                        

SQL> select s1.nume, s1.prenume, s1.grupa, avg(n1.valoare) from studenti s1 join note n1 on s1.nr_matricol=n1.nr_matricol group by s1.nume, s1.prenume, s1.grupa, s1.nr_matricol having avg(n1.valoare) = select max(Medie) from (select avg(n2.valoare) as "Medie" from note n2 join studenti s2 on s2.nr_matricol=n2.nr_matricol where s2.grupa=s1.grupa group by s2.nr_matricol, s2.nume, s2.prenume, s2.grupa);
select s1.nume, s1.prenume, s1.grupa, avg(n1.valoare) from studenti s1 join note n1 on s1.nr_matricol=n1.nr_matricol group by s1.nume, s1.prenume, s1.grupa, s1.nr_matricol having avg(n1.valoare) = select max(Medie) from (select avg(n2.valoare) as "Medie" from note n2 join studenti s2 on s2.nr_matricol=n2.nr_matricol where s2.grupa=s1.grupa group by s2.nr_matricol, s2.nume, s2.prenume, s2.grupa)
                                                                                                                                                                                                     *
ERROR at line 1:
ORA-00936: missing expression 


SQL> select s1.nume, s1.prenume, s1.grupa, avg(n1.valoare) from studenti s1 join note n1 on s1.nr_matricol=n1.nr_matricol group by s1.nume, s1.prenume, s1.grupa, s1.nr_matricol having avg(n1.valoare) = select max(Medie) from (select avg(n2.valoare) as Medie from note n2 join studenti s2 on s2.nr_matricol=n2.nr_matricol where s2.grupa=s1.grupa group by s2.nr_matricol, s2.nume, s2.prenume, s2.grupa);
select s1.nume, s1.prenume, s1.grupa, avg(n1.valoare) from studenti s1 join note n1 on s1.nr_matricol=n1.nr_matricol group by s1.nume, s1.prenume, s1.grupa, s1.nr_matricol having avg(n1.valoare) = select max(Medie) from (select avg(n2.valoare) as Medie from note n2 join studenti s2 on s2.nr_matricol=n2.nr_matricol where s2.grupa=s1.grupa group by s2.nr_matricol, s2.nume, s2.prenume, s2.grupa)
                                                                                                                                                                                                     *
ERROR at line 1:
ORA-00936: missing expression 


SQL> select s1.nume, s1.prenume, s1.grupa, avg(n1.valoare) from studenti s1 join note n1 on s1.nr_matricol=n1.nr_matricol group by s1.nume, s1.prenume, s1.grupa, s1.nr_matricol having avg(n1.valoare) = (select max(Medie) from (select avg(n2.valoare) as "Medie" from note n2 join studenti s2 on s2.nr_matricol=n2.nr_matricol where s2.grupa=s1.grupa group by s2.nr_matricol, s2.nume, s2.prenume, s2.grupa));
select s1.nume, s1.prenume, s1.grupa, avg(n1.valoare) from studenti s1 join note n1 on s1.nr_matricol=n1.nr_matricol group by s1.nume, s1.prenume, s1.grupa, s1.nr_matricol having avg(n1.valoare) = (select max(Medie) from (select avg(n2.valoare) as "Medie" from note n2 join studenti s2 on s2.nr_matricol=n2.nr_matricol where s2.grupa=s1.grupa group by s2.nr_matricol, s2.nume, s2.prenume, s2.grupa))
                                                                                                                                                                                                                                                                                                                                              *
ERROR at line 1:
ORA-00904: "S1"."GRUPA": invalid identifier 


SQL> select s1.nume, s1.prenume, s1.grupa, avg(n1.valoare) from studenti s1 join note n1 on s1.nr_matricol=n1.nr_matricol group by s1.nume, s1.prenume, s1.grupa, s1.nr_matricol having avg(n1.valoare) = (select max(Medie) from (select avg(n2.valoare) as "Medie" from note n2 join studenti s2 on s2.nr_matricol=n2.nr_matricol where s2.grupa=s1.grupa group by s2.nr_matricol, s2.nume, s2.prenume, s2.grupa));
select s1.nume, s1.prenume, s1.grupa, avg(n1.valoare) from studenti s1 join note n1 on s1.nr_matricol=n1.nr_matricol group by s1.nume, s1.prenume, s1.grupa, s1.nr_matricol having avg(n1.valoare) = (select max(Medie) from (select avg(n2.valoare) as "Medie" from note n2 join studenti s2 on s2.nr_matricol=n2.nr_matricol where s2.grupa=s1.grupa group by s2.nr_matricol, s2.nume, s2.prenume, s2.grupa))
                                                                                                                                                                                                                                                                                                                                              *
ERROR at line 1:
ORA-00904: "S1"."GRUPA": invalid identifier 


SQL> select s1.nume, s1.prenume, avg(n1.valoare) as "Medie maxima" from studenti s1 join note n1 on s1.nr_matricol=n1.nr_matricol where avg(n1.valoare)=(select max(Medie) from (select avg(n2.valoare) as "Medie" from note n2 join studenti s2 on s2.nr_matricol=n2.nr_matricol where s1.grupa=s2.grupa group by s2.nr_matricol));
select s1.nume, s1.prenume, avg(n1.valoare) as "Medie maxima" from studenti s1 join note n1 on s1.nr_matricol=n1.nr_matricol where avg(n1.valoare)=(select max(Medie) from (select avg(n2.valoare) as "Medie" from note n2 join studenti s2 on s2.nr_matricol=n2.nr_matricol where s1.grupa=s2.grupa group by s2.nr_matricol))
                                                                                                                                   *
ERROR at line 1:
ORA-00934: group function is not allowed here 


SQL> select s1.nume, s1.prenume, avg(n1.valoare) as "Medie maxima", s1.grupa from studenti s1 join note n1 on s1.nr_matricol=n1.nr_matricol group by s1.nr_matricol, s1.nume, s1.prenume, s1.grupa having avg(n1.valoare)=(select max(Medie) from (select avg(n2.valoare) as "Medie" from note n2 join studenti s2 on s2.nr_matricol=n2.nr_matricol where s1.grupa=s2.grupa group by s2.nr_matricol));
select s1.nume, s1.prenume, avg(n1.valoare) as "Medie maxima", s1.grupa from studenti s1 join note n1 on s1.nr_matricol=n1.nr_matricol group by s1.nr_matricol, s1.nume, s1.prenume, s1.grupa having avg(n1.valoare)=(select max(Medie) from (select avg(n2.valoare) as "Medie" from note n2 join studenti s2 on s2.nr_matricol=n2.nr_matricol where s1.grupa=s2.grupa group by s2.nr_matricol))
                                                                                                                                                                                                                                                                                                                                                     *
ERROR at line 1:
ORA-00904: "S1"."GRUPA": invalid identifier 


SQL> select s1.nume, s1.prenume, avg(n1.valoare) as "Medie maxima", s1.grupa from studenti s1 join note n1 on s1.nr_matricol=n1.nr_matricol group by s1.nr_matricol, s1.nume, s1.prenume, s1.grupa having avg(n1.valoare)=(select max(Medie) from (select avg(n2.valoare) as Medie from note n2 join studenti s2 on s2.nr_matricol=n2.nr_matricol where s1.grupa=s2.grupa group by s2.nr_matricol));
select s1.nume, s1.prenume, avg(n1.valoare) as "Medie maxima", s1.grupa from studenti s1 join note n1 on s1.nr_matricol=n1.nr_matricol group by s1.nr_matricol, s1.nume, s1.prenume, s1.grupa having avg(n1.valoare)=(select max(Medie) from (select avg(n2.valoare) as Medie from note n2 join studenti s2 on s2.nr_matricol=n2.nr_matricol where s1.grupa=s2.grupa group by s2.nr_matricol))
                                                                                                                                                                                                                                                                                                                                                   *
ERROR at line 1:
ORA-00904: "S1"."GRUPA": invalid identifier 


SQL> select s1.nume, s1.prenume, avg(n1.valoare) as "Medie maxima", s1.grupa from studenti s1 join note n1 on s1.nr_matricol=n1.nr_matricol group by s1.nr_matricol, s1.nume, s1.prenume, s1.grupa having avg(n1.valoare)=(select max(Medie) from (select avg(n2.valoare) as Medie from note n2 join studenti s2 on s2.nr_matricol=n2.nr_matricol where s2.grupa=s1.grupa group by s2.nr_matricol));
select s1.nume, s1.prenume, avg(n1.valoare) as "Medie maxima", s1.grupa from studenti s1 join note n1 on s1.nr_matricol=n1.nr_matricol group by s1.nr_matricol, s1.nume, s1.prenume, s1.grupa having avg(n1.valoare)=(select max(Medie) from (select avg(n2.valoare) as Medie from note n2 join studenti s2 on s2.nr_matricol=n2.nr_matricol where s2.grupa=s1.grupa group by s2.nr_matricol))
                                                                                                                                                                                                                                                                                                                                                            *
ERROR at line 1:
ORA-00904: "S1"."GRUPA": invalid identifier 


SQL> SELECT s1.nume, s1.prenume, AVG(n1.valoare) AS "Medie maxima", s1.grupa
  2  FROM studenti s1
  3  JOIN note n1 ON s1.nr_matricol = n1.nr_matricol
  4  GROUP BY s1.nr_matricol, s1.nume, s1.prenume, s1.grupa
  5  HAVING AVG(n1.valoare) = (
  6      SELECT MAX(avg_n2)
  7      FROM (
  8          SELECT AVG(n2.valoare) AS avg_n2
  9          FROM note n2
 10          JOIN studenti s2 ON s2.nr_matricol = n2.nr_matricol
 11          WHERE s2.grupa = s1.grupa
 12          GROUP BY s2.nr_matricol
 13      ) t
 14  ;
    SELECT MAX(avg_n2)
    *
ERROR at line 6:
ORA-00921: unexpected end of SQL command 


SQL> SELECT s1.nume, s1.prenume, AVG(n1.valoare) AS "Medie maxima", s1.grupa
  2  FROM studenti s1
  3  JOIN note n1 ON s1.nr_matricol = n1.nr_matricol
  4  GROUP BY s1.nr_matricol, s1.nume, s1.prenume, s1.grupa
  5  HAVING AVG(n1.valoare) = (
  6      SELECT MAX(avg_n2)
  7      FROM (
  8          SELECT AVG(n2.valoare) AS avg_n2
  9          FROM note n2
 10          JOIN studenti s2 ON s2.nr_matricol = n2.nr_matricol
 11          WHERE s2.grupa = s1.grupa
 12          GROUP BY s2.nr_matricol
 13      ) t
 14  );
        WHERE s2.grupa = s1.grupa
                         *
ERROR at line 11:
ORA-00904: "S1"."GRUPA": invalid identifier 


SQL> select s1.nume, s1.prenume, s1.grupa, avg(n1.valoare) from studenti s1 join note n1 on s1.nr_matricol=n1.nr_matricol group by s1.nume, s1.prenume, s1.grupa, s1.nr_matricol having avg(n1.valoare) = (select max(avg(n2.valoare)) from note n2 join studenti s2 on s2.nr_matricol=n2.nr_matricol where s2.grupa=s1.grupa group by s2.nr_matricol, s2.nume, s2.prenume, s2.grupa);

NUME       PRENUME    GR AVG(N1.VALOARE)                                        
---------- ---------- -- ---------------                                        
Bodnar     Ioana      B2               8                                        
Arhire     Raluca     A4      6.85714286                                        
Popescu    Bogdan     A2      8.71428571                                        
Panaite    Alexandru  B3      9.14285714                                        
Bodnar     Ioana      A1      9.66666667                                        

SQL> spool off
