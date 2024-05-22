class WeatherModel {
  final String city;
  final DateTime date;
  final String image;
  final String state;
  final double avgTemp;
  final double maxTemp;
  final double minTemp;

  WeatherModel({
    required this.city,
    required this.date,
    required this.image,
    required this.state,
    required this.avgTemp,
    required this.maxTemp,
    required this.minTemp,
  });

  factory WeatherModel.fromJson(json) {
    return WeatherModel(
      city: json['location']['name'],
      date: DateTime.parse(json['current']['last_updated']),
      image: json['current']['condition']['icon'],
      state: json['current']['condition']['text'],
      avgTemp: json['forecast']['forecastday'][0]['day']['avgtemp_c'],
      maxTemp: json['forecast']['forecastday'][0]['day']['maxtemp_c'],
      minTemp: json['forecast']['forecastday'][0]['day']['mintemp_c'],
    );
  }
}
