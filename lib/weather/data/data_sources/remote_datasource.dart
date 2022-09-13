import '../../../core/utills/constances.dart';
import '../models/weather_model.dart';
import 'package:dio/dio.dart';

abstract class BaseRemoteDataSource {
  Future<WeatherModel?> getWeatherByCityName(String cityName);
}

class RemoteDataSource implements BaseRemoteDataSource {
  @override
  Future<WeatherModel?> getWeatherByCityName(String cityName) async {
    try {
      var response = await Dio().get(
          '${AppConstance.baseUrl}/current.json?key=${AppConstance.appKey}&q=$cityName&aqi=no');
      print(response);
      return WeatherModel.fromJson(response.data);
    } catch (e) {
      //print(e);
      return null;
    }
  }
}
