import 'package:flutter/material.dart';
import 'package:weather_app/model/locationData.dart';

List<LocationData> getLocationData(){
  return[
    LocationData(
      location: Location.newYork,
      temperature: 2008.00,
      isCelcius: false,
      weatherIcon: "https://toppng.com/uploads/preview/image-setpng256x256-pxweather-icon-weather-flat-icon-115631356009rpwtrjbjj.png"
    ),
    LocationData(
        location: Location.newYork,
        temperature: 23.00,
        isCelcius: true,
        weatherIcon: "https://toppng.com/uploads/preview/image-setpng256x256-pxweather-icon-weather-flat-icon-115631356009rpwtrjbjj.png"
    )
  ];
}