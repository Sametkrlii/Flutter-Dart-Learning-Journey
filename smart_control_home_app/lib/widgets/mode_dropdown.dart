import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class ModeDropdown extends StatelessWidget {
  const ModeDropdown({
    super.key,
    required this.selectedMode,
    required this.textColor,
    required this.backgroundColor,
    required this.onChanged,
  });

  final String selectedMode;
  final Color textColor;
  final Color backgroundColor;
  final ValueChanged<String?> onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: double.infinity,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: backgroundColor,
      ),
      child: DropdownButton<String>(
        value: selectedMode,
        isExpanded: true,
        isDense: true,
        underline: const SizedBox.shrink(),
        padding: EdgeInsets.symmetric(horizontal: 16),
        dropdownColor: backgroundColor,
        icon: Icon(Icons.keyboard_arrow_down_rounded, color: textColor),
        style: TextStyle(color: textColor),
        items: const [
          DropdownMenuItem<String>(
            value: 'Night',
            child: Row(
              children: [
                Icon(Icons.nightlight_round_sharp, color: AppColors.accentCyan),
                SizedBox(width: 10),
                Text('Night mode'),
              ],
            ),
          ),
          DropdownMenuItem<String>(
            value: 'Day',
            child: Row(
              children: [
                Icon(Icons.wb_sunny, color: AppColors.accentOrange),
                SizedBox(width: 10),
                Text('Day mode'),
              ],
            ),
          ),
        ],
        onChanged: onChanged,
      ),
    );
  }
}
