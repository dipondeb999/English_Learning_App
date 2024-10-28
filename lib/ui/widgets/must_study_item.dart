import 'package:flutter/material.dart';

class MustStudyItem extends StatelessWidget {
  final IconData icon;
  final String title;
  const MustStudyItem({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      width: 180,
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
          color: Colors.red,
          size: 35,
        ),
        title: Text(
          title,
          textAlign: TextAlign.left,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
