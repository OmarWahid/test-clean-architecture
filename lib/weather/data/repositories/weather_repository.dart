import 'package:clean_architecture/weather/data/data_sources/remote_datasource.dart';
import 'package:clean_architecture/weather/domain/entities/weather.dart';

import '../../domain/repositories/base_weather_repository.dart';

class WeatherRepository implements BaseWeatherRepository {
  final BaseRemoteDataSource remote;

  WeatherRepository(this.remote);

  @override
  Future<Weather?> getWeatherByCityName(String cityName) async {
    return await (remote.getWeatherByCityName(cityName));
  }
}
