file /home/postgres/tmp_basedir_polardb_pg_1100_bld/bin/postgres 
set args -D "/home/postgres/tmp_master_dir_polardb_pg_1100_bld"  < "/dev/null" >> "logfile" 2>&1
# 设置断点在目标函数上
b StartChildProcess
# 定义一个函数来检查参数并设置跟踪模式
define check_and_set_tracking
    if (int)type == 10
        echo Argument is 1, will track child processes\n
        set follow-fork-mode child
        set detach-on-fork on
        b btinsert
    else
        echo Argument is not 1, will not track child processes\n
        set follow-fork-mode parent
        set detach-on-fork on
    end
end

commands
    silent
    printf "Entered target_function with arg1 = %d\n", type
    check_and_set_tracking
    break
end
