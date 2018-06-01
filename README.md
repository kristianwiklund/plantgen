# plantgen
Small script to generate homeassistant config for miflora sensor data from plantgateway

Usage:

Either call it from command line as ./plantgen.sh <sensorname>, or invoke it with this lovely one-liner 

grep alias .plantgw.yaml | grep -v \# | cut -d: -f2|tr -d ' '|xargs -n1 ./plantgen.sh 

