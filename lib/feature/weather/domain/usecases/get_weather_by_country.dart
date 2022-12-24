import 'package:first_project_clean_architecture/feature/weather/domain/entities/weather.dart';
import 'package:first_project_clean_architecture/feature/weather/domain/repository/weather_repository.dart';

class GetWeatherByCountryName {
  final BaseWeatherRepository weatherRepository;

  GetWeatherByCountryName(this.weatherRepository);
  Future<Weather> excute(String cityName) async {
    return await weatherRepository.getWeatherByCityName(cityName);
  }
}
