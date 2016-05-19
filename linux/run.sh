#!/bin/bash

hostname

date

chmod +x 7za

./7za x -y Jobs.7z

ls

# Create config file

java -cp cloud.jar ncl.gen.GECONJt2 $1 0 1 > config.txt

cat config.txt

java -Xmx1024m -Xms1024m -jar cloud.jar config.txt

date
