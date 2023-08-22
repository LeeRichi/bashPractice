#!/bin/bash

for country in "$@"; do
    countryDetail=$(curl -s "https://restcountries.com/v3/name/$country" | jq -r '.[0]')
    
    name=$(echo "$countryDetail" | jq -r '.name.common')
    capital=$(echo "$countryDetail" | jq -r '.capital')
    population=$(echo "$countryDetail" | jq -r '.population')
    languages=$(echo "$countryDetail" | jq -r '.languages | values | join(", ")')

    echo "Name: $name"countryDetail
    echo "Capital: $capital"
    echo "Population: $population"
    echo "Languages: $languages"
    echo
done