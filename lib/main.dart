import 'package:flutter/material.dart';
import 'package:whatsapp_clone/components/chattile.dart';
import 'package:whatsapp_clone/components/storybtn.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      home: Whatsapp(),
    );
  }
}

class Whatsapp extends StatefulWidget {
  const Whatsapp({Key? key}) : super(key: key);

  @override
  _WhatsappState createState() => _WhatsappState();
}

class _WhatsappState extends State<Whatsapp> {
 // adding main color
  Color mainColor = Color(0xFF177767);
  var containerRadius = Radius.circular(30.0);

  // adding a list of image URL simulate the avatar picture
  List<String> imageUrl = [

    "assets/img1.jpg",
    "assets/img2.jpg",
    "assets/img3.jpg",
    "assets/img4.jpg",
    "assets/img5.jpg",
    "assets/img6.jpg",
    "assets/img7.jpg",
    "assets/img8.jpg",
    "assets/img9.jpg"

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,

      appBar: AppBar(
        elevation: 0.0,
        title: Text("WhatsApp Clone"),
        backgroundColor: mainColor,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_horiz),
          )
        ],
      ),

      body: Column(
        children: [
          //First lets create the Story time line container
          Container(
            height: 100.0,

            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 8.0),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  // lets create  a custom widget for our story button
                  storyButton(imageUrl[0], "Ameer"),
                  storyButton(imageUrl[1], "Moiz"),
                  storyButton(imageUrl[2], "Irtaza"),
                  storyButton(imageUrl[3], "Nabeel "),
                  storyButton(imageUrl[4], "Zahid"),
                  storyButton(imageUrl[5], "jahangir"),
                  storyButton(imageUrl[6], "Ali"),
                  storyButton(imageUrl[7], "Sir Aqib"),
                  storyButton(imageUrl[8], "Hamza"),

                ],
              ),
            ),
          ),

          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: containerRadius, topRight: containerRadius),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 12.0 , right: 12.0, top: 10.0),
                child: ListView(
                  children: [
                    //now lets create our chat tile custom widget
                    chatTile(imageUrl[0], "Ameer", "kha ho", "now", false),
                    chatTile(imageUrl[1], "Moiz", "ok", "8Am", true),
                    chatTile(imageUrl[2], "Irtaza", "hello", "9Am", true),
                    chatTile(imageUrl[3], "Nabeel", "aja jaldi", "Yesterday", true),
                    chatTile(imageUrl[4], "Zahid", "kab jana hai?", "Yesterday", false),
                    chatTile(imageUrl[5], "Jahangir", "Aptech jay ga aj?", "San", true),
                    chatTile(imageUrl[6], "Ali", "a rha hu", "San", true),
                    chatTile(imageUrl[7], "Sir Aqib", "Sir aj class Hogi?", "Thu", true),
                    chatTile(imageUrl[8], "Hamza", "okay", "Thu", true),
                    chatTile(imageUrl[0], "Mubashir", "kiya huwa", "Thu", true),
                    chatTile(imageUrl[2], "Auther", "kha ho j kl", "Thu", true),
                  ],
                ),
              ),
            ),
          )

        ],
      ),

    );
  }
}

