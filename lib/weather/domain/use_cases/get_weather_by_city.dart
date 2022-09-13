import '../entities/weather.dart';
import '../repositories/base_weather_repository.dart';

class GetWeatherByCityName {
  final BaseWeatherRepository? repository;

  GetWeatherByCityName(this.repository);

  Future<Weather?> execute(String cityName) async {
    return (await repository!.getWeatherByCityName(cityName));
  }
}
