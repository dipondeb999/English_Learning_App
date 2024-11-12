import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            Row(
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
                    Text('Me UI/UX Designer'),
                    Text('blogger41915@gmail.com'),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
