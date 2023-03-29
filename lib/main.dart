import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:weatherapp/views.dart';
import 'package:weatherapp/weathermodel.dart';

import 'api_client.dart';

void main() {
  runApp(MaterialApp(home: homepage()),
  );
}
class homepage extends StatefulWidget {
  //const homepage({Key? key}) : super(key: key);

  apiclient client =apiclient();
  @override
  Weather? data=Weather();
  Future<void> getData() async{
  data=await client.getCurrentWeather("Mumbai");}

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
         body: FutureBuilder(
           future: getData(),
           builder: (context,snapshot){
             if(snapshot.connectionState==ConnectionState.done)
               {
                 Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     currentWeather(Icons.sunny, "23", "Mumbai")
                   ],
                 );
               }
           }
         ),
          /*Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            currentWeather(Icons.sunny, "23", "Mumbai")
          ],
        ),
      );*/
      ); }
}
