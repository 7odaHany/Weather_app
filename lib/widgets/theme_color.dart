import 'package:flutter/material.dart';

MaterialColor getThemeColor(String? condition) {
    if (condition == null) {
      return Colors.blue;
    }
    switch (condition) {
      case 'Sunny':
        return Colors.orange;
      case 'Partly cloudy':
        return Colors.blueGrey;
      case 'Cloudy':
        return Colors.grey;
      case 'Overcast':
        return Colors.blueGrey;
      case 'Mist':
        return Colors.lightBlue;
      case 'Patchy rain possible':
      case 'Light rain':
      case 'Patchy light rain':
      case 'Moderate rain at times':
      case 'Moderate rain':
      case 'Heavy rain at times':
      case 'Heavy rain':
      case 'Light rain shower':
      case 'Moderate or heavy rain shower':
      case 'Torrential rain shower':
        return Colors.blue;
      case 'Patchy snow possible':
      case 'Light snow':
      case 'Patchy light snow':
      case 'Moderate snow':
      case 'Heavy snow':
      case 'Light snow shower':
      case 'Moderate or heavy snow shower':
        return Colors.lightBlue;
      case 'Thundery outbreaks possible':
      case 'Patchy light rain with thunder':
      case 'Moderate or heavy rain with thunder':
        return Colors.deepPurple;
      case 'Fog':
      case 'Freezing fog':
      case 'Freezing drizzle':
      case 'Heavy freezing drizzle':
      case 'Light freezing rain':
      case 'Moderate or heavy freezing rain':
        return Colors.cyan;
      default:
        return Colors.blueGrey; // Default color for unknown conditions
    }
  }