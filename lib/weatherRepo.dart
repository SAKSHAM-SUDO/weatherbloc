import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:weatherbloc/weatherModel.dart';
// network provider
class WeatherRepo{
  Future<WeatherModel> getWeather(String city)async{
    final result = await http.Client().get(Uri.parse("https://api.openweathermap.org/data/2.5/weather?q=$city&appid=acd19fa1c01cb7b7d6b44b6bf3dcd74e"));
    if(result.statusCode != 200)
      throw Exception();

    return parsedJson(result.body);
  }
  WeatherModel parsedJson(final response)
  {
    final jsonDecode = json.decode(response);
    final jsonWeather = jsonDecode['main'];
    return WeatherModel.fromJson(jsonWeather);
  }
}