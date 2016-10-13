echo $1
name=$1
echo $name
#!/bin/bash
curl -s "http://api.openweathermap.org/data/2.5/weather?q=Minneapolis,us&units=imperial&APPID=1b2a614f014e319c267b4f2efccaaca2"
