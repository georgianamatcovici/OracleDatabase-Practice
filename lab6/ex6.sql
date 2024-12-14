SQL> select valoare, count(*) from note group by valoare order by valoare
  2  ;

   VALOARE   COUNT(*)                                                           
---------- ----------                                                           
         4          5                                                           
         5          2                                                           
         6          4                                                           
         7         11                                                           
         8          4                                                           
         9          8                                                           
        10          8                                                           

7 rows selected.

SQL> select valoare, count(*) from note group by valoare order by valoare desc;

   VALOARE   COUNT(*)                                                           
---------- ----------                                                           
        10          8                                                           
         9          8                                                           
         8          4                                                           
         7         11                                                           
         6          4                                                           
         5          2                                                           
         4          5                                                           

7 rows selected.

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

42 rows selected.

SQL> spool off
