import 'package:flutter/material.dart';
import 'package:networkweather/currentWeather.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: ElevatedButton(
            onPressed: _makeRequest,
            child: Text('MAKE REQUEST'),
          ),
        ),
      ),
    );
  }

  void _makeRequest() async{}
  final response = CurrentWeatherPage(key: CurrentWeatherPage);


}