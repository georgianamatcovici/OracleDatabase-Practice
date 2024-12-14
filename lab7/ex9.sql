SQL> select s.nume, s.prenume, sum(n.valoare*c.credite) from studenti s join note n on s.nr_matricol=n.nr_matricol join cursuri c on c.id_curs=n.id_curs group by s.nume, s.prenume, s.nr_matricol;

NUME       PRENUME    SUM(N.VALOARE*C.CREDITE)                                  
---------- ---------- ------------------------                                  
Bodnar     Ioana                           135                                  
Panaite    Alexandru                       393                                  
Arhire     Raluca                          293                                  
Ciobotariu Ciprian                          98                                  
Prelipcean Radu                            287                                  
Antonie    Ioana                           351                                  
Popescu    Bogdan                          373                                  
Bodnar     Ioana                           112                                  
Archip     Andrada                          79                                  

9 rows selected.

SQL> select * from (select sum(n.valoare*c.credite) as "Punctaj" from studenti s join note n on s.nr_matricol=n.nr_matricol join cursuri c on c.id_curs=n.id_curs group by s.nume, s.prenume, s.nr_matricol) order by "Punctaj";

   Punctaj                                                                      
----------                                                                      
        79                                                                      
        98                                                                      
       112                                                                      
       135                                                                      
       287                                                                      
       293                                                                      
       351                                                                      
       373                                                                      
       393                                                                      

9 rows selected.

SQL> select * from (select sum(n.valoare*c.credite) as "Punctaj" from studenti s join note n on s.nr_matricol=n.nr_matricol join cursuri c on c.id_curs=n.id_curs group by s.nume, s.prenume, s.nr_matricol) order by "Punctaj" desc;

   Punctaj                                                                      
----------                                                                      
       393                                                                      
       373                                                                      
       351                                                                      
       293                                                                      
       287                                                                      
       135                                                                      
       112                                                                      
        98                                                                      
        79                                                                      

9 rows selected.

SQL> select Punctaj, rownum as nr_ord from (select * from (select sum(n.valoare*c.credite) as "Punctaj" from studenti s join note n on s.nr_matricol=n.nr_matricol join cursuri c on c.id_curs=n.id_curs group by s.nume, s.prenume, s.nr_matricol) order by "Punctaj" desc);
select Punctaj, rownum as nr_ord from (select * from (select sum(n.valoare*c.credite) as "Punctaj" from studenti s join note n on s.nr_matricol=n.nr_matricol join cursuri c on c.id_curs=n.id_curs group by s.nume, s.prenume, s.nr_matricol) order by "Punctaj" desc)
       *
ERROR at line 1:
ORA-00904: "PUNCTAJ": invalid identifier 


SQL> select "Punctaj", rownum as nr_ord from (select * from (select sum(n.valoare*c.credite) as "Punctaj" from studenti s join note n on s.nr_matricol=n.nr_matricol join cursuri c on c.id_curs=n.id_curs group by s.nume, s.prenume, s.nr_matricol) order by "Punctaj" desc);

   Punctaj     NR_ORD                                                           
---------- ----------                                                           
       393          1                                                           
       373          2                                                           
       351          3                                                           
       293          4                                                           
       287          5                                                           
       135          6                                                           
       112          7                                                           
        98          8                                                           
        79          9                                                           

9 rows selected.

SQL> select "Punctaj" from (select "Punctaj", rownum as nr_ord from (select * from (select sum(n.valoare*c.credite) as "Punctaj" from studenti s join note n on s.nr_matricol=n.nr_matricol join cursuri c on c.id_curs=n.id_curs group by s.nume, s.prenume, s.nr_matricol) order by "Punctaj" desc)) where nr_ord=3;

   Punctaj                                                                      
----------                                                                      
       351                                                                      

SQL> select "Punctaj", nr_matricol, rownum as nr_ord from (select * from (select s. nr_matricol, sum(n.valoare*c.credite) as "Punctaj" from studenti s join note n on s.nr_matricol=n.nr_matricol join cursuri c on c.id_curs=n.id_curs group by s.nume, s.prenume, s.nr_matricol) order by "Punctaj" desc)) where nr_ord=3;
select "Punctaj", nr_matricol, rownum as nr_ord from (select * from (select s. nr_matricol, sum(n.valoare*c.credite) as "Punctaj" from studenti s join note n on s.nr_matricol=n.nr_matricol join cursuri c on c.id_curs=n.id_curs group by s.nume, s.prenume, s.nr_matricol) order by "Punctaj" desc)) where nr_ord=3
                                                                                                                                                                                                                                                                                                      *
ERROR at line 1:
ORA-00933: SQL command not properly ended 


SQL> select s. nr_matricol, sum(n.valoare*c.credite) as "Punctaj" from studenti s join note n on s.nr_matricol=n.nr_matricol join cursuri c on c.id_curs=n.id_curs group by s.nume, s.prenume, s.nr_matricol;

NR_MAT    Punctaj                                                               
------ ----------                                                               
116           135                                                               
115           393                                                               
114           293                                                               
118            98                                                               
112           287                                                               
113           351                                                               
111           373                                                               
119           112                                                               
117            79                                                               

9 rows selected.

SQL> select s.nr_matricol, "Punctaj", rownum as nr_ord from (select s. nr_matricol, sum(n.valoare*c.credite) as "Punctaj" from studenti s join note n on s.nr_matricol=n.nr_matricol join cursuri c on c.id_curs=n.id_curs group by s.nume, s.prenume, s.nr_matricol) order by "Punctaj";
select s.nr_matricol, "Punctaj", rownum as nr_ord from (select s. nr_matricol, sum(n.valoare*c.credite) as "Punctaj" from studenti s join note n on s.nr_matricol=n.nr_matricol join cursuri c on c.id_curs=n.id_curs group by s.nume, s.prenume, s.nr_matricol) order by "Punctaj"
       *
ERROR at line 1:
ORA-00904: "S"."NR_MATRICOL": invalid identifier 


SQL> select nr_matricol, "Punctaj", rownum as nr_ord from (select s. nr_matricol, sum(n.valoare*c.credite) as "Punctaj" from studenti s join note n on s.nr_matricol=n.nr_matricol join cursuri c on c.id_curs=n.id_curs group by s.nume, s.prenume, s.nr_matricol) order by "Punctaj";

NR_MAT    Punctaj     NR_ORD                                                    
------ ---------- ----------                                                    
117            79          9                                                    
118            98          4                                                    
119           112          8                                                    
116           135          1                                                    
112           287          5                                                    
114           293          3                                                    
113           351          6                                                    
111           373          7                                                    
115           393          2                                                    

9 rows selected.

SQL> select nr_matricol, "Punctaj" from (select s. nr_matricol, sum(n.valoare*c.credite) as "Punctaj" from studenti s join note n on s.nr_matricol=n.nr_matricol join cursuri c on c.id_curs=n.id_curs group by s.nume, s.prenume, s.nr_matricol) order by "Punctaj";

NR_MAT    Punctaj                                                               
------ ----------                                                               
117            79                                                               
118            98                                                               
119           112                                                               
116           135                                                               
112           287                                                               
114           293                                                               
113           351                                                               
111           373                                                               
115           393                                                               

9 rows selected.

SQL> select nr_matricol, "Punctaj" from (select s. nr_matricol, sum(n.valoare*c.credite) as "Punctaj" from studenti s join note n on s.nr_matricol=n.nr_matricol join cursuri c on c.id_curs=n.id_curs group by s.nume, s.prenume, s.nr_matricol) order by "Punctaj" desc;

NR_MAT    Punctaj                                                               
------ ----------                                                               
115           393                                                               
111           373                                                               
113           351                                                               
114           293                                                               
112           287                                                               
116           135                                                               
119           112                                                               
118            98                                                               
117            79                                                               

9 rows selected.

SQL> select nr_matricol, "Punctaj", rownum as nr_ordine from(select nr_matricol, "Punctaj" from (select s. nr_matricol, sum(n.valoare*c.credite) as "Punctaj" from studenti s join note n on s.nr_matricol=n.nr_matricol join cursuri c on c.id_curs=n.id_curs group by s.nume, s.prenume, s.nr_matricol) order by "Punctaj" desc);

NR_MAT    Punctaj  NR_ORDINE                                                    
------ ---------- ----------                                                    
115           393          1                                                    
111           373          2                                                    
113           351          3                                                    
114           293          4                                                    
112           287          5                                                    
116           135          6                                                    
119           112          7                                                    
118            98          8                                                    
117            79          9                                                    

9 rows selected.

SQL> select * from(select nr_matricol, "Punctaj", rownum as nr_ordine from(select nr_matricol, "Punctaj" from (select s. nr_matricol, sum(n.valoare*c.credite) as "Punctaj" from studenti s join note n on s.nr_matricol=n.nr_matricol join cursuri c on c.id_curs=n.id_curs group by s.nume, s.prenume, s.nr_matricol) order by "Punctaj" desc)) where nr_ord=3;
select * from(select nr_matricol, "Punctaj", rownum as nr_ordine from(select nr_matricol, "Punctaj" from (select s. nr_matricol, sum(n.valoare*c.credite) as "Punctaj" from studenti s join note n on s.nr_matricol=n.nr_matricol join cursuri c on c.id_curs=n.id_curs group by s.nume, s.prenume, s.nr_matricol) order by "Punctaj" desc)) where nr_ord=3
                                                                                                                                                                                                                                                                                                                                                   *
ERROR at line 1:
ORA-00904: "NR_ORD": invalid identifier 


SQL> select * from(select nr_matricol, "Punctaj", rownum as nr_ordine from(select nr_matricol, "Punctaj" from (select s. nr_matricol, sum(n.valoare*c.credite) as "Punctaj" from studenti s join note n on s.nr_matricol=n.nr_matricol join cursuri c on c.id_curs=n.id_curs group by s.nume, s.prenume, s.nr_matricol) order by "Punctaj" desc)) where "nr_ord"=3;
select * from(select nr_matricol, "Punctaj", rownum as nr_ordine from(select nr_matricol, "Punctaj" from (select s. nr_matricol, sum(n.valoare*c.credite) as "Punctaj" from studenti s join note n on s.nr_matricol=n.nr_matricol join cursuri c on c.id_curs=n.id_curs group by s.nume, s.prenume, s.nr_matricol) order by "Punctaj" desc)) where "nr_ord"=3
                                                                                                                                                                                                                                                                                                                                                   *
ERROR at line 1:
ORA-00904: "nr_ord": invalid identifier 


SQL> select * from(select nr_matricol, "Punctaj", rownum as nr_ordine from(select nr_matricol, "Punctaj" from (select s. nr_matricol, sum(n.valoare*c.credite) as "Punctaj" from studenti s join note n on s.nr_matricol=n.nr_matricol join cursuri c on c.id_curs=n.id_curs group by s.nume, s.prenume, s.nr_matricol) order by "Punctaj" desc)) where "nr_ordine"=3;
select * from(select nr_matricol, "Punctaj", rownum as nr_ordine from(select nr_matricol, "Punctaj" from (select s. nr_matricol, sum(n.valoare*c.credite) as "Punctaj" from studenti s join note n on s.nr_matricol=n.nr_matricol join cursuri c on c.id_curs=n.id_curs group by s.nume, s.prenume, s.nr_matricol) order by "Punctaj" desc)) where "nr_ordine"=3
                                                                                                                                                                                                                                                                                                                                                   *
ERROR at line 1:
ORA-00904: "nr_ordine": invalid identifier 


SQL> select * from(select nr_matricol, "Punctaj", rownum as nr_ordine from(select nr_matricol, "Punctaj" from (select s. nr_matricol, sum(n.valoare*c.credite) as "Punctaj" from studenti s join note n on s.nr_matricol=n.nr_matricol join cursuri c on c.id_curs=n.id_curs group by s.nume, s.prenume, s.nr_matricol) order by "Punctaj" desc)) where nr_ordine=3;

NR_MAT    Punctaj  NR_ORDINE                                                    
------ ---------- ----------                                                    
113           351          3                                                    

SQL> select nr_matricol from(select nr_matricol, "Punctaj", rownum as nr_ordine from(select nr_matricol, "Punctaj" from (select s. nr_matricol, sum(n.valoare*c.credite) as "Punctaj" from studenti s join note n on s.nr_matricol=n.nr_matricol join cursuri c on c.id_curs=n.id_curs group by s.nume, s.prenume, s.nr_matricol) order by "Punctaj" desc)) where nr_ordine=3;

NR_MAT                                                                          
------                                                                          
113                                                                             

SQL> select * from studnti where nr_matricol=(select nr_matricol from(select nr_matricol, "Punctaj", rownum as nr_ordine from(select nr_matricol, "Punctaj" from (select s. nr_matricol, sum(n.valoare*c.credite) as "Punctaj" from studenti s join note n on s.nr_matricol=n.nr_matricol join cursuri c on c.id_curs=n.id_curs group by s.nume, s.prenume, s.nr_matricol) order by "Punctaj" desc)) where nr_ordine=3);
select * from studnti where nr_matricol=(select nr_matricol from(select nr_matricol, "Punctaj", rownum as nr_ordine from(select nr_matricol, "Punctaj" from (select s. nr_matricol, sum(n.valoare*c.credite) as "Punctaj" from studenti s join note n on s.nr_matricol=n.nr_matricol join cursuri c on c.id_curs=n.id_curs group by s.nume, s.prenume, s.nr_matricol) order by "Punctaj" desc)) where nr_ordine=3)
              *
ERROR at line 1:
ORA-00942: table or view does not exist 


SQL> select * from studenti where nr_matricol=(select nr_matricol from(select nr_matricol, "Punctaj", rownum as nr_ordine from(select nr_matricol, "Punctaj" from (select s. nr_matricol, sum(n.valoare*c.credite) as "Punctaj" from studenti s join note n on s.nr_matricol=n.nr_matricol join cursuri c on c.id_curs=n.id_curs group by s.nume, s.prenume, s.nr_matricol) order by "Punctaj" desc)) where nr_ordine=3);

NR_MAT NUME       PRENUME            AN GR      BURSA DATA_NAST                 
------ ---------- ---------- ---------- -- ---------- ---------                 
113    Antonie    Ioana               3 A2        450 03-JAN-95                 

SQL> spool off
