class LocationData {
  final String location;
  final double temperature;
  final bool isCelcius;
  final String weatherIcon;
  final int timestamp;

  const LocationData({
    this.location,
    this.temperature,
    this.isCelcius,
    this.weatherIcon,
    this.timestamp
  });

  factory LocationData.fromJson(Map<String, dynamic> json){
    return LocationData(
      location: json["name"],
      temperature: json["main"]["temp"],
      isCelcius: true,
      weatherIcon: "lib/assets/sun.png",
      timestamp: json["dt"]
    );
  }
}
