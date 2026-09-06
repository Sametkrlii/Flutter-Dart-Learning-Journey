//ayrı bir foldera taşındı.
import 'package:flutter/material.dart';


class HomeController extends StatefulWidget {
  const HomeController({super.key});

  @override
  State<HomeController> createState() => _HomeControllerState();
}

class _HomeControllerState extends State<HomeController> {
  final List<DeviceData> devices = [
    DeviceData(title: "Front station", room: "Garage", icon: Icons.battery_full, unit: "40%"),
    DeviceData(title: "Shutter", room: "Kitchen", icon: Icons.menu),
    DeviceData(title: "West Shutter", room: "BedRoom", icon: Icons.menu),
    DeviceData(title: "Electricity", room: "Home", icon: Icons.bolt),
    DeviceData(title: "Light", room: "Attic", icon: Icons.lightbulb),
    DeviceData(title: "Shutter", room: "Balcony", icon: Icons.menu),
    DeviceData(title: "Shutter", room: "Children's", icon: Icons.menu),
    DeviceData(title: "Light", room: "Living Room", icon: Icons.lightbulb),
    DeviceData(title: "Solar Panel", room: "Home", icon: Icons.grid_on, unit: "8kw/h"),
    DeviceData(title: "Light", room: "Hallway", icon: Icons.lightbulb),
  ];

  List<DeviceData> get visibleDevices {
    if (selectedCategory == "Favorites") {
      return devices.where((device) => device.isFavorite).toList();
    }
    return devices.where((device) => device.room == selectedCategory).toList();
  }

  void toggleFavorite(DeviceData device) {
    setState(() {
      device.isFavorite = !device.isFavorite;
    });
  }

  Color bgColor = AppColors.bgNightColor;
  String selectedMode = "Night";
  Color textColor = Colors.white;
  String selectedCategory = "Favorites";

  void setNightMode() {
    setState(() {
      selectedMode = "Night";
      bgColor = AppColors.bgNightColor;
      textColor = Colors.white;
    });
  }

  void setDayMode() {
    setState(() {
      selectedMode = "Day";
      bgColor = AppColors.bgDayColor;
      textColor = Colors.black;
    });
  }

  void selectCategory(String category) {
    //ListViewde tıklanan yerine seçilen yapar
    setState(() {
      selectedCategory = category;
    });
  }

  Widget customListText(String title) {
    //ListViewe yazı oluşturur ve rengini değiştirir.
    final bool isSelected = selectedCategory == title;

    return AnimatedDefaultTextStyle(
      style: TextStyle(fontSize: isSelected ? 26 : 18, color: isSelected ? Colors.white : Colors.white38),
      duration: Duration(milliseconds: 200),
      curve: Curves.easeOutCubic,
      child: Text(title),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: AppColors.appBarColor,
        leading: IconButton(padding: AppPaddings.appBarIconPadding, icon: _CustomNotificationsIcon(), onPressed: () {}),
        actions: [IconButton(padding: AppPaddings.appBarIconPadding, icon: _CustomListIcon(), onPressed: () {})],
        elevation: 0.33,
      ),

      body: Padding(
        padding: AppPaddings.bodyPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: AppPaddings.titlePadding,
              child: Text("Home status", style: TextStyle(fontSize: 25, color: textColor)),
            ),
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color: const Color(0xff292929)),
              height: 80,
              width: double.infinity,
              child: DropdownButton<String>(
                value: selectedMode,
                isExpanded: true,
                isDense: true,
                underline: const SizedBox.shrink(),
                padding: EdgeInsets.zero,
                icon: Icon(Icons.keyboard_arrow_down_rounded, color: textColor),

                style: TextStyle(color: textColor),
                items: [
                  DropdownMenuItem<String>(
                    value: "Night",
                    child: Row(
                      children: [
                        const Icon(Icons.nightlight_round_sharp, color: Colors.cyan),
                        const SizedBox(width: 10),

                        Text("Night mode", style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ),

                  DropdownMenuItem<String>(
                    value: "Day",
                    child: Row(
                      children: [
                        const Icon(Icons.wb_sunny, color: Colors.orange),
                        const SizedBox(width: 10),
                        Text("Day mode", style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ),
                ],

                onChanged: (String? value) {
                  if (value == null) return;

                  if (value == "Night") {
                    setNightMode();
                  } else if (value == "Day") {
                    setDayMode();
                  }
                },
              ),
            ),

            Padding(
              padding: AppPaddings.listViewPadding,
              child: SizedBox(
                height: 50,
                child: ListView(
                  scrollDirection: Axis.horizontal,

                  children: [
                    TextButton(
                      onPressed: () {
                        selectCategory("Favorites");
                      },

                      child: customListText("Favorites"),
                    ),

                    TextButton(
                      onPressed: () {
                        selectCategory("Kitchen");
                      },
                      child: customListText("Kitchen"),
                    ),

                    TextButton(
                      onPressed: () {
                        selectCategory("Living Room");
                      },
                      child: customListText("Living Room"),
                    ),

                    TextButton(
                      onPressed: () {
                        selectCategory("Bed Room");
                      },
                      child: customListText("Bed Room"),
                    ),
                  ],
                ),
              ),
            ),

            Expanded(
              child: visibleDevices.isEmpty?   Text("No favorite devices yet") :GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 10,
                  mainAxisExtent: 100,
                ),
                itemBuilder: (context, index) {
                  final device =   visibleDevices[index];
                  return Card(
                    elevation: 2,

                    shadowColor: Colors.white,

                    margin: EdgeInsets.zero,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              
                              child: Padding(
                                
                                padding: const EdgeInsets.only(left:6),
                                child: Text(
                                  device.title,
                                  
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                toggleFavorite(device);
                              },
                              padding: EdgeInsets.zero,
                              alignment: Alignment.centerRight,
                             
                                
                              iconSize: 26,
                              icon: device.isFavorite? Icon(Icons.star):Icon(Icons.star_border_outlined),
                    
                            ),
                          ],
                        ),
                    
                        const Spacer(),
                    
                        Row(
                          children: [
                            Expanded(child: Padding(
                              padding: const EdgeInsets.only(left:8,bottom: 8),
                              child: Text(device.room, maxLines: 1, overflow: TextOverflow.ellipsis),
                            )
                            ),
                    
                            if (device.unit.trim().isNotEmpty) ...[Text(device.unit), const SizedBox(width: 4)],
                    
                            Padding(
                              padding: const EdgeInsets.only(right:8,bottom: 8),
                              child: Icon(device.icon, size: 20),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
                itemCount:visibleDevices.isEmpty? 1: visibleDevices.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _CustomListIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Icon(Icons.list, size: 32);
  }
}

class _CustomNotificationsIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Icon(Icons.notifications, size: 32);
  }
}

class AppColors {
  static const Color appBarColor = Color.fromARGB(255, 50, 50, 50);
  static const Color bgNightColor = Color.fromARGB(255, 50, 50, 50);
  static const Color bgDayColor = Colors.white60;
}

class AppPaddings {
  static const EdgeInsets appBarIconPadding = EdgeInsets.symmetric(horizontal: 16, vertical: 2);
  static const EdgeInsets titlePadding = EdgeInsets.symmetric(horizontal: 12, vertical: 12);
  static const EdgeInsets bodyPadding = EdgeInsets.symmetric(horizontal: 12, vertical: 6);
  static const EdgeInsets listViewPadding = EdgeInsets.symmetric(vertical: 12);
}

class DeviceData {
  DeviceData({this.isFavorite = false, this.unit = "", required this.title, required this.room, required this.icon});

  final String title;
  final String room;
  final IconData icon;
  final String unit;
  bool isFavorite;
}
