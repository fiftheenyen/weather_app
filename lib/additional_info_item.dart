import 'package:flutter/material.dart';

class AdditionalInfoItem extends StatelessWidget {
  const AdditionalInfoItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(Icons.water_drop, size: 35),
        const SizedBox(height: 5),
        Text('Humidity', style: TextStyle(fontSize: 14)),
        const SizedBox(height: 5),
        Text('94', style: TextStyle(fontSize: 14)),
      ],
    );
  }
}
