import 'package:dio/dio.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherService {
  final Dio dio;
  final String baseUrl = 'https://api.weatherapi.com/v1';
  final String apiKey = 'b8e2bb8149e54ddc924223635241611';
  WeatherService(this.dio);

  Future<WeatherModel> getCurrentWether({required String city}) async {
    Response response =
        await dio.get('$baseUrl/forecast.json?key=$apiKey&q=$city&days=1');
    if (response.statusCode == 200) {
      WeatherModel weatherModel = WeatherModel.fromJson(response.data);
    } else {
      final String massageError = response.data['error']['message'];
      throw Exception(massageError);
    }
  }
}
