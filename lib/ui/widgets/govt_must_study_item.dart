import 'package:flutter/material.dart';

class GovtMustStudyItem extends StatelessWidget {
  final IconData icon;
  final Gradient color;
  final String title;

  const GovtMustStudyItem({super.key, required this.icon, required this.color, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 105,
      decoration: BoxDecoration(
        gradient: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: 65,
          ),
          const SizedBox(height: 15),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );;
  }
}
