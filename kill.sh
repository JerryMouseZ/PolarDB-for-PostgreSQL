#!/bin/bash

# 获取所有postgres进程的PID
pids=$(pgrep postgres)

# 如果找到了postgres进程
if [ -n "$pids" ]; then
    echo "Killing the following postgres processes:"
    echo "$pids"
    
    # 杀掉所有postgres进程
    kill -9 $pids
    
    echo "All postgres processes have been killed."
else
    echo "No postgres processes found."
fi

