import 'package:flutter/material.dart';
import 'package:weather_app/utils/unitConversion.dart';

class CurrentDay extends StatelessWidget {
  final int timestamp;

  CurrentDay({@required this.timestamp});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(
        convertTimestampToDate(timestamp),
        style: Theme.of(context).textTheme.title,
      ),
    ]);
  }
}
