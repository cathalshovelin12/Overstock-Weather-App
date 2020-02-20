import 'package:flutter/material.dart';
import 'package:weather_app/model/locationData.dart';

List<LocationData> getLocationData(){
  return[
    LocationData(
      location: Location.newYork,
      temperature: 2008.00,
      isCelcius: false,
      weatherIcon: Image.network("")
    ),
    LocationData(
        location: Location.newYork,
        temperature: 100.00,
        isCelcius: false,
        weatherIcon: Image.network("")
    )
  ];
}