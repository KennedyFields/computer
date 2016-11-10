!/bin/bash
  days=$1 
  file_op=$2 

if [ "$file_op" == "N" ]; then rm -f ~/tmp/weather_data.csv; fi
read samples <<< $(($days*24))
read weatherapi_key <<< $(cat weatherapi_key)

for i in $(seq 1 $samples); do

  read epoch temp humidity <<< \
    $(curl -s "http://api.openweathermap.org/data/2.5/weather?q=Minneapolis,us&units=imperial&APPID=$weatherapi_key" | \
    jq '.dt,.main.temp,.main.humidity')

  if [ $epoch -gt 1477570797 ]; then
    read datetime <<<$(date -d @$epoch +'%m/%d/%Y %H:%M')
    echo "$datetime temp=$temp humidity=$humidity"
    echo $datetime,$temp,$humidity >> ~/tmp/weather_data.csv
  else 
    echo "$(date +'%m/%d/%Y %H:%M') bad sample"
  fi

  sleep 1800
done
