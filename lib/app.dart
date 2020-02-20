import 'package:flutter/material.dart';
import 'package:weather_app/ui/screens/home.dart';
import 'package:weather_app/ui/theme.dart';

class WeatherApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Weather Forecast',
      theme: buildTheme(),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
      },
    );
  }
}