class WeekData {
  String day;
  String iconPath;
  String highTemp;
  String lowTemp;

  WeekData({
    required this.day,
    required this.iconPath,
    required this.highTemp,
    required this.lowTemp,
  });

  static List<WeekData> getWeekData() {
    List<WeekData> data = [];

    data.add(WeekData(
        day: "Sunday",
        iconPath: "assets/icons/sun_cloud.svg",
        highTemp: "86",
        lowTemp: "67"));

    data.add(WeekData(
        day: "Monday",
        iconPath: "assets/icons/sun.svg",
        highTemp: "83",
        lowTemp: "74"));

    data.add(WeekData(
        day: "Tuesday",
        iconPath: "assets/icons/sun.svg",
        highTemp: "79",
        lowTemp: "69"));

    data.add(WeekData(
        day: "Wednesday",
        iconPath: "assets/icons/sun_cloud_rain.svg",
        highTemp: "85",
        lowTemp: "72"));

    data.add(WeekData(
        day: "Thrusday",
        iconPath: "assets/icons/sun.svg",
        highTemp: "80",
        lowTemp: "78"));

    data.add(WeekData(
        day: "Friday",
        iconPath: "assets/icons/sun_cloud.svg",
        highTemp: "76",
        lowTemp: "67"));

    data.add(WeekData(
        day: "Saturday",
        iconPath: "assets/icons/sun_cloud_rain.svg",
        highTemp: "88",
        lowTemp: "72"));

    return data;
  }
}
