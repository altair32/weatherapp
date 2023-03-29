import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget currentWeather (IconData icon, String temp, String location)
{
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [

        Icon(icon,
           size: 64,
          color: Colors.orange,
          ),
        SizedBox(height: 30,),
        Text(temp, style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 26,
        ),),
      SizedBox(height: 15,),
      Text(location, style: TextStyle(
      color: Colors.grey,
      fontWeight: FontWeight.bold,
      fontSize: 15,
     ),)
      ],
    ),
  );
}