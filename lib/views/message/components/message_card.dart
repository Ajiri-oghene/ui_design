import 'package:flutter/material.dart';

class MessageCard extends StatelessWidget {
  const MessageCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            backgroundImage: const AssetImage(
              'assets/images/model.jpg'
            ),
            radius: MediaQuery.of(context).size.width* 0.07,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width* 0.02,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Parenting Challenge',
                    style: TextStyle(
                      overflow: TextOverflow.ellipsis,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: MediaQuery.of(context).size.width * 0.05
                    ),
                ),
                Text('Hello world',
                style: TextStyle(
              color: Colors.grey,
              overflow: TextOverflow.ellipsis,
              fontWeight: FontWeight.w400,
              fontSize: MediaQuery.of(context).size.width * 0.03
            ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width* 0.02,
          ),
          Container(
            height: MediaQuery.of(context).size.width* 0.06,
            width: MediaQuery.of(context).size.width* 0.06,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(
                MediaQuery.of(context).size.width* 0.03
              )
            ),
            child: Center(
              child: Text('4',
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.width* 0.04,
                color: Colors.white
              ),
              ),
            ),
          )
        ],
      ),
    );
  }
}