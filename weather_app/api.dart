import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class WeatherService {
  static Future<Map<String, dynamic>> getWeatherData(String city) async {
    final apiKey = dotenv.env['API_KEY'];
    final apiUrl =
        'https://api.openweathermap.org/data/2.5/weather?q=$city&appid=$apiKey';
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load weather data');
    }
  }
}
