import 'package:dio/dio.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherService {
  final Dio dio;
  final String baseUrl = 'https://api.weatherapi.com/v1';
  final String apiKey = 'b8e2bb8149e54ddc924223635241611';
  WeatherService(this.dio);

  Future<WeatherModel> getCurrentWether({required String city}) async {
    try {
      Response response =
          await dio.get('$baseUrl/forecast.json?key=$apiKey&q=$city&days=1');
      WeatherModel weatherModel = WeatherModel.fromJson(response.data);
      return weatherModel;
    } on DioException catch (e) {
      final String errorMessage = e.response?.data['error']['message'] ??
          "An error occurred , try later";
      throw Exception(errorMessage);
    } catch (e) {
      throw Exception('An error occurred , try later');
    }
  }
}
