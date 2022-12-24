import 'package:first_project_clean_architecture/feature/weather/data/datasorces/remote_datasorces.dart';
import 'package:first_project_clean_architecture/feature/weather/data/repository/weather_repository.dart';
import 'package:first_project_clean_architecture/feature/weather/domain/repository/weather_repository.dart';
import 'package:first_project_clean_architecture/feature/weather/domain/usecases/get_weather_by_country.dart';
import 'package:flutter/material.dart';

void main() async {
  BaseRemoteDataSources baseRemoteDataSources = RemoteDataSources();
  BaseWeatherRepository baseWeatherRepository =
      WeatherRepository(baseRemoteDataSources);
  await GetWeatherByCountryName(baseWeatherRepository).excute('london');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp();
  }
}
