import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key,
  required this.title,
  required this.icon,
  });
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: MediaQuery.of(context).size.width * 0.08
            ),
          ),
          Icon(icon,
          color: Colors.grey,
          size: MediaQuery.of(context).size.width * 0.1,
          )
        ]
      ),
    );
  }
}