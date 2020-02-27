import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather_app/model/locationData.dart';
import 'package:weather_app/utils/apiKeys.dart';

Future getLocationData() async {
  String apiKey = openWeatherApiKey();
  var url =
      "http://api.openweathermap.org/data/2.5/weather?q=Sligo&appid=" + apiKey;
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
        weatherIcon: "",
        timestamp: 1582640925,
        weatherType: "Sun",
        windSpeed: 4.2,
        windDirection: 80),
  ];
}
