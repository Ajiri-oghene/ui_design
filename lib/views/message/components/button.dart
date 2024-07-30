
import 'package:flutter/material.dart';

class TopButton extends StatefulWidget {
  const TopButton({super.key,
   required this.colors,
   required this.title,
  });
  final Color colors;
  final String title;

  @override
  State<TopButton> createState() => _TopButtonState();
}

class _TopButtonState extends State<TopButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: widget.colors
      ),
      child: Expanded(
        child: Text(
          widget.title,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w400,
            fontSize: MediaQuery.of(context).size.width * 0.05
          ),
        ),
      ),
    );
  }
}