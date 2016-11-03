#!/bin/bash
read -p "How many days of samples: "               days
read -p "N) New sample or A) Append to previous: " file_op

if [ "$file_op" == "N" ]; then rm -f tmp/weatherapi.sh; fi
read samples <<< $(($days*24))
read weatherapi_key <<< $(cat weatherapi_key)

for i in $(seq 1 $samples); do

  read date temp humidity <<< \
    $(curl -s "http://api.openweathermap.org/data/2.5/weather?q=Minneapolis,us&units=imperial&APPID=$weatherapi_key" | \
    jq '.dt,.main.temp,.main.humidity')

  if [ $date -gt 1477570797 ]; then
    read datetime <<<$(date -d @$date +'%m/%d/%Y %H:%M')
    echo "$epochtime temp=$temp humidity=$humidity"
    echo $epochtime,$temp,$humidity >> /tmp/weather_data.csv
  else 
    echo "$(date +'%m/%d/%Y %H:%M') bad sample"
  fi

  sleep 60
done

#read epoch temp humidity <<< $(cat weather.json  | jq '.dt,.main.temp,.main.humidity')
#read windspeed winddirection <<< $(cat /tmp/weather.json | jq '.wind.speed','.wind.deg')

#while [ true ]
#do
curl -s "http://api.openweathermap.org/data/2.5/weather?q=Minneapolis,us&units=imperial&APPID=$weatherapi_key"
  #sleep 60 
#done
