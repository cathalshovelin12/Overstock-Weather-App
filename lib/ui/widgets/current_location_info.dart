import 'package:flutter/material.dart';

class CurrentLocationInfo extends StatelessWidget {
  final String location;
  final double temperature;
  final bool isCelcius;
  final String weatherIcon;

  CurrentLocationInfo({
    @required this.location,
    @required this.temperature,
    @required this.isCelcius,
    @required this.weatherIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Column(children: [
                Image.network(
                  weatherIcon,
                  fit: BoxFit.cover,
                  width: 50.0,
                ),
              ]),
              Column(children: [
                Text(
                  location,
                  style: Theme.of(context).textTheme.title,
                ),
                SizedBox(height: 10.0),
                Row(children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.ac_unit, size: 20.0),
                          SizedBox(width: 5.0),
                          Text(
                            temperature?.floor().toString(),
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
              ]),
            ],
          ),
        ],
      ),
    );
  }
}
