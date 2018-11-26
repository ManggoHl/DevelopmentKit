
nohup java -jar -XX:PermSize=128M -XX:MaxPermSize=256M pass-admin.jar &
# nohup java -jar -server -Xms128m -Xmx512m -XX:CompressedClassSpaceSize=128m -XX:MetaspaceSize=256m -XX:MaxMetaspaceSize=256m
# 参数的含义
# -Xms128m JVM初始分配的堆内存
# -Xmx512m JVM最大允许分配的堆内存，按需分配
# -XX:PermSize=128M JVM初始分配的非堆内存
# -XX:MaxPermSize=512M JVM最大允许分配的非堆内存，按需分配