class WeatherModel {
  final String cityName;
  final DateTime date;
  final double temperature;
  final double maxTemperature;
  final double minTemperature;
  final String weatherCondition;
  final String? image;

  WeatherModel({
    required this.cityName,
    required this.date,
    required this.temperature,
    required this.maxTemperature,
    required this.minTemperature,
    required this.weatherCondition,
    this.image,
  });
  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return WeatherModel(
      cityName: json['location']['name'],
      date: DateTime.parse(json['current']['last_updated']!),  
      temperature: json['forecast']['forecastday'][0]['day']['avgtemp_c'],
      maxTemperature: json['forecast']['forecastday'][0]['day']['maxtemp_c'],
      minTemperature: json['forecast']['forecastday'][0]['day']['mintemp_c'],
      weatherCondition: json['forecast']['forecastday'][0]['day']['condition']['text'],
      image: json['forecast']['forecastday'][0]['day']['condition']['icon'],
    );
  }
}
