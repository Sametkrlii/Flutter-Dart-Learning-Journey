import 'package:flutter/material.dart';
import 'package:flutter_learning_journey/101/list_view_builder.dart';
import 'package:flutter_learning_journey/101/list_view_learn.dart';
import 'package:flutter_learning_journey/101/statefull_life_cycle_learn.dart';
import 'package:flutter_learning_journey/101/text_learn_view.dart';

class TabLearn extends StatefulWidget {
  const TabLearn({super.key});

  @override
  State<TabLearn> createState() => _TabLearnState();
}

class _TabLearnState extends State<TabLearn> with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _MyTabViews.values.length, vsync: this);
  }

  final double _notchMargin = 10;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _MyTabViews.values.length,
      child: Scaffold(
        extendBody: true,
        
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          shape: CircleBorder(),
          
          onPressed: () {
            _tabController.animateTo(_MyTabViews.home.index);
          },
          child: Icon(Icons.home),
        ),
      

        bottomNavigationBar: BottomAppBar(
          notchMargin: _notchMargin,
          shape: CircularNotchedRectangle(),
          child: _myTabView(tabController: _tabController),
        ),
        appBar: AppBar(),
        body: _tabbarView(tabController: _tabController),
      ),
    );
  }
}

class _myTabView extends StatelessWidget {
  const _myTabView({required this._tabController});

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      padding: EdgeInsets.zero,
      onTap: (int index) {},
      unselectedLabelColor: Colors.white,
      labelColor: Colors.red,
      controller: _tabController,
      tabs: _MyTabViews.values.map((e) => Tab(text: "${e.name}")).toList(),
    );
  }
}

class _tabbarView extends StatelessWidget {
  const _tabbarView({required this._tabController});

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      controller: _tabController,
      children: [
        ListViewLearn(),
        ListViewBuilderLearn(),
        TextLearnView(),
        StatefullLifeCycleLearn(message: "Samet"),
      ],
    );
  }
}

enum _MyTabViews { home, settings, favorite, profile }

extension _MyTabViewExtension on _MyTabViews {}
