import 'package:clean_architecture/weather/domain/entities/weather.dart';

class WeatherModel extends Weather {

  WeatherModel(super.location, super.current);

  WeatherModel.fromJson(super.json) : super.fromJson();


}