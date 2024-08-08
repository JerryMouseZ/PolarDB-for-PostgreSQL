file /home/postgres/tmp_basedir_polardb_pg_1100_bld/bin/postgres 
set args -D "/home/postgres/tmp_master_dir_polardb_pg_1100_bld"  < "/dev/null" >> "logfile" 2>&1
define tracking
  set follow-fork-mode child
  set detach-on-fork off
  b btinsert
end
b postmaster.c:1948
r
c
tracking
c
