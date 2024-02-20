import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:weatherapp/models/weather_data.dart';
import 'package:weatherapp/models/week_data.dart';
import 'package:weatherapp/pages/forecast.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<WeatherDataModel> weatherData = [];
  List<WeekData> weekData = [];

  void _getWeatherData() {
    weatherData = WeatherDataModel.getWeatherData();
  }

  void _getWeekData() {
    weekData = WeekData.getWeekData();
  }

  @override
  Widget build(BuildContext context) {
    _getWeatherData();
    _getWeekData();
    return Scaffold(
      appBar: appBar(),
      backgroundColor: Colors.white,
      drawer: appDrawer(),
      body: Center(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  date(),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            SvgPicture.asset(
                              'assets/icons/sun_cloud.svg',
                              height: 100,
                            ),
                          ],
                        ),
                        const SizedBox(width: 40),
                        const Column(
                          children: [
                            Text(
                              '20°',
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Partly cloudy',
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '29°/27° | Feels like 39°C',
                        style: TextStyle(
                            color: Colors.black45, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 30),
                      Text(
                        '|',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black87,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 30),
                      Text(
                        'Wind 9 KM/H WSW',
                        style: TextStyle(
                            color: Colors.black45, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Colors.black87,
                        borderRadius: BorderRadius.circular(14)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset(
                                  'assets/icons/sun_cloud.svg',
                                  height: 30,
                                ),
                                const SizedBox(width: 10),
                                const Text(
                                  'Precipitation: 21%',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                SvgPicture.asset(
                                  'assets/icons/sun.svg',
                                  height: 30,
                                ),
                                const SizedBox(width: 10),
                                const Text(
                                  'Wind: 10 km/h',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            )
                          ],
                        ),
                        const SizedBox(width: 40),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset(
                                  'assets/icons/sun_cloud_rain.svg',
                                  height: 30,
                                ),
                                const SizedBox(width: 10),
                                const Text(
                                  'Humidity: 60%',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                SvgPicture.asset(
                                  'assets/icons/moon_star.svg',
                                  height: 30,
                                ),
                                const SizedBox(width: 10),
                                const Text(
                                  'Sunset: 29%',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  dailyData(),
                  const SizedBox(height: 20),
                  weatherDetails(),
                  const SizedBox(height: 20),
                  weekDetails(),
                  const SizedBox(height: 10),
                ],
              ),
            )),
      ),
    );
  }

  Drawer appDrawer() {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.black87,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    maxRadius: 44,
                    minRadius: 44,
                    backgroundImage: NetworkImage(
                        'https://images.unsplash.com/photo-1640951613773-54706e06851d?q=80&w=2080&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                  ),
                  SizedBox(height: 8),
                  Text('Diwash Tiwari',
                      style: TextStyle(
                          fontSize: 26,
                          color: Colors.white,
                          fontWeight: FontWeight.bold))
                ],
              )),
          ListTile(
            leading: const Icon(
              Icons.cloud,
              size: 28,
            ),
            title: const Text('Forecast',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => const ForecastPage(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Container weekDetails() {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.black87, borderRadius: BorderRadius.circular(14)),
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'High    |    Low',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              )
            ],
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 240,
            child: ListView.separated(
              separatorBuilder: (context, index) => const SizedBox(height: 10),
              scrollDirection: Axis.vertical,
              itemCount: weatherData.length,
              itemBuilder: (context, index) {
                return SizedBox(
                  height: 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 70,
                            child: Text(
                              weekData[index].day,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                      SvgPicture.asset(
                        weekData[index].iconPath,
                        height: 26,
                      ),
                      Row(
                        children: [
                          Text(
                            '${weekData[index].highTemp}°',
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(width: 40),
                          Text(
                            '${weekData[index].lowTemp}°',
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      )
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }

  Container weatherDetails() {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.black87, borderRadius: BorderRadius.circular(14)),
      child: Column(
        children: [
          const Row(
            children: [
              Text(
                'Details',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset(
                'assets/icons/sun_cloud.svg',
                height: 100,
              ),
              const SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Feels like',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: 50),
                        Text(
                          '80',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        Text(
                          'Humidity',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: 50),
                        Text(
                          '70%',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        Text(
                          'Visibility',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: 50),
                        Text(
                          '20 mi',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        Text(
                          'Visibility',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: 50),
                        Text(
                          'Low 0',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        Text(
                          'Dew point',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: 50),
                        Text(
                          '50',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          const Text(
            'Tonight - Clear. Winds from SW to SSW at 10 to 11 mph (16.1 to 17.7 kph). The overnight low will be 69° F (20.0 ° C)',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Row date() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: Colors.black87),
          child: const Text(
            "Sunday, 18 Feb",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }

  SizedBox dailyData() {
    return SizedBox(
      height: 140,
      child: ListView.separated(
        itemCount: weatherData.length,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => const SizedBox(width: 14),
        itemBuilder: (context, index) {
          return Container(
            width: 70,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                // color: weatherData[index].boxColor,
                color: Colors.black87,
                borderRadius: BorderRadius.circular(40)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  weatherData[index].time,
                  style: const TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                SvgPicture.asset(
                  weatherData[index].iconPath,
                  height: 36,
                ),
                Text(
                  '${weatherData[index].degree}°',
                  style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
        leading: Builder(builder: (context) {
          return IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: Container(
              width: 24,
              alignment: Alignment.center,
              margin: const EdgeInsets.all(10),
              child: SvgPicture.asset(
                'assets/icons/menu.svg',
                height: 14,
                width: 14,
              ),
            ),
          );
        }),
        title: const Text(
          'Biratnagar, Nepal',
          style: TextStyle(
              fontSize: 22, color: Colors.white, fontWeight: FontWeight.w400),
        ),
        actions: <Widget>[
          GestureDetector(
            child: Container(
              width: 24,
              alignment: Alignment.center,
              margin: const EdgeInsets.all(10),
              child: SvgPicture.asset(
                'assets/icons/dot.svg',
                height: 20,
                width: 20,
              ),
            ),
          )
        ],
        toolbarHeight: 60,
        centerTitle: true,
        backgroundColor: Colors.black87,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))));
  }
}
