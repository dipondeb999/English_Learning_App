import 'package:flutter/material.dart';

class ToolsItem extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final String title;
  const ToolsItem({super.key, required this.icon, required this.iconColor, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(50),
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 5,
                spreadRadius: 1,
              ),
            ]
          ),
          child: Icon(
            icon,
            color: iconColor,
            size: 35,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          title,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
