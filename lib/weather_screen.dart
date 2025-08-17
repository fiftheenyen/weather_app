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
          children: [
            //maincard
            SizedBox(
              width: double.infinity,
              child: Card(
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
            //weatherforecast card
            const SizedBox(height: 20),
            const Placeholder(fallbackHeight: 150),
            //additional information
            const SizedBox(height: 20),
            const Placeholder(fallbackHeight: 150),
          ],
        ),
      ),
    );
  }
}
