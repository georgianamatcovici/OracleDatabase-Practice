SQL> select nume, data_nastere, months_between(data_nastere, sysdate) from studenti;

NUME       DATA_NAST MONTHS_BETWEEN(DATA_NASTERE,SYSDATE)                       
---------- --------- ------------------------------------                       
Popescu    17-FEB-95                            -356.0492                       
Prelipcean 26-MAY-95                           -352.75888                       
Antonie    03-JAN-95                           -357.50081                       
Arhire     26-DEC-95                           -345.75888                       
Panaite    13-APR-95                           -354.17823                       
Bodnar     26-AUG-96                           -337.75888                       
Archip     03-APR-96                           -342.50081                       
Ciobotariu 03-APR-96                           -342.50081                       
Bodnar     10-JUN-96                           -340.27501                       
Pintescu   26-AUG-97                           -325.75888                       
Arhire     02-JUL-97                           -327.53307                       

NUME       DATA_NAST MONTHS_BETWEEN(DATA_NASTERE,SYSDATE)                       
---------- --------- ------------------------------------                       
Cobzaru    29-APR-97                            -329.6621                       
Bucur      10-MAY-97                           -329.27501                       

13 rows selected.

SQL> select nume, data_nastere, months_between(sysdate, data_nastere) from studenti;

NUME       DATA_NAST MONTHS_BETWEEN(SYSDATE,DATA_NASTERE)                       
---------- --------- ------------------------------------                       
Popescu    17-FEB-95                            356.04921                       
Prelipcean 26-MAY-95                           352.758887                       
Antonie    03-JAN-95                           357.500823                       
Arhire     26-DEC-95                           345.758887                       
Panaite    13-APR-95                           354.178242                       
Bodnar     26-AUG-96                           337.758887                       
Archip     03-APR-96                           342.500823                       
Ciobotariu 03-APR-96                           342.500823                       
Bodnar     10-JUN-96                           340.275016                       
Pintescu   26-AUG-97                           325.758887                       
Arhire     02-JUL-97                           327.533081                       

NUME       DATA_NAST MONTHS_BETWEEN(SYSDATE,DATA_NASTERE)                       
---------- --------- ------------------------------------                       
Cobzaru    29-APR-97                           329.662113                       
Bucur      10-MAY-97                           329.275016                       

13 rows selected.

SQL> spool off
