REM Add 7-Zip to the classpath, making the '7z' command available to unzip input data.
set path=%PATH%;"C:\Program Files\7-Zip"

REM Log the name of the computer running the job.
echo %computername%

REM Print out the task start time.
time <nul

REM Extract input data. (Remove this line if this is not applicable for your example.)
7z x -y Jobs.7z

REM print the directory contents.
dir

REM Create config file

java -cp cloud.jar ncl.gen.GECONJt2 %1 0 1 > config.txt

REM Running simulation

java -jar cloud.jar config.txt

REM Print out the task completion time.
time < nul
