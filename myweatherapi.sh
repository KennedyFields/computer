d epoch temp humidity <<< $(cat weather.json  | jq '.dt,.main.temp,.main.humidity')
#read windspeed winddirection <<< $(cat /tmp/weather.json | jq '.wind.speed','.wind.deg')

#while [ true ]
#do
curl -s "http://api.openweathermap.org/data/2.5/weather?q=Minneapolis,us&units=imperial&APPID=$weatherapi_key"
  #sleep 60
#done


