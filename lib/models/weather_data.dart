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
        time: "01:00",
        degree: "29",
        iconPath: "assets/icons/sun.svg",
        boxColor: Colors.black));

    data.add(WeatherDataModel(
        time: "01:00",
        degree: "29",
        iconPath: "assets/icons/sun_cloud_rain.svg",
        boxColor: Colors.black));

    data.add(WeatherDataModel(
        time: "01:00",
        degree: "29",
        iconPath: "assets/icons/sun_cloud.svg",
        boxColor: Colors.black));

    data.add(WeatherDataModel(
        time: "01:00",
        degree: "29",
        iconPath: "assets/icons/sun_cloud.svg",
        boxColor: Colors.black));

    data.add(WeatherDataModel(
        time: "01:00",
        degree: "29",
        iconPath: "assets/icons/moon_star.svg",
        boxColor: Colors.black));

    return data;
  }
}
