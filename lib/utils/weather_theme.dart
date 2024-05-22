import 'package:flutter/material.dart';

MaterialColor getWeatherTheme(String? state) {
  switch (state) {
   
    case "Sunny":
    case "Clear":
      return Colors.orange;
    
    case "Partly cloudy":
    case "Cloudy":
    case "Overcast":
    case "Fog":
    case "Mist":
      return Colors.grey;
    
    case "Patchy rain possible":
    case "Light rain":
    case "Patchy light rain":
    case "Moderate rain":
    case "Heavy rain":
    case "Light drizzle":
    case "Patchy light drizzle":
    case "Freezing drizzle":
    case "Heavy freezing drizzle":
    case "Moderate rain at times":
    case "Heavy rain at times":
    case "Light rain shower":
    case "Moderate or heavy rain shower":
    case "Torrential rain shower":
    case "Patchy light rain with thunder":
    case "Moderate or heavy rain with thunder":
      return Colors.blue;
    
    case "Patchy snow possible":
    case "Light snow":
    case "Patchy light snow":
    case "Moderate snow":
    case "Heavy snow":
    case "Patchy heavy snow":
    case "Light snow showers":
    case "Moderate or heavy snow showers":
    case "Blowing snow":
    case "Blizzard":
    case "Patchy moderate snow":
    case "Light freezing rain":
    case "Moderate or heavy freezing rain":
    case "Patchy light snow with thunder":
    case "Moderate or heavy snow with thunder":
    case "Patchy sleet possible":
    case "Light sleet":
    case "Moderate or heavy sleet":
    case "Light sleet showers":
    case "Moderate or heavy sleet showers":
    case "Thundery outbreaks possible":
    case "Ice pellets":
    case "Light showers of ice pellets":
    case "Moderate or heavy showers of ice pellets":
      return Colors.cyan;
      
    default:
      return Colors.blueGrey; 
  }
}
