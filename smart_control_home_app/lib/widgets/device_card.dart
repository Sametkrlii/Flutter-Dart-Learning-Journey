import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import '../models/device_data.dart';

class DeviceCard extends StatelessWidget {
  const DeviceCard({
    super.key,
    required this.device,
    required this.textColor,
    required this.cardColor,
    required this.borderColor,
    required this.onFavoritePressed,
  });

  final DeviceData device;
  final Color textColor;
  final Color cardColor;
  final Color borderColor;
  final VoidCallback onFavoritePressed;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: cardColor,
      elevation: 2,
      shadowColor: Colors.black26,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
        side: BorderSide(color: borderColor),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 8, top: 4, right: 4, bottom: 4),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    device.title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: textColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                IconButton(
                  onPressed: onFavoritePressed,
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(
                    minWidth: 40,
                    minHeight: 40,
                  ),
                  iconSize: 26,
                  tooltip: 'Toggle favorite',
                  icon: Icon(
                    device.isFavorite ? Icons.star : Icons.star_border_outlined,
                    color: device.isFavorite
                        ? AppColors.favoriteColor
                        : textColor.withAlpha(180),
                  ),
                ),
              ],
            ),
            const Spacer(),
            Row(
              children: [
                Expanded(
                  child: Text(
                    device.room,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(color: textColor),
                  ),
                ),
                if (device.unit.trim().isNotEmpty) ...[
                  Text(device.unit, style: TextStyle(color: textColor)),
                  const SizedBox(width: 4),
                ],
                Padding(
                  padding: const EdgeInsets.only(right: 4),
                  child: Icon(device.icon, size: 20, color: device.iconColor),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
