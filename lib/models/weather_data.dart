class WeatherDataModel {
  String time;
  String degree;
  String iconPath;

  WeatherDataModel({
    required this.time,
    required this.degree,
    required this.iconPath,
  });

  static List<WeatherDataModel> getWeatherData() {
    List<WeatherDataModel> data = [];

    data.add(WeatherDataModel(
      time: "01:00",
      degree: "29",
      iconPath: "assets/icons/sun_cloud.svg",
    ));

    data.add(WeatherDataModel(
      time: "02:00",
      degree: "32",
      iconPath: "assets/icons/sun.svg",
    ));

    data.add(WeatherDataModel(
      time: "03:00",
      degree: "28",
      iconPath: "assets/icons/sun_cloud_rain.svg",
    ));

    data.add(WeatherDataModel(
      time: "04:00",
      degree: "30",
      iconPath: "assets/icons/sun_cloud.svg",
    ));

    data.add(WeatherDataModel(
      time: "05:00",
      degree: "36",
      iconPath: "assets/icons/sun_cloud.svg",
    ));

    data.add(WeatherDataModel(
      time: "06:00",
      degree: "32",
      iconPath: "assets/icons/moon_star.svg",
    ));

    return data;
  }
}
