import 'package:flutter/material.dart';

Widget storyButton(String imgUrl, String userName){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          CircleAvatar(
            radius: 26.0,
            backgroundImage: imgUrl.isNotEmpty ?  AssetImage(imgUrl) : null,
          ),

          SizedBox(
            height: 5.0,
          ),
          Text(
            userName,
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );

}