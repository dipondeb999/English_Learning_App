import 'package:flutter/material.dart';

class GovtOtherStudyItem extends StatelessWidget {
  final IconData icon;
  final String title;

  const GovtOtherStudyItem({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 5,
              spreadRadius: 1,
            ),
          ]
      ),
      child: ListTile(
        leading: Icon(
          icon,
          color: Colors.red,
          size: 40,
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
    );;
  }
}
