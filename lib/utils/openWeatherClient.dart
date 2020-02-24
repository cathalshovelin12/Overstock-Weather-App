import 'package:flutter/material.dart';
import 'package:weather_app/model/locationData.dart';

List<LocationData> getLocationData(){
  return[
    LocationData(
      location: Location.newYork,
      temperature: 208.00,
      isCelcius: false,
      weatherIcon: "https://lh3.googleusercontent.com/proxy/ljfQpXZQGoSZeYW7mq6HqbZGrFzeJCrZ5A_m8TkTRxas-eZpR9YYAOvR8gadVD6NWTNKnCAsdatlfeRCyKzKpNhlMC4wzhlUn71M_6OHXdzOm0JRx3jxYIKgyvf-5BbtaBrHBvrEoGZ4"
    ),
    LocationData(
      location: Location.newYork,
      temperature: 18.00,
      isCelcius: true,
      weatherIcon: "https://www.pngfind.com/pngs/m/132-1323443_simple-weather-icons-cloudy-night-night-weather-icon.png"
    ),
    LocationData(
        location: Location.newYork,
        temperature: 23.00,
        isCelcius: true,
        weatherIcon: "https://lh3.googleusercontent.com/proxy/ljfQpXZQGoSZeYW7mq6HqbZGrFzeJCrZ5A_m8TkTRxas-eZpR9YYAOvR8gadVD6NWTNKnCAsdatlfeRCyKzKpNhlMC4wzhlUn71M_6OHXdzOm0JRx3jxYIKgyvf-5BbtaBrHBvrEoGZ4"
    ),
    LocationData(
        location: Location.newYork,
        temperature: 68.00,
        isCelcius: false,
        weatherIcon: "https://www.pngfind.com/pngs/m/132-1323443_simple-weather-icons-cloudy-night-night-weather-icon.png"
    )
  ];
}