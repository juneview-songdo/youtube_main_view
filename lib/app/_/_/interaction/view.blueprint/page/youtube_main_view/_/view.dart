import 'package:flutter/material.dart';

import '../../../../../../../../main.dart';
import '_/state_child.dart';
import '_/state_mother.dart';

class NewView extends StatefulWidget {
  NewView({super.key});

  @override
  State<NewView> createState() => StateChild();
}

class NewViewState extends State<NewView> with StateMother {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEEEEE),
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          //////////////////////
          Container().backgroundColor(Colors.red),
          Container().backgroundColor(Colors.blue),
          Container().backgroundColor(Colors.yellow),
          Container().backgroundColor(Colors.green),
          Container().backgroundColor(Colors.purple),
          //////////////////////
        ],
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: BottomNavigationBar(
          currentIndex: _selectedIndex,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Color(0xFFFF0000),
          unselectedItemColor: Colors.grey[700],
          onTap: (int index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_filled,
                  size: 23,
                  color: Colors.black
                      .withOpacity((_selectedIndex == 0) ? 0.7 : 0.3),
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.explore,
                  size: 23,
                  color: Colors.black
                      .withOpacity((_selectedIndex == 1) ? 0.7 : 0.3),
                ),
                label: "Explore"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.subscriptions,
                  size: 23,
                  color: Colors.black
                      .withOpacity((_selectedIndex == 2) ? 0.7 : 0.3),
                ),
                label: "Subscription"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.notifications,
                  size: 23,
                  color: Colors.black
                      .withOpacity((_selectedIndex == 3) ? 0.7 : 0.3),
                ),
                label: "Notification"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.video_library,
                  size: 23,
                  color: Colors.black
                      .withOpacity((_selectedIndex == 4) ? 0.7 : 0.3),
                ),
                label: "Library"),
          ],
        ),
      ),
    );
  }
}

main() async {
  return buildApp(appHome: NewView());
}