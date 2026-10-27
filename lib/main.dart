import 'package:flutter/material.dart';

import 'water_tracker_screen.dart';

void main() {
  runApp(const WaterTrackerApp());
}

class WaterTrackerApp extends StatelessWidget {
  const WaterTrackerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Water Tracker',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: const WaterTrackerScreen(),
    );
  }
}
