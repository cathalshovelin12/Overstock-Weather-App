class LocationData {
  final String location;
  final double temperature;
  final bool isCelcius;
  final String weatherIcon;

  const LocationData({
    this.location,
    this.temperature,
    this.isCelcius,
    this.weatherIcon,
  });

  factory LocationData.fromJson(Map<String, dynamic> json){
    return LocationData(
      location: json["name"],
      temperature: json["main"]["temp"],
      isCelcius: true,
      weatherIcon: "https://cdn4.iconfinder.com/data/icons/weather-line-set/24/icn-weather-scattered-showers-512.png"
    );
  }
}
