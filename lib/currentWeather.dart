import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:networkweather/data_service.dart';

class CurrentWeatherPage extends StatefulWidget {
  const CurrentWeatherPage({required key}) : super(key: key);

  @override
  _CurrentWeatherPageState createState() => _CurrentWeatherPageState();
}

class _CurrentWeatherPageState extends State<CurrentWeatherPage> {
  late Future<Weather> futureWeather;

  void iniState() {
    super.initState();
    // futureWeather = fetchWeather();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder<Weather>(
          future: futureWeather,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Text(
                snapshot.data!.description,
              );
            } else if (snapshot.hasError) {
              return Text("${snapshot.error}");
            }
            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }

  Widget weatherBox(Weather _weather) {
    return Column(
      children: <Widget>[
        Text("${_weather.temp}C"),
        Text("${_weather.description}"),
        Text("Feels:${_weather.feelsLike}C"),
        Text("H:${_weather.high}C  L:${_weather.low}C"),
      ],
    );
  }





}
