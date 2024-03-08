import 'package:flutter/material.dart';

MaterialColor getColor(String? weatherState) {
  if (weatherState == "Sunny") {
    return Colors.yellow;
  } else if (weatherState == "Clear") {
    return Colors.blue;
  } else if (weatherState == "Partly cloudy") {
    return Colors.lightBlue;
  } else if (weatherState == "Cloudy") {
    return Colors.grey;
  } else if (weatherState == "Overcast") {
    return Colors.blueGrey;
  } else if (weatherState == "Mist") {
    return Colors.grey;
  } else if (weatherState == "Patchy rain possible") {
    return Colors.lightBlue;
  } else if (weatherState == "Patchy snow possible") {
    return Colors.grey;
  } else if (weatherState == "Patchy sleet possible") {
    return Colors.grey;
  } else if (weatherState == "Patchy freezing drizzle possible") {
    return Colors.grey;
  } else if (weatherState == "Thundery outbreaks possible") {
    return Colors.purple;
  } else if (weatherState == "Blowing snow") {
    return Colors.grey;
  } else if (weatherState == "Blizzard") {
    return Colors.grey;
  } else if (weatherState == "Fog") {
    return Colors.grey;
  } else if (weatherState == "Freezing fog") {
    return Colors.grey;
  } else if (weatherState == "Patchy light drizzle") {
    return Colors.grey;
  } else if (weatherState == "Light drizzle") {
    return Colors.grey;
  } else if (weatherState == "Freezing drizzle") {
    return Colors.grey;
  } else if (weatherState == "Heavy freezing drizzle") {
    return Colors.grey;
  } else if (weatherState == "Patchy light rain") {
    return Colors.lightBlue;
  } else if (weatherState == "Light rain") {
    return Colors.lightBlue;
  } else if (weatherState == "Moderate rain at times") {
    return Colors.blue;
  } else if (weatherState == "Moderate rain") {
    return Colors.blue;
  } else if (weatherState == "Heavy rain at times") {
    return Colors.blueGrey;
  } else if (weatherState == "Heavy rain") {
    return Colors.blueGrey;
  } else if (weatherState == "Light freezing rain") {
    return Colors.blueGrey;
  } else if (weatherState == "Moderate or heavy freezing rain") {
    return Colors.grey;
  } else if (weatherState == "Light sleet") {
    return Colors.blueGrey;
  } else if (weatherState == "Moderate or heavy sleet") {
    return Colors.grey;
  } else if (weatherState == "Patchy light snow") {
    return Colors.grey;
  } else if (weatherState == "Light snow") {
    return Colors.grey;
  } else if (weatherState == "Patchy moderate snow") {
    return Colors.grey;
  } else if (weatherState == "Moderate snow") {
    return Colors.grey;
  } else if (weatherState == "Patchy heavy snow") {
    return Colors.grey;
  } else if (weatherState == "Heavy snow") {
    return Colors.grey;
  } else if (weatherState == "Ice pellets") {
    return Colors.blueGrey;
  } else if (weatherState == "Light rain shower") {
    return Colors.lightBlue;
  } else if (weatherState == "Moderate or heavy rain shower") {
    return Colors.blueGrey;
  } else if (weatherState == "Torrential rain shower") {
    return Colors.blueGrey;
  } else if (weatherState == "Light sleet showers") {
    return Colors.blueGrey;
  } else if (weatherState == "Moderate or heavy sleet showers") {
    return Colors.grey;
  } else if (weatherState == "Light snow showers") {
    return Colors.grey;
  } else if (weatherState == "Moderate or heavy snow showers") {
    return Colors.grey;
  } else if (weatherState == "Light showers of ice pellets") {
    return Colors.blueGrey;
  } else if (weatherState == "Moderate or heavy showers of ice pellets") {
    return Colors.grey;
  } else if (weatherState == "Patchy light rain with thunder") {
    return Colors.yellow;
  } else if (weatherState == "Moderate or heavy rain with thunder") {
    return Colors.purple;
  } else if (weatherState == "Patchy light snow with thunder") {
    return Colors.yellow;
  } else if (weatherState == "Moderate or heavy snow with thunder") {
    return Colors.purple;
  } else {
    return Colors.blue;
  }
}
