import 'package:flutter/material.dart';
import 'package:flutter_learning_journey/101/navigate_detail_learn.dart';

class NavigationLearnView extends StatefulWidget {
  const NavigationLearnView({super.key});

  @override
  State<NavigationLearnView> createState() => _NavigationLearnViewState();
}

class _NavigationLearnViewState extends State<NavigationLearnView> with NavigatorManager {
  List<int> selectedItems = [];

  void addSelected(int index, bool isAdd) {
    setState(() {
    isAdd ?  selectedItems.add(index) : selectedItems.remove(index);
    });
  }

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return TextButton(
            onPressed: () async {
              final response = await navigateToWidgetNormal<bool>(context,  NavigateDetailView(isOkey: selectedItems.contains(index)));

              if (response  is bool) {
                addSelected(index,response);
              } 
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Placeholder(color: selectedItems.contains(index) ? Colors.green : Colors.red),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {}, child: const Icon(Icons.navigation_rounded)),
    );
  }
}

mixin class NavigatorManager {
  Future<T?> navigateToWidgetNormal<T>(BuildContext context, Widget widget) {
    return Navigator.of(context).push<T>(
      MaterialPageRoute(
        builder: (context) {
          return widget;
        },
        fullscreenDialog: false,
        settings: const RouteSettings(),
      ),
    );
  }
}
