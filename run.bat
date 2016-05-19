set path=%PATH%;"C:\Program Files\7-Zip"

echo %computername%

time <nul

7z x -y Jobs.7z

dir

REM Create config file

java -cp cloud.jar ncl.gen.GECONJt2 %1 0 1 > config.txt

REM Running simulation

java -jar cloud.jar config.txt

time < nul
