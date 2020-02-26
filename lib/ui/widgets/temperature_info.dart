import 'package:flutter/material.dart';
import 'package:weather_app/utils/unitConversion.dart';

class TemperatureInfo extends StatelessWidget {
  final String location;
  final double temperature;
  final bool isCelcius;
  final String weatherIcon;
  final int timestamp;

  TemperatureInfo(
      {@required this.location,
      @required this.temperature,
      @required this.isCelcius,
      @required this.weatherIcon,
      @required this.timestamp});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(height: 10.0),
      Row(children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              children: [
                SizedBox(width: 5.0),
                Text(
                  convertKelvinToCelcius(temperature)?.toString(),
                  style: Theme.of(context).textTheme.headline,
                ),
              ],
            ),
          ],
        ),
        Column(
          children: [
            Row(
              children: [
                Text(
                  isCelcius ? " ºC" : " ºF",
                  style: Theme.of(context).textTheme.headline,
                ),
              ],
            ),
          ],
        ),
      ]),
    ]);
  }
}
