import 'package:flutter/material.dart';

enum Location { newYork }

class LocationData {
  final Location location;
  final double temperature;
  final bool isCelcius;
  final String weatherIcon;

  const LocationData({
    this.location,
    this.temperature,
    this.isCelcius,
    this.weatherIcon,
  });
}
