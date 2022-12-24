import 'package:first_project_clean_architecture/feature/weather/domain/entities/weather.dart';

class WeatherModel extends Weather {
  WeatherModel(
      super.id, super.main, super.cityname, super.description, super.pressure);
  factory WeatherModel.formJson(Map<String, dynamic> json) {
    return WeatherModel(json['id'], json['weather'][0]['main'], json['name'],
        json['weather'][0]['description'], json['main']['pressure']);
  }
}
