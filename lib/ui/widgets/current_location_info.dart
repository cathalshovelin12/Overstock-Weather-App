import 'package:flutter/material.dart';
import 'package:weather_app/ui/widgets/current_day.dart';
import 'package:weather_app/ui/widgets/temperature_info.dart';

import 'info_table.dart';

class CurrentLocationInfo extends StatelessWidget {
  final String location;
  final double temperature;
  final bool isCelcius;
  final String weatherIcon;
  final int timestamp;
  final String weatherType;
  final double windSpeed;
  final int windDirection;

  CurrentLocationInfo({
    @required this.location,
    @required this.temperature,
    @required this.isCelcius,
    @required this.weatherIcon,
    @required this.timestamp,
    @required this.weatherType,
    @required this.windSpeed,
    @required this.windDirection,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5.0),
      child: new Container(
        constraints: BoxConstraints(maxHeight: 750.0, minHeight: 600.0),
        child: Column(
          children: <Widget>[
            Expanded(
                child: CurrentDay(
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
                  width: 190,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          TemperatureInfo(
                              temperature: temperature,
                              isCelcius: isCelcius,),
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
                firstTitleContent: windSpeed.toString(),
                secondTitle: "Gust",
                secondTitleContent: "17kts",
                thirdTitle: "Direction",
                thirdTitleContent: "${windDirection.toString()} º"),
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
                thirdTitleContent:
                    "09:00 | HIGH \n 15:00 | LOW \n 21:00 | HIGH"),
          ],
        ),
      ),
    );
  }
}
