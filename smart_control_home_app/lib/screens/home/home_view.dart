import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';
import '../../constants/app_paddings.dart';
import '../../models/device_data.dart';
import '../../widgets/category_tabs.dart';
import '../../widgets/device_card.dart';
import '../../widgets/mode_dropdown.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final List<DeviceData> devices = [
    DeviceData(
      title: 'Front station',
      room: 'Garage',
      icon: Icons.battery_full,
      unit: '40%',
      iconColor: AppColors.accentGreen,
    ),
    DeviceData(title: 'Shutter', room: 'Kitchen', icon: Icons.menu, iconColor: AppColors.accentOrange),
    DeviceData(title: 'West Shutter', room: 'Bed Room', icon: Icons.menu, iconColor: AppColors.accentOrange),
    DeviceData(title: 'Electricity', room: 'Home', icon: Icons.bolt, iconColor: AppColors.accentCyan),
    DeviceData(title: 'Light', room: 'Attic', icon: Icons.lightbulb, iconColor: AppColors.accentYellow),
    DeviceData(title: 'Shutter', room: 'Balcony', icon: Icons.menu, iconColor: AppColors.accentOrange),
    DeviceData(title: 'Light', room: 'Living Room', icon: Icons.lightbulb, iconColor: AppColors.accentYellow),
    DeviceData(title: 'Solar Panel', room: 'Home', icon: Icons.grid_on, unit: '8kw/h', iconColor: AppColors.accentCyan),
    DeviceData(title: 'Light', room: 'Hallway', icon: Icons.lightbulb, iconColor: AppColors.accentYellow),
  ];

  Color bgColor = AppColors.bgNightColor;
  Color appBarColor = AppColors.appBarColor;
  Color controlColor = AppColors.dropdownColor;
  Color cardColor = AppColors.cardColor;
  Color borderColor = AppColors.cardBorderColor;
  String selectedMode = 'Night';
  Color textColor = AppColors.textPrimary;
  String selectedCategory = 'Favorites';

  List<DeviceData> get visibleDevices {
    if (selectedCategory == 'Favorites') {
      return devices.where((device) => device.isFavorite).toList();
    } else if (selectedCategory == "All Devices") {
      return devices;
    }

    return devices.where((device) => device.room == selectedCategory).toList();
  }

  void setNightMode() {
    setState(() {
      selectedMode = 'Night';
      bgColor = AppColors.bgNightColor;
      appBarColor = AppColors.appBarColor;
      controlColor = AppColors.dropdownColor;
      cardColor = AppColors.cardColor;
      borderColor = AppColors.cardBorderColor;
      textColor = AppColors.textPrimary;
    });
  }

  void setDayMode() {
    setState(() {
      selectedMode = 'Day';
      bgColor = AppColors.bgDayColor;
      appBarColor = AppColors.appBarDayColor;
      controlColor = AppColors.dayControlColor;
      cardColor = AppColors.dayCardColor;
      borderColor = AppColors.dayCardBorderColor;
      textColor = AppColors.dayTextPrimary;
    });
  }

  void selectCategory(String category) {
    setState(() {
      selectedCategory = category;
    });
  }

  void toggleFavorite(DeviceData device) {
    setState(() {
      device.isFavorite = !device.isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: appBarColor,
        elevation: 0.33,
        leading: IconButton(
          padding: AppPaddings.appBarIconPadding,
          tooltip: 'Notifications',
          icon: Icon(Icons.notifications, size: 32, color: textColor),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            padding: AppPaddings.appBarIconPadding,
            tooltip: 'Menu',
            icon: Icon(Icons.list, size: 32, color: textColor),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: AppPaddings.bodyPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: AppPaddings.titlePadding,
              child: Text('Home status', style: TextStyle(fontSize: 25, color: textColor)),
            ),
            ModeDropdown(
              selectedMode: selectedMode,
              textColor: textColor,
              backgroundColor: controlColor,
              onChanged: (value) {
                if (value == 'Night') {
                  setNightMode();
                } else if (value == 'Day') {
                  setDayMode();
                }
              },
            ),
            CategoryTabs(selectedCategory: selectedCategory, textColor: textColor, onCategorySelected: selectCategory),
            Expanded(
              child: visibleDevices.isEmpty
                  ? Center(
                      child: Text(
                        selectedCategory == 'Favorites' ? 'No favorite devices yet' : 'No devices in this room yet',
                        style: TextStyle(color: textColor),
                      ),
                    )
                  : GridView.builder(
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 15,
                        mainAxisSpacing: 10,
                        mainAxisExtent: 100,
                      ),
                      itemCount: visibleDevices.length,
                      itemBuilder: (context, index) {
                        final device = visibleDevices[index];

                        return DeviceCard(
                          device: device,
                          textColor: textColor,
                          cardColor: cardColor,
                          borderColor: borderColor,
                          onFavoritePressed: () => toggleFavorite(device),
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
