
read weatherapi_key <<< $(cat weatherapi_key)
curl -s "http://api.openweathermap.org/data/2.5/weather?q=Minneapolis,us&units=imperial&APPID=$weatherapi_key"
#while [ true ]
#do

  #sleep 60
#done
