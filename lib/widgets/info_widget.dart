import 'package:flutter/material.dart';

import '../resources/app_colors.dart';

class InfoWidget extends StatelessWidget {
  final String text;
  final IconData icon;

  const InfoWidget({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        children: [
          Expanded(child: Icon(icon, color: AppColors.iconsColor, size: 30)),
          SizedBox(width: 10),
          Expanded(
            flex: 6,
            child: Text(
              text,
              style: TextStyle(fontSize: 18, color: AppColors.basicTextColor),
            ),
          ),
        ],
      ),
    );
  }
}