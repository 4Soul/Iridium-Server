@ECHO OFF
:server_start
echo.
echo =========================
echo Starting server. OS x64.
echo =========================
echo.
java -Xmx2G -Xms1G -XX:+AlwaysPreTouch -XX:+DisableExplicitGC -XX:+UseG1GC -XX:+UnlockExperimentalVMOptions -XX:MaxGCPauseMillis=45 -XX:TargetSurvivorRatio=90 -XX:G1NewSizePercent=50 -XX:G1MaxNewSizePercent=80 -XX:InitiatingHeapOccupancyPercent=10 -XX:G1MixedGCLiveThresholdPercent=50 -XX:+AggressiveOpts -jar Spigot.jar
echo.
echo =========================
echo PRESS CTRL+C TO STOP SERVER
echo =========================
echo.
timeout 5
goto server_start