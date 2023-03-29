import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart'as http;
import 'package:weatherapp/weathermodel.dart';

class apiclient{
  Future<Weather>? getCurrentWeather(String? location) async{
    var endpoint=Uri.parse("https://api.openweathermap.org/data/2.5/weather?q=$location&appid=10b3a0eef8d352be2597789b39756401");
    var response =await http.get(endpoint);
    var body=jsonDecode(response.body);
    print(Weather.fromJson(body));
    return Weather.fromJson(body);
  }
}