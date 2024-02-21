class ForecastModel {
  String iconPath;
  String day;
  String degree;

  ForecastModel({
    required this.iconPath,
    required this.day,
    required this.degree,
  });

  static List<ForecastModel> getForecastWeekData() {
    List<ForecastModel> data = [];

    data.add(ForecastModel(
      day: "SUN",
      iconPath: "assets/icons/sun_cloud.svg",
      degree: "86",
    ));

    data.add(ForecastModel(
      day: "MON",
      iconPath: "assets/icons/sun_cloud.svg",
      degree: "83",
    ));

    data.add(ForecastModel(
      day: "TUE",
      iconPath: "assets/icons/sun.svg",
      degree: "79",
    ));

    data.add(ForecastModel(
      day: "WED",
      iconPath: "assets/icons/sun_cloud_rain.svg",
      degree: "85",
    ));

    data.add(ForecastModel(
      day: "THR",
      iconPath: "assets/icons/sun.svg",
      degree: "80",
    ));

    data.add(ForecastModel(
      day: "FRI",
      iconPath: "assets/icons/sun_cloud.svg",
      degree: "76",
    ));

    data.add(ForecastModel(
      day: "SAT",
      iconPath: "assets/icons/sun.svg",
      degree: "88",
    ));

    return data;
  }
}
