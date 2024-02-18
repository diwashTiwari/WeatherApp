import 'package:flutter/material.dart';

class WeatherDataModel {
  String time;
  String degree;
  String iconPath;
  Color boxColor;

  WeatherDataModel({
    required this.time,
    required this.degree,
    required this.iconPath,
    required this.boxColor,
  });

  static List<WeatherDataModel> getWeatherData() {
    List<WeatherDataModel> data = [];

    data.add(WeatherDataModel(
        time: "01:00",
        degree: "29",
        iconPath: "assets/icons/sun_cloud.svg",
        boxColor: Colors.black));

    data.add(WeatherDataModel(
        time: "02:00",
        degree: "32",
        iconPath: "assets/icons/sun.svg",
        boxColor: Colors.black));

    data.add(WeatherDataModel(
        time: "03:00",
        degree: "28",
        iconPath: "assets/icons/sun_cloud_rain.svg",
        boxColor: Colors.red));

    data.add(WeatherDataModel(
        time: "04:00",
        degree: "30",
        iconPath: "assets/icons/sun_cloud.svg",
        boxColor: Colors.green));

    data.add(WeatherDataModel(
        time: "05:00",
        degree: "36",
        iconPath: "assets/icons/sun_cloud.svg",
        boxColor: Colors.blue));

    data.add(WeatherDataModel(
        time: "06:00",
        degree: "32",
        iconPath: "assets/icons/moon_star.svg",
        boxColor: Colors.black));

    return data;
  }
}
