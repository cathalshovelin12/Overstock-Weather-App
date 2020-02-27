import 'package:weather_app/utils/weatherIconSelector.dart';

class LocationData {
  final String location;
  final double temperature;
  final bool isCelcius;
  final String weatherIcon;
  final int timestamp;
  final String weatherType;
  final double windSpeed;
  final int windDirection;

  const LocationData({
    this.location,
    this.temperature,
    this.isCelcius,
    this.weatherIcon,
    this.timestamp,
    this.weatherType,
    this.windSpeed,
    this.windDirection,
  });

  factory LocationData.fromJson(Map<String, dynamic> json){
    return LocationData(
      location: json["name"],
      temperature: json["main"]["temp"],
      isCelcius: true,
      weatherIcon: getWeatherIcon(json["weather"][0]["main"]),
      timestamp: json["dt"],
      weatherType: json["weather"][0]["main"],
      windSpeed: json["wind"]["speed"],
      windDirection: json["wind"]["deg"],
    );
  }
}
