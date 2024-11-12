import 'package:english_learning_app/ui/screens/govt_exam_screen.dart';
import 'package:english_learning_app/ui/screens/spoken_screen.dart';
import 'package:english_learning_app/ui/screens/video_screen.dart';
import 'package:english_learning_app/ui/utils/app_color.dart';
import 'package:english_learning_app/ui/widgets/my_drawer.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

class MainBottomNavBar extends StatefulWidget {
  const MainBottomNavBar({super.key});

  @override
  State<MainBottomNavBar> createState() => _MainBottomNavBarState();
}

class _MainBottomNavBarState extends State<MainBottomNavBar> {
  int _selectIndex = 0;
  final List<Widget> _screens = const [
    SpokenScreen(),
    GovtExamScreen(),
    VideoScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        backgroundColor: AppColor.primaryColor,
        title: const Text(
          'EnglishLearning',
          style: TextStyle(
              color: Colors.white,
              fontFamily: 'WrightFunk',
              fontSize: 22,
              fontWeight: FontWeight.w500),
        ),
        actions:  [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: badges.Badge(
              position: badges.BadgePosition.topEnd(top: -8, end: -1),
              badgeContent: const Text(
                '1',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              child: Icon(
                Icons.notifications,
                color: Colors.yellow.shade600,
                size: 35,
              ),
            ),
          ),
        ],
      ),
      body: _screens[_selectIndex],
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildBottomNavigationBar() {
    return BottomNavigationBar(
      currentIndex: _selectIndex,
      selectedItemColor: AppColor.primaryColor,
      unselectedItemColor: Colors.blueGrey,
      onTap: (int index) {
        _selectIndex = index;
        setState(() {});
      },
      items: const [
        BottomNavigationBarItem(
          icon: Icon(
              Icons.home,
            size: 35,
          ),
          label: 'Spoken',
        ),
        BottomNavigationBarItem(
          icon: Icon(
              Icons.insert_drive_file,
            size: 35,
          ),
          label: 'Govt Exam',
        ),
        BottomNavigationBarItem(
          icon: Icon(
              Icons.smart_display_rounded,
            size: 35,
          ),
          label: 'Video',
        ),
      ],
    );
  }
}
