#!/bin/sh

# Function to map weather codes to icons
get_icon() {
    case $1 in
        01d) icon=" ";; # Ясное небо (день)
        01n) icon=" ";; # Ясное небо (ночь)
        02d) icon=" ";; # Немного облаков (день)
        02n) icon=" ";; # Немного облаков (ночь)
        03*) icon=" ";; # Рассеянные облака
        04*) icon=" ";; # Разорванные облака
        09*) icon=" ";; # Ливневый дождь
        10d) icon="🌦";; # Дождь (день)
        10n) icon=" ";; # Дождь (ночь)
        11*) icon="⛈ ";; # Гроза
        13*) icon=" ";; # Снег
        50*) icon=" ";; # Туман
        *) icon="";;   # Unknown
    esac
    echo $icon
}

# Configuration
KEY="e434b5435a979de6e155570590bee89b"
CITY="Star'"
UNITS="metric"
SYMBOL="°"
API="https://openweathermap.org/" #"https://openweathermap.org/city/489271" #"https://api.openweathermap.org/data/2.5"

# Determine city parameter
if [ -n "$CITY" ]; then
    if echo "$CITY" | grep -qE '^[0-9]+$'; then
        CITY_PARAM="id=$CITY"
    else
        CITY_PARAM="q=$CITY"
    fi
else
    location=$(curl -sf https://location.services.mozilla.com/v1/geolocate?key=geoclue)
    if [ -n "$location" ]; then
        location_lat="$(echo "$location" | jq '.location.lat')"
        location_lon="$(echo "$location" | jq '.location.lng')"
        CITY_PARAM="lat=$location_lat&lon=$location_lon"
    else
        echo "Location not found" >&2
        exit 1
    fi
fi

# Fetch weather data
weather=$(curl -sf "$API/weather?appid=$KEY&$CITY_PARAM&units=$UNITS")
if [ -n "$weather" ]; then
    weather_temp=$(echo "$weather" | jq ".main.temp" | cut -d "." -f 1)
    weather_icon=$(echo "$weather" | jq -r ".weather[0].icon")
    weather_display=$(get_icon "$weather_icon")
    echo "$weather_display $weather_temp$SYMBOL"
else
    echo "Weather data not found" >&2
    exit 1
fi
