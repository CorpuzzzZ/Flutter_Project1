import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'water_widgets.dart';

class WaterTrackerScreen extends StatelessWidget {
  const WaterTrackerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: const WaterAppBar(title: 'Water Tracker'),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
          child: Column(
            children: const [
              WaterDropIcon(),
              SizedBox(height: 16),
              TitleSection(
                title: 'Stay Hydrated!',
                subtitle: 'Build a healthy daily habit',
              ),
              SizedBox(height: 24),
              GoalCard(
                label: 'Daily Water Goal',
                goal: 8,
                unit: 'glasses per day',
              ),
              SizedBox(height: 24),
              TipBanner(text: 'Drink water regularly'),
              SizedBox(height: 12),
              TipBanner(text: 'Bring your water bottle'),
              SizedBox(height: 24),
              FooterText(text: 'Every glass counts!'),
            ],
          ),
        ),
      ),
    );
  }
}
