import 'package:flutter/material.dart';

const kTempTextStyle = TextStyle(
  fontFamily: 'Spartan MB',
  fontSize: 80.0,
);

const kMessageTextStyle = TextStyle(
  fontFamily: 'Spartan MB',
  fontSize: 40.0,
);

const kButtonTextStyle = TextStyle(
  fontSize: 30.0,
  fontFamily: 'Spartan MB',
  color: Colors.white
);

const kConditionTextStyle = TextStyle(
  fontSize: 80.0,
);
const kInputDec = InputDecoration(
  filled: true,
  fillColor: Colors.white,
  icon: Icon(Icons.location_city,color: Colors.white,),
  hintText: 'Enter City Name',
  hintStyle: TextStyle(
    color: Colors.grey
  ),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(10.0)),
  ),
);
const kInputTxtStyle = TextStyle(
  color: Colors.black
);
const  kApiKey='ef103114be17c7c884da92d73bea72f7';
const kOpenweatherurl = 'https://api.openweathermap.org/data/2.5/weather?';

const nullData='{coord: {lon: 10.8525, lat: 35.6801}, weather: [{id: 0, main: Clouds, description: few clouds, icon: 02d}], base: stations, main: {temp: 0.00, feels_like: 12.2, temp_min: 13.89, temp_max: 13.89, pressure: 1013, humidity: 33}, visibility: 8000, wind: {speed: 8.23, deg: 250}, clouds: {all: 20}, dt: 1677664794, sys: {type: 1, id: 1193, country: TN, sunrise: 1677649643, sunset: 1677690661}, timezone: 3600, id: 2467890, name: , cod: 200}';
