import 'package:flutter/material.dart';

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({super.key, this.onTap, this.icon,
    this.name, required this.color
  });
  final void Function()? onTap;
  final IconData? icon;
  final String? name;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        // height: 36,
        width: MediaQuery.of(context).size.height * 0.05,
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.05,
              width: MediaQuery.of(context).size.height * 0.05,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(
                  MediaQuery.of(context).size.height * 0.025
                )
              ),
              child: Icon(icon, color: Colors.grey,
              )
            ),
            Text(
              name!,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w400,
                fontSize: MediaQuery.of(context).size.width * 0.02
              ),
            )
          ],
        ),
      ),
    );
  }
}
