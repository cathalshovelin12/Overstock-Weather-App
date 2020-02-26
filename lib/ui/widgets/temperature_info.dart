import 'package:flutter/material.dart';
import 'package:weather_app/utils/unitConversion.dart';

class TemperatureInfo extends StatelessWidget {
  final double temperature;
  final bool isCelcius;

  TemperatureInfo({
      @required this.temperature,
      @required this.isCelcius,});

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
