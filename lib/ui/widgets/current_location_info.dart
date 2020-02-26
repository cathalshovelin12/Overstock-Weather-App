import 'package:flutter/material.dart';
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
        constraints: BoxConstraints(maxHeight: 180.0, minHeight: 40.0),
        child: Column(
          children: <Widget>[
            Expanded(
              child:
                Column(children: [
                  Text(
                    convertTimestampToDate(timestamp),
                    style: Theme.of(context).textTheme.headline,
                  ),
                ]),
            ),
            Row(
              children: <Widget>[
                Container(
                  color: Color(0xFFFFFFFF),
                ),
                Column(children: [
                  Image.network(
                    weatherIcon,
                    fit: BoxFit.cover,
                    width: 120.0,
                  ),
                ]),
                Column(children: [
                  SizedBox(height: 10.0),
                  Row(
                    children: [
                    Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            SizedBox(width: 5.0),
                            Text(
                              convertKelvinToCelcius(temperature)?.toString(),
                              style: Theme.of(context).textTheme.caption,
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
                              style: Theme.of(context).textTheme.caption,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ]),
                  Text(
                    location,
                    style: Theme.of(context).textTheme.title,
                  ),
                ]),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
