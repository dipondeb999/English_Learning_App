import 'package:english_learning_app/ui/widgets/drawer_item.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              _buildHeaderSection(),
              const SizedBox(height: 10),
              Container(
                height: 1,
                decoration: const BoxDecoration(
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 15),
              _buildFooterSection(),
            ],
          ),
        ),
      ),
    );
  }
  Widget _buildHeaderSection() {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(60),
            image: const DecorationImage(
              image: AssetImage('assets/images/profile.png'),
            ),
          ),
        ),
        const SizedBox(width: 8),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Me UI/UX Designer',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'blogger41915@gmail.com',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildFooterSection() {
    return Column(
      children: [
        const DrawerItem(
          icon: Icons.person,
          color: Colors.blue,
          title: 'Profile',
        ),
        const DrawerItem(
          icon: Icons.emoji_events,
          color: Colors.blueAccent,
          title: 'Leaderboard',
        ),
        const DrawerItem(
          icon: Icons.notifications,
          color: Colors.amber,
          title: 'Leaderboard',
        ),
        DrawerItem(
          icon: Icons.bookmark,
          color: Colors.red.shade300,
          title: 'Bookmark',
        ),
        const DrawerItem(
          icon: Icons.share,
          color: Colors.green,
          title: 'Share',
        ),
        const DrawerItem(
          icon: Icons.help_outlined,
          color: Colors.amber,
          title: 'Privacy Policy',
        ),
        const DrawerItem(
          icon: Icons.grid_view_sharp,
          color: Colors.green,
          title: 'More App',
        ),
        const DrawerItem(
          icon: Icons.star,
          color: Colors.blue,
          title: 'Rate Us',
        ),
      ],
    );
  }
}
