import 'package:flutter/material.dart';

import 'app_colors.dart';

/// Indigo header bar.
class WaterAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const WaterAppBar({super.key, required this.title});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.appBar,
      centerTitle: true,
      elevation: 0,
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}

/// Blue water drop icon.
class WaterDropIcon extends StatelessWidget {
  final double size;

  const WaterDropIcon({super.key, this.size = 80});

  @override
  Widget build(BuildContext context) {
    return Icon(Icons.water_drop, size: size, color: AppColors.drop);
  }
}

/// "Stay Hydrated!" title and subtitle.
class TitleSection extends StatelessWidget {
  final String title;
  final String subtitle;

  const TitleSection({super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: AppColors.textDark,
          ),
        ),
        const SizedBox(height: 6),
        Text(
          subtitle,
          style: const TextStyle(fontSize: 16, color: AppColors.textDark),
        ),
      ],
    );
  }
}

/// Cream card showing the daily goal.
class GoalCard extends StatelessWidget {
  final String label;
  final int goal;
  final String unit;

  const GoalCard({
    super.key,
    required this.label,
    required this.goal,
    required this.unit,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
      decoration: BoxDecoration(
        color: AppColors.card,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Text(
            label,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: AppColors.textDark,
            ),
          ),
          Text(
            '$goal',
            style: const TextStyle(
              fontSize: 80,
              fontWeight: FontWeight.w900,
              color: AppColors.goalNumber,
              height: 1.2,
            ),
          ),
          Text(
            unit,
            style: const TextStyle(fontSize: 18, color: AppColors.textDark),
          ),
        ],
      ),
    );
  }
}

/// Light-blue full-width tip banner.
class TipBanner extends StatelessWidget {
  final String text;

  const TipBanner({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 56,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: AppColors.tipButton,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.w600,
          color: AppColors.textDark,
        ),
      ),
    );
  }
}

/// Small footer text.
class FooterText extends StatelessWidget {
  final String text;

  const FooterText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(fontSize: 13, color: AppColors.textDark),
    );
  }
}
