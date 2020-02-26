import 'package:flutter/material.dart';
import 'package:weather_app/ui/widgets/temperature_info.dart';
import 'package:weather_app/utils/unitConversion.dart';

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
        decoration: new BoxDecoration(
          color: Colors.green,
          borderRadius: new BorderRadius.only(
            topLeft: const Radius.circular(20.0),
            topRight: const Radius.circular(20.0),
            bottomLeft: const Radius.circular(20.0),
            bottomRight: const Radius.circular(20.0),
          ),
        ),
        constraints: BoxConstraints(maxHeight: 140.0, minHeight: 40.0),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Column(children: [
                Text(
                  convertTimestampToDate(timestamp),
                  style: Theme.of(context).textTheme.title,
                ),
              ]),
            ),
            Row(
              children: <Widget>[
                Container(
                  color: Color(0xFFFFFFFF),
                ),
                Container(
                  width: 120,
                  child: Column(children: [
                    Image.network(
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
          ],
        ),
      ),
    );
  }
}
