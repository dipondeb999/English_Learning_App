import 'package:flutter/material.dart';

class SpokenOtherStudyItem extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final String title;
  const SpokenOtherStudyItem({super.key, required this.icon, required this.iconColor, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 4,
            spreadRadius: 1,
          ),
        ]
      ),
      child: ListTile(
        leading: Icon(
          icon,
          color: iconColor,
          size: 25,
        ),
        title: Text(
          title,
          textAlign: TextAlign.left,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
