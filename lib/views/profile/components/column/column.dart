import'package:flutter/material.dart';


class Columns extends StatelessWidget {
  const Columns({super.key,
  required this.text,
  required this.text2,
  });
  final String text;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: 190,
        height: 400,
        child: Column(
          children:[
            Text(text,
            style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w400,
                fontSize: MediaQuery.of(context).size.width * 0.05
              ),
            ),
            Text(text2,
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: MediaQuery.of(context).size.width * 0.05
              ),
            )
          ]
        ),
      ),
    );
  }
}