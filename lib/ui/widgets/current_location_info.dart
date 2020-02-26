import 'package:flutter/material.dart';
import 'package:weather_app/ui/widgets/temperature.dart';
import 'package:weather_app/ui/widgets/temperature_info.dart';
import 'package:weather_app/utils/unitConversion.dart';

import 'info_table.dart';

class CurrentLocationInfo extends StatelessWidget {
  final String location;
  final double temperature;
  final bool isCelcius;
  final String weatherIcon;
  final int timestamp;

  CurrentLocationInfo(
      {@required this.location,
      @required this.temperature,
      @required this.isCelcius,
      @required this.weatherIcon,
      @required this.timestamp});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5.0),
      child: new Container(
        constraints: BoxConstraints(maxHeight: 710.0, minHeight: 600.0),
        child: Column(
          children: <Widget>[
            Expanded(
                child: Temperature(
              timestamp: timestamp,
            )),
            Row(
              children: <Widget>[
                Container(
                  color: Color(0xFFFFFFFF),
                ),
                Container(
                  width: 120,
                  child: Column(children: [
                    Image.asset(
                      weatherIcon,
                      fit: BoxFit.cover,
                      width: 120.0,
                    ),
                  ]),
                ),
                Container(
                  width: 160,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          TemperatureInfo(
                              location: location,
                              temperature: temperature,
                              isCelcius: isCelcius,
                              weatherIcon: weatherIcon,
                              timestamp: timestamp),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            location,
                            style: Theme.of(context).textTheme.title,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              constraints: BoxConstraints(maxHeight: 50.0, minHeight: 40.0),
            ),
            InfoTable(
                mainTitle: "Wind : ",
                firstTitle: "Speed",
                firstTitleContent: "12kts",
                secondTitle: "Gust",
                secondTitleContent: "17kts",
                thirdTitle: "Direction",
                thirdTitleContent: "NNE"),
            Container(
              constraints: BoxConstraints(maxHeight: 5.0, minHeight: 5.0),
            ),
            InfoTable(
                mainTitle: "Percipitation : ",
                firstTitle: "Fall",
                firstTitleContent: "18mm",
                secondTitle: " ",
                secondTitleContent: " ",
                thirdTitle: "Chance",
                thirdTitleContent: "56%"),
                Container(
              constraints: BoxConstraints(maxHeight: 5.0, minHeight: 5.0),
            ),
            InfoTable(
                mainTitle: "All Day : ",
                firstTitle: "Moon",
                firstTitleContent: "Full",
                secondTitle: " ",
                secondTitleContent: " ",
                thirdTitle: "Tide",
                thirdTitleContent: "09:00 | HIGH \n 15:00 | LOW \n 21:00 | HIGH"),
          ],
        ),
      ),
    );
  }
}
