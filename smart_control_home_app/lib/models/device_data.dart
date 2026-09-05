import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class DeviceData {
  DeviceData({
    required this.title,
    required this.room,
    required this.icon,
    this.unit = '',
    this.iconColor = AppColors.accentCyan,
    this.isFavorite = false,
  });

  final String title;
  final String room;
  final IconData icon;
  final String unit;
  final Color iconColor;
  bool isFavorite;
}
