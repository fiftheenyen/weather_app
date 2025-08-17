import 'dart:ui';

import 'package:flutter/material.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Weather App',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          GestureDetector(
            onTap: () {
              print('Refresh');
            },
            child: const Icon(Icons.refresh),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //maincard
            SizedBox(
              width: double.infinity,
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(18),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 5, sigmaY: 1),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Text(
                            '300 ° K',
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Icon(Icons.cloud, size: 80),
                          const SizedBox(height: 10),
                          Text('Rain', style: TextStyle(fontSize: 18)),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            //weatherforecast card
            const SizedBox(height: 20),
            const Text(
              'Weather Forecast',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 14),
            SingleChildScrollView(scrollDirection: Axis.horizontal),
            Row(children: [
                
              ],
            ),
            //additional information
            const SizedBox(height: 20),
            const Placeholder(fallbackHeight: 150),
          ],
        ),
      ),
    );
  }
}

class HourlyForecastItem extends StatelessWidget {
  const HourlyForecastItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      child: Container(
        width: 100,
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              '09:00',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
            ),
            const SizedBox(height: 6),
            Icon(Icons.cloud, size: 40),
            const SizedBox(height: 6),
            Text('301.00', style: TextStyle(fontSize: 14)),
          ],
        ),
      ),
    );
  }
}
