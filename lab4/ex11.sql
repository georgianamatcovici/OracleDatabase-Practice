SQL> select c.id_curs from note n join cursuri c on n.id_curs=c.id_curs and n.valoare<=8;

ID_C                                                                                                                                                                                                    
----                                                                                                                                                                                                    
21                                                                                                                                                                                                      
25                                                                                                                                                                                                      
26                                                                                                                                                                                                      
21                                                                                                                                                                                                      
22                                                                                                                                                                                                      
23                                                                                                                                                                                                      
24                                                                                                                                                                                                      
25                                                                                                                                                                                                      
26                                                                                                                                                                                                      
23                                                                                                                                                                                                      
25                                                                                                                                                                                                      
26                                                                                                                                                                                                      
21                                                                                                                                                                                                      
24                                                                                                                                                                                                      
25                                                                                                                                                                                                      
26                                                                                                                                                                                                      
22                                                                                                                                                                                                      
25                                                                                                                                                                                                      
21                                                                                                                                                                                                      
22                                                                                                                                                                                                      
23                                                                                                                                                                                                      
21                                                                                                                                                                                                      
22                                                                                                                                                                                                      
23                                                                                                                                                                                                      
21                                                                                                                                                                                                      
22                                                                                                                                                                                                      

26 rows selected.

SQL> select c.titlu_curs from note n join cursuri c on n.id_curs=c.id_curs and n.valoare<=8;

TITLU_CURS                                                                                                                                                                                              
---------------                                                                                                                                                                                         
Logica                                                                                                                                                                                                  
Java                                                                                                                                                                                                    
Tehnologii Web                                                                                                                                                                                          
Logica                                                                                                                                                                                                  
Matematica                                                                                                                                                                                              
OOP                                                                                                                                                                                                     
BD                                                                                                                                                                                                      
Java                                                                                                                                                                                                    
Tehnologii Web                                                                                                                                                                                          
OOP                                                                                                                                                                                                     
Java                                                                                                                                                                                                    
Tehnologii Web                                                                                                                                                                                          
Logica                                                                                                                                                                                                  
BD                                                                                                                                                                                                      
Java                                                                                                                                                                                                    
Tehnologii Web                                                                                                                                                                                          
Matematica                                                                                                                                                                                              
Java                                                                                                                                                                                                    
Logica                                                                                                                                                                                                  
Matematica                                                                                                                                                                                              
OOP                                                                                                                                                                                                     
Logica                                                                                                                                                                                                  
Matematica                                                                                                                                                                                              
OOP                                                                                                                                                                                                     
Logica                                                                                                                                                                                                  
Matematica                                                                                                                                                                                              

26 rows selected.

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

SQL> select distinct c.titlu_curs from note n join cursuri c on n.id_curs=c.id_curs where n.valoare<=8;

TITLU_CURS                                                                                                                                                                                              
---------------                                                                                                                                                                                         
OOP                                                                                                                                                                                                     
Logica                                                                                                                                                                                                  
Tehnologii Web                                                                                                                                                                                          
Java                                                                                                                                                                                                    
Matematica                                                                                                                                                                                              
BD                                                                                                                                                                                                      

6 rows selected.

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

SQL> select * from note n join cursuri c on n.id_curs=c.id_curs where n.valoare>8;

NR_MAT ID_C    VALOARE DATA_NOTA ID_C TITLU_CURS              AN   SEMESTRU    CREDITE                                                                                                                  
------ ---- ---------- --------- ---- --------------- ---------- ---------- ----------                                                                                                                  
111    22            9 19-FEB-14 22   Matematica               1          1          4                                                                                                                  
111    23           10 24-JUN-14 23   OOP                      1          2          5                                                                                                                  
111    24            9 17-FEB-15 24   BD                       2          1          8                                                                                                                  
113    21            9 17-FEB-14 21   Logica                   1          1          5                                                                                                                  
113    22            9 19-FEB-14 22   Matematica               1          1          4                                                                                                                  
113    24           10 17-FEB-15 24   BD                       2          1          8                                                                                                                  
114    22            9 19-FEB-14 22   Matematica               1          1          4                                                                                                                  
114    23           10 24-JUN-14 23   OOP                      1          2          5                                                                                                                  
115    21           10 17-FEB-14 21   Logica                   1          1          5                                                                                                                  
115    23           10 24-JUN-14 23   OOP                      1          2          5                                                                                                                  
115    24           10 17-FEB-15 24   BD                       2          1          8                                                                                                                  
115    26            9 21-JUN-15 26   Tehnologii Web           2          2          5                                                                                                                  
116    21           10 18-FEB-15 21   Logica                   1          1          5                                                                                                                  
116    22           10 20-FEB-15 22   Matematica               1          1          4                                                                                                                  
116    23            9 21-JUN-15 23   OOP                      1          2          5                                                                                                                  
119    23            9 21-JUN-15 23   OOP                      1          2          5                                                                                                                  

16 rows selected.

SQL> select distinct c.titlu_curs from note n join cursuri c on n.id_curs=c.id_curs minus select distinct c.titlu_curs from note n join cursuri c on n.id_curs=c.id_curs where n.nota>8;
select distinct c.titlu_curs from note n join cursuri c on n.id_curs=c.id_curs minus select distinct c.titlu_curs from note n join cursuri c on n.id_curs=c.id_curs where n.nota>8
                                                                                                                                                                          *
ERROR at line 1:
ORA-00904: "N"."NOTA": invalid identifier 


SQL> select distinct c.titlu_curs from note n join cursuri c on n.id_curs=c.id_curs minus select distinct c.titlu_curs from note n join cursuri c on n.id_curs=c.id_curs where n.valoare>8;

TITLU_CURS                                                                                                                                                                                              
---------------                                                                                                                                                                                         
Java                                                                                                                                                                                                    

SQL> spool off
