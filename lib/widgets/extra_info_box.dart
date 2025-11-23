import 'package:flutter/material.dart';

import '../resources/app_colors.dart';

class ExtraInfoBox extends StatelessWidget {
  final String text;

  const ExtraInfoBox({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 150,
      decoration: BoxDecoration(
        color: AppColors.extraColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Stack(
        clipBehavior: Clip.hardEdge,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Center(
              child: Text(
                text,
                style: TextStyle(color: AppColors.basicTextColor, fontSize: 15),
              ),
            ),
          ),
          Positioned(
            right: -20,
            bottom: -20,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Icon(
                Icons.info_outline,
                color: AppColors.extraIconColor,
                size: 80,
              ),
            ),
          ),
        ],
      ),
    );
  }
}