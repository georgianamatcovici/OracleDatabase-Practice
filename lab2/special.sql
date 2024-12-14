SQL> select nume, floor(months_between(sysdate, data_nastere)/12) || ' ani ' || mod(floor(months_between(sysdate, data_nastere)),12) || ' luni '|| mod(mod(floor(sysdate-data_nastere), 365), 30) || ' zile ' as "Stuff" , floor( add_months(data_nastere,  ceil(months_between(sysdate, data_nastere)/12)*12)-sysdate) as nr_zile from studenti;

NUME                                                                            
----------                                                                      
Stuff                                                                           
--------------------------------------------------------------------------------
   NR_ZILE                                                                      
----------                                                                      
Popescu                                                                         
29 ani 8 luni 19 zile                                                           
       113                                                                      
                                                                                
Prelipcean                                                                      
29 ani 5 luni 11 zile                                                           
       211                                                                      

NUME                                                                            
----------                                                                      
Stuff                                                                           
--------------------------------------------------------------------------------
   NR_ZILE                                                                      
----------                                                                      
                                                                                
Antonie                                                                         
29 ani 9 luni 4 zile                                                            
        68                                                                      
                                                                                
Arhire                                                                          
28 ani 10 luni 12 zile                                                          

NUME                                                                            
----------                                                                      
Stuff                                                                           
--------------------------------------------------------------------------------
   NR_ZILE                                                                      
----------                                                                      
        60                                                                      
                                                                                
Panaite                                                                         
29 ani 6 luni 24 zile                                                           
       168                                                                      
                                                                                
Bodnar                                                                          

NUME                                                                            
----------                                                                      
Stuff                                                                           
--------------------------------------------------------------------------------
   NR_ZILE                                                                      
----------                                                                      
28 ani 2 luni 8 zile                                                            
       303                                                                      
                                                                                
Archip                                                                          
28 ani 6 luni 3 zile                                                            
       158                                                                      
                                                                                

NUME                                                                            
----------                                                                      
Stuff                                                                           
--------------------------------------------------------------------------------
   NR_ZILE                                                                      
----------                                                                      
Ciobotariu                                                                      
28 ani 6 luni 3 zile                                                            
       158                                                                      
                                                                                
Bodnar                                                                          
28 ani 4 luni 25 zile                                                           
       226                                                                      

NUME                                                                            
----------                                                                      
Stuff                                                                           
--------------------------------------------------------------------------------
   NR_ZILE                                                                      
----------                                                                      
                                                                                
Pintescu                                                                        
27 ani 2 luni 8 zile                                                            
       303                                                                      
                                                                                
Arhire                                                                          
27 ani 3 luni 3 zile                                                            

NUME                                                                            
----------                                                                      
Stuff                                                                           
--------------------------------------------------------------------------------
   NR_ZILE                                                                      
----------                                                                      
       248                                                                      
                                                                                
Cobzaru                                                                         
27 ani 5 luni 7 zile                                                            
       184                                                                      
                                                                                
Bucur                                                                           

NUME                                                                            
----------                                                                      
Stuff                                                                           
--------------------------------------------------------------------------------
   NR_ZILE                                                                      
----------                                                                      
27 ani 5 luni 26 zile                                                           
       195                                                                      
                                                                                

13 rows selected.

SQL> spool off;
