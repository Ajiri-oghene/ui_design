import 'package:flutter/material.dart';

class ProfileContainer extends StatelessWidget {
  const ProfileContainer({super.key,
  required this.icon,
  required this.title,
  required this.color,
  required this.textColor
  });
  final IconData icon;
  final String title;
  final  Color color;
  final  Color textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.width * 0.14,
      width: MediaQuery.of(context).size.width * 0.9,
      child: Row(
        children: [
          Icon(icon,
          size: MediaQuery.of(context).size.width * 0.1,
          color: color,
          ),
          SizedBox(width: MediaQuery.of(context).size.width * 0.05),
          Text(title,
            style: TextStyle(
              color: textColor,
              overflow: TextOverflow.ellipsis,
              fontWeight: FontWeight.w400,
              fontSize: MediaQuery.of(context).size.width * 0.06,
            ),
          )
        ],
      ),
    );
  }
}