import 'dart:convert';

class Weather{
  String? cityname;
  String? temp;
  Weather({this .cityname,this.temp});
    Weather.fromJson(Map<String, dynamic> json){
    cityname=json["name"];
    temp=json ["main"]["temp"];

  }

}