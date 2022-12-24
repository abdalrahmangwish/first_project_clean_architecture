import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:first_project_clean_architecture/core/utils/constance.dart';

import '../model/weather_model.dart';

abstract class BaseRemoteDataSources {
  Future<WeatherModel> getWeatherByCountryName(String countryName);
}

class RemoteDataSources extends BaseRemoteDataSources {
  @override
  Future<WeatherModel> getWeatherByCountryName(countryName) async {
    final respons = await Dio().get(
        '${AppConstace.baseUrl}/weather?q=${countryName}&appid=${AppConstace.apiKey}');
    print(respons);
    return WeatherModel.formJson(respons.data);
  }
}
