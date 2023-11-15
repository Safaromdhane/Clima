import 'package:clima/services/location.dart';

import '../utilities/constants.dart';
import 'networking.dart';

class WeatherModel {
  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '🌩';
    } else if (condition < 400) {
      return '🌧';
    } else if (condition < 600) {
      return '☔️';
    } else if (condition < 700) {
      return '☃️';
    } else if (condition < 800) {
      return '🌫';
    } else if (condition == 800) {
      return '☀️';
    } else if (condition <= 804) {
      return '☁️';
    } else {
      return '';
    }
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'It\'s 🍦 time';
    } else if (temp > 20) {
      return 'Time for shorts and 👕';
    } else if (temp < 10) {
      return 'You\'ll need 🧣 and 🧤';
    } else {
      return 'Bring a 🧥 just in case';
    }
  }

  Future<dynamic> getCityWeather(city)async{
    var url = '${kOpenweatherurl}q=$city&appid=$kApiKey&units=metric';
    NetworkHelper networkHelper = NetworkHelper(url);
    return await networkHelper.getData();
  }

  Future getLocationWeather()async{
    Location l =   Location();
    await l.getCurrentLocation();
    NetworkHelper networkHelper = NetworkHelper('${kOpenweatherurl}lat=${l.latitude}&lon=${l.longitude}&appid=$kApiKey&units=metric');
    return await networkHelper.getData();
}
}
