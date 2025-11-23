import 'package:flutter/material.dart';

import '../resources/app_colors.dart';

class InfoWithDescriptionWidget extends StatelessWidget {
  final String text;
  final String description;
  final IconData icon;

  const InfoWithDescriptionWidget({
    super.key,
    required this.text,
    required this.description,
    required this.icon,
  });

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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text,
                  style: TextStyle(
                    fontSize: 18,
                    color: AppColors.basicTextColor,
                  ),
                ),
                Text(
                  description,
                  style: TextStyle(
                    fontSize: 16,
                    color: AppColors.descriptionColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}