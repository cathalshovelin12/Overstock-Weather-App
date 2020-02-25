import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather_app/model/locationData.dart';

Future getLocationData() async {
  String apiKey = "afcb26b4d06b3e8ff6f44b92ca64fd3f";
  var url =
      "http://api.openweathermap.org/data/2.5/weather?q=London&appid=" + apiKey;
  final response = await http.get(Uri.encodeFull(url));

  if (response.statusCode == 200 && response != null) {
    print("RESPONSE OF HTTP REQUEST : ${response.body}");
    return [LocationData.fromJson(json.decode(response.body))];
  } else {
    throw Exception("Failed to load weather for location");
  }
}

List<LocationData> getInitialLocationData() {
  return [
    LocationData(
        location: "New York",
        temperature: 208.00,
        isCelcius: false,
        weatherIcon:
            "https://lh3.googleusercontent.com/proxy/ljfQpXZQGoSZeYW7mq6HqbZGrFzeJCrZ5A_m8TkTRxas-eZpR9YYAOvR8gadVD6NWTNKnCAsdatlfeRCyKzKpNhlMC4wzhlUn71M_6OHXdzOm0JRx3jxYIKgyvf-5BbtaBrHBvrEoGZ4"),
    LocationData(
        location: "New York",
        temperature: 18.00,
        isCelcius: true,
        weatherIcon:
            "https://www.pngfind.com/pngs/m/132-1323443_simple-weather-icons-cloudy-night-night-weather-icon.png"),
    LocationData(
        location: "New York",
        temperature: 23.00,
        isCelcius: true,
        weatherIcon:
            "https://lh3.googleusercontent.com/proxy/ljfQpXZQGoSZeYW7mq6HqbZGrFzeJCrZ5A_m8TkTRxas-eZpR9YYAOvR8gadVD6NWTNKnCAsdatlfeRCyKzKpNhlMC4wzhlUn71M_6OHXdzOm0JRx3jxYIKgyvf-5BbtaBrHBvrEoGZ4"),
    LocationData(
        location: "New York",
        temperature: 68.00,
        isCelcius: false,
        weatherIcon:
            "https://www.pngfind.com/pngs/m/132-1323443_simple-weather-icons-cloudy-night-night-weather-icon.png")
  ];
}
