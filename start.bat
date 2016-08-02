@ECHO off
CHCP 65001
CLS
ECHO       Сборка от 4Soul
ECHO http://vk.com/alexeyka_life
sleep 2
ECHO.
ECHO По всем вопросам обращаться в вк!
sleep 3
CLS
ECHO Выберите цвет:
Set /P colo=(R, G, B) || Set colo=None
If "%colo%"=="None" goto start
If /i "%colo%"=="R" color 4
If /i "%colo%"=="r" color C
If /i "%colo%"=="G" color 2
If /i "%colo%"=="g" color A
If /i "%colo%"=="B" color 3
If /i "%colo%"=="b" color B
sleep 1
:start
cls
echo Подготовка к запуску..
sleep 2
echo Запуск сервера через:
echo 5
sleep 1
echo 4
sleep 1
echo 3
sleep 1
echo 2
sleep 1
echo 1
sleep 1
echo.
CLS
java -Xms512M -Xmx1G -XX:+AlwaysPreTouch -XX:+DisableExplicitGC -XX:+UseG1GC -XX:+UnlockExperimentalVMOptions -XX:MaxGCPauseMillis=45 -XX:TargetSurvivorRatio=90 -XX:G1NewSizePercent=50 -XX:G1MaxNewSizePercent=80 -XX:InitiatingHeapOccupancyPercent=10 -XX:G1MixedGCLiveThresholdPercent=50 -XX:+AggressiveOpts -Dfile.encoding=UTF-8 -jar spigot.jar
Set /P cl=Чтобы очистить консоль нажмите ENTER! || Set cl=cl
If "%cl%"=="cl" goto rest
:rest
cls
sleep 2
Set /P rest=Перезапустить сервер? (Y, N) || Set rest=n
If "%rest%"=="n" goto log
If /i "%rest%"=="N" goto log
If /i "%rest%"=="Y" goto start
If /i "%rest%"=="y" goto start
:log
cls
Set /P clog=Очистить логи? (Y, N) || Set clog=y
If "%clog%"=="y" goto clog
If /i "%clog%"=="Y" goto clog
If /i "%clog%"=="n" goto exit
If /i "%clog%"=="N" goto exit
:clog
RD /S /Q logs
sleep 1
:exit
cls
echo Спасибо что воспользовались сборкой!
sleep 2
exit