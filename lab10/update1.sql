SQL> update studenti s set bursa=500 where exists (select valoare from note n where n.nr_matricol=s.nr_matricol and valoare=10);

6 rows updated.

SQL> update studenti set bursa=500 where nr_matricol in (select nr_matricol from note where valoare=10);

6 rows updated.

SQL> spool off
