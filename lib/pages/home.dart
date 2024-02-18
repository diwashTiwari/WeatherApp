import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.black87),
                    child: const Text(
                      "Sunday, 18 Feb",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
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
            ],
          ),
        ),
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
        leading: GestureDetector(
          child: Container(
            width: 24,
            alignment: Alignment.center,
            margin: const EdgeInsets.all(10),
            child: SvgPicture.asset(
              'assets/icons/menu.svg',
              height: 14,
              width: 14,
            ),
          ),
        ),
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
