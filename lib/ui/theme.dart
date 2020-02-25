import 'package:flutter/material.dart';

ThemeData buildTheme() {
  TextTheme _buildTextTheme(TextTheme base) {
    return base.copyWith(
      headline: base.headline.copyWith(
        fontFamily: 'Merriweather',
        fontSize: 40.0,
        color: const Color(0xFFFFFFFF),
      ),
      title: base.title.copyWith(
        fontFamily: 'Merriweather',
        fontSize: 15.0,
        color: const Color(0xFFFFFFFF),
      ),
      caption: base.caption.copyWith(
        color: const Color(0xFFFFFFFF),
      ),
    );
  }

  final ThemeData base = ThemeData.light();

  return base.copyWith(
    textTheme: _buildTextTheme(base.textTheme),
    primaryColor: const Color(0xFF2770E6),
    indicatorColor: const Color(0xFFFFFFFF),
    scaffoldBackgroundColor: const Color(0xFF626770),
    accentColor: const Color(0xFFFFFFFF),
    iconTheme: IconThemeData(
      color: const Color(0xFFFFFFFF),
      size: 20.0,
    ),
    buttonColor: Colors.white,
  );
}
