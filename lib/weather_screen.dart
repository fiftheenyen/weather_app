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
      body: Column(
        children: [
          //maincard
          const Placeholder(fallbackHeight: 250),
          //weatherforecast card
          const SizedBox(height: 20),
          const Placeholder(fallbackHeight: 150),
          //additional information
          const SizedBox(height: 20),
          const Placeholder(fallbackHeight: 150),
        ],
      ),
    );
  }
}
