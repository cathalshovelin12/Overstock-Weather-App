import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather_app/model/locationData.dart';
import 'package:weather_app/utils/apiKeys.dart';

Future getLocationData() async {
  String apiKey = openWeatherApiKey();
  var url =
      "http://api.openweathermap.org/data/2.5/weather?q=London&appid=" + apiKey;
  final response = await http.get(Uri.encodeFull(url));

  if (response.statusCode == 200 && response != null) {
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
        weatherIcon: "lib/assets/sun.png",
        timestamp: 1582640925),
    LocationData(
        location: "New York",
        temperature: 18.00,
        isCelcius: true,
        weatherIcon: "lib/assets/moon.png",
        timestamp: 1582640925),
    LocationData(
        location: "New York",
        temperature: 23.00,
        isCelcius: true,
        weatherIcon: "lib/assets/rain.png",
        timestamp: 1582640925),
    LocationData(
        location: "New York",
        temperature: 68.00,
        isCelcius: false,
        weatherIcon: "lib/assets/cloud.png",
        timestamp: 1582640925),
  ];
}
