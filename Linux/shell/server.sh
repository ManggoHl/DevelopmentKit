#!/bin/sh
 
#配置java环境变量，如有可把此处注释掉
export JAVA_HOME=/env/java/1.8/jdk1.8.0_161
export CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar
export PATH=$JAVA_HOME/bin:$PATH
 
#项目名称，请改成自己jar包名称，不要带.jar
APP_NAME=pass-admin
JAVA_OPS="-server"
#项目路径，更改为自己的路径，剩下的都不用动
APP_HOME="/home/passadmin/$APP_NAME"
APP_PID=0
 
getPid(){
  local temppid=`ps aux|grep java|grep $APP_NAME|grep -v grep | awk '{print $2}'`
  if [ -n "$temppid" ]; then
    APP_PID=`echo $temppid | awk '{print $1}'`
  else
    APP_PID=0
  fi
}
 
start(){
  getPid
  if [ "$APP_PID" -ne 0 ]; then
    echo "$APP_NAME already started(PID=$APP_PID)"
  else
    echo "starting $APP_NAME..."
    java $JAVA_OPS -jar $APP_HOME.jar >$APP_HOME 2>&1 &
    getPid
    if [ "$APP_PID" -ne 0 ]; then
      echo "(PID=$APP_PID)...success"
    else
      echo "app $APP_NAME start fail"
    fi
  fi 
}
 
stop(){
  getPid
  if [  "$APP_PID" -ne 0 ]; then
    echo "stopping $APP_name(PID=$APP_PID)..."
    kill -9 $APP_PID
    if [ $? -eq 0 ]; then
      echo "$APP_NAME stopped"
    else
      echo "$APP_NAME stop failed."
    fi
    getPid
    if [ $APP_PID -ne 0 ]; then
      stop
    fi
  else
    echo "$APP_NAME is not running."
  fi
}
 
restart(){
  stop
  start
}
 
status(){
  getPid
  if [ $APP_PID -ne 0 ]; then
    echo "$APP_NAME is running...(PID=$APP_PID)"
  else
    echo "$APP_NAME is not running"
  fi
}
 
if [ "$(id -u)" -eq 0 ]; then
  echo "$APP_NAME must not be run as root!"
  exit 1
fi
 
case "$1" in
  start)
    start
    exit 0
  ;;
  stop)
    stop
    exit 0
  ;;
  restart)
    stop
    start
    exit 0
  ;;
  status)
    status
    exit 0
  ;;
  **)
    echo "Usage: $0 {start|stop|restart|status}"
    exit 1
  ;;
esac
 