class Weather {
  final double temp;
  final double feelsLike;
  final double low;
  final double high;
  final String description;

  Weather(
      {required this.temp,
      required this.feelsLike,
      required this.low,
      required this.high,
      required this.description});

  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      temp: json['main']['temp'],
      feelsLike: json['main']['feels_like'],
      low: json['main']['temp_min'],
      high: json['main']['temp_max'],
      description: json['weather'][0]['description'],
    );
  }
}

// get http => null;
//
// void getWeather(String city)async{
//   // api.openweathermap.org/data/2.5/weather?q={city name}&appid={API key}
//
//   final queryParameter = {'q': city ,'appid': 'f4b9958ef972f6b4ce9460c32ba46d92'};
//
//
//
//   final uri = Uri.https('api.openweathermap.org', '/data/2.5/weather', queryParameter);
//
//   final response = await http.get(uri);
//
//   print(response.body);
//
// }
