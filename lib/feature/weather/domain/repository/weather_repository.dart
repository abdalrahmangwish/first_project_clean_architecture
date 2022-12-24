import 'package:first_project_clean_architecture/feature/weather/domain/entities/weather.dart';

abstract class BaseWeatherRepository {
  Future<Weather> getWeatherByCityName(String cityName);
}
