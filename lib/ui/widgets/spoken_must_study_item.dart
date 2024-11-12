import 'package:flutter/material.dart';

class SpokenMustStudyItem extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final String title;
  const SpokenMustStudyItem({super.key, required this.icon, required this.title, required this.iconColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      width: 170,
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
          size: 35,
        ),
        title: Text(
          title,
          textAlign: TextAlign.left,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
