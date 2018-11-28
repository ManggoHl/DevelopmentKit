if [ "$1" == "run" ]; then
    java -jar pass-admin.jar
else if [ "$1" == "start" ]; then
    JAVA_OPT="-Xms128m -Xmx512m"
    nohup java ${JAVA_OPT} -jar pass-admin.jar &
    echo "Application is starting..."
else if [ "$1" == "stop" ]; then
    PID=$(ps -ef | grep pass-admin.jar | grep -v grep | awk '{ print $2 }')
    if [ -z "$PID" ]; then
        echo Application is already stopped
    else
        echo kill $PID
        kill $PID
    fi
else if [ "$1" == "status" ]; then
    PID=$(ps -ef | grep pass-admin.jar | grep -v grep | awk '{ print $2 }')
    if [ -z "$PID" ]; then
        echo Application is stopped
    else
        echo Application is running
        echo $PID
    fi
fi
fi
fi
fi
