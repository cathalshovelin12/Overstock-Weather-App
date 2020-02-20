import 'package:flutter/material.dart';
import 'package:weather_app/model/locationData.dart';

class CurrentLocationInfo extends StatelessWidget {

  final Location location;
  final double temperature;
  final bool isCelcius;
  final Image weatherIcon;

  CurrentLocationInfo(
  {@required this.location,
      @required this.temperature,
      @required this.isCelcius,
      @required this.weatherIcon,});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            location.toString(),
            style: Theme.of(context).textTheme.title,
          ),
          SizedBox(height: 10.0),
          Row(
            children: [
              Icon(Icons.ac_unit, size: 20.0),
              SizedBox(width: 5.0),
              Text(
                temperature.toString(),
                style: Theme.of(context).textTheme.caption,
              ),
            ],
          ),
          Row(
            children: [
              Text(
                isCelcius ? "C" : "F",
                style: Theme.of(context).textTheme.caption,
              ),
            ],
          ),
        ],
      ),
    );
  }

}