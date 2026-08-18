import 'package:flutter/material.dart';
import 'package:flutter_learning_journey/101/icon_learn.dart';
import 'package:flutter_learning_journey/101/image_learn.dart';
import 'package:flutter_learning_journey/101/stack_learn.dart';

class PageViewLearn extends StatefulWidget {
  const PageViewLearn({super.key});

  @override
  State<PageViewLearn> createState() => _PageViewLearnState();
}

class _PageViewLearnState extends State<PageViewLearn> {
  final _pageController = PageController();

  int _currentPageIndex = 1;
  void _updatePageIndex(int index) {
    setState(() {
      _currentPageIndex =index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left:30),
            child: Text(_currentPageIndex.toString(),style:Theme.of(context).textTheme.headlineSmall),
          ),
          Spacer(),
          FloatingActionButton(
            onPressed: () {
              _pageController.previousPage(
                duration: _Durations._previousPageDuration,
                curve: _Animations._previousPageAnimation,
              );
            },
            child: Icon(Icons.chevron_left_sharp, size: 50),
          ),
          FloatingActionButton(
            onPressed: () {
              _pageController.nextPage(duration: _Durations._nextPageDuration, curve: _Animations._nextPageAnimation);
            },
            child: Icon(Icons.chevron_right_sharp, size: 50),
            
          ),
           
        ],
      ),
      appBar: AppBar(),
      
      body: PageView(
        controller: _pageController,
        onPageChanged: _updatePageIndex,

        children: [
          
          Container(color: Colors.red),
          Container(color: Colors.blue),
          Container(color: Colors.green),
          ImageLearn(),
          IconLearnView(),
          StackLearn(),
        ],
        
      ),
      
    );
  }
}

class _Durations {
  static const _nextPageDuration = Duration(milliseconds: 120);

  static const _previousPageDuration = Duration(milliseconds: 100);
}

class _Animations {
  static const _nextPageAnimation = Curves.easeIn;
  static const _previousPageAnimation = Curves.easeOut;
}
