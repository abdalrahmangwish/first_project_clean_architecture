import 'package:first_project_clean_architecture/feature/weather/data/datasorces/remote_datasorces.dart';
import 'package:first_project_clean_architecture/feature/weather/domain/entities/weather.dart';
import 'package:first_project_clean_architecture/feature/weather/domain/repository/weather_repository.dart';

class WeatherRepository implements BaseWeatherRepository {
  final BaseRemoteDataSources baseRemoteDataSources;

  WeatherRepository(this.baseRemoteDataSources);

  @override
  Future<Weather> getWeatherByCityName(String cityName) async {
    return (await baseRemoteDataSources.getWeatherByCountryName(cityName));
  }
}
