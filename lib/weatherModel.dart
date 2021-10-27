
//repository or data handle
class WeatherModel{
  final temp;
  final pressure;
  final humidity;
  final maxTemp;
  final minTemp;

  double get getTemp => temp - 273;
  double get getMinTemp => minTemp - 273;
  double get getMaxTemp => maxTemp - 273;

  WeatherModel(this.temp, this.pressure, this.humidity, this.maxTemp, this.minTemp);

  static WeatherModel fromJson(jsonWeather) {
    return WeatherModel(
      jsonWeather['temp'],
      jsonWeather['pressure'],
      jsonWeather['humidity'],
      jsonWeather['temp_min'],
      jsonWeather['temp_max']
    );
  }
}