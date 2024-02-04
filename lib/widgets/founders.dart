import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Founders extends StatelessWidget {
  const Founders({super.key});

  @override
  Widget build(BuildContext context) {
        double deviceWidth = MediaQuery.of(context).size.width;

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Person(imgAdd: "images/prince.jpg", name: "Prince Gupta"),
            SizedBox(
              width: deviceWidth>600? 40: 12,
            ),
            Person(imgAdd: "images/atulsir.jpg", name: "Atul Maurya"),
          ],
        ),
        SizedBox(
          height: deviceWidth>600? 100: 50,
        ),
         Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Person(imgAdd: "images/prince.jpg", name: "Prince Gupta"),
            SizedBox(
              width: deviceWidth>600? 40: 12,
            ),
            Person(imgAdd: "images/atulsir.jpg", name: "Atul Maurya"),
            SizedBox(
              width: deviceWidth>600? 40: 12,
            ),
            Person(imgAdd: "images/atulsir.jpg", name: "Atul Maurya"),
            SizedBox(
              width: deviceWidth>600? 40: 12,
            ),
            Person(imgAdd: "images/atulsir.jpg", name: "Atul Maurya"),
            SizedBox(
              width: deviceWidth>600? 40: 12,
            ),
          ],
        ),
        SizedBox(
          height: deviceWidth>600? 50: 18,
        ),
         Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Person(imgAdd: "images/prince.jpg", name: "Prince Gupta"),
            SizedBox(
              width: deviceWidth>600? 40: 12,
            ),
            Person(imgAdd: "images/atulsir.jpg", name: "Atul Maurya"),
            SizedBox(
              width: deviceWidth>600? 40: 12,
            ),
            Person(imgAdd: "images/atulsir.jpg", name: "Atul Maurya"),
            SizedBox(
              width: deviceWidth>600? 40: 12,
            ),
            Person(imgAdd: "images/atulsir.jpg", name: "Atul Maurya"),
            SizedBox(
              width: deviceWidth>600? 40: 12,
            ),
          ],
        ),
      ],
    );
  }
}

class Person extends StatelessWidget {
  final String imgAdd;
  final String name;
  const Person({
    super.key,
    required this.imgAdd,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
        double deviceWidth = MediaQuery.of(context).size.width;

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: deviceWidth>600? 200: 70,
          height: deviceWidth>600? 200: 70,
          child: Image.asset(imgAdd),
        ),
        SizedBox(
          height: deviceWidth>600? 30: 10,
        ),
        Text(
          name,
          style: TextStyle(
            fontFamily: "medium",
            color: Color(0xffFF6006),
            fontSize: deviceWidth>600? 28: 12,
          ),
        ),
        
        Text(
          "Co-Founder",
          style: TextStyle(
            fontFamily: "regular",
            color: Color(0xff868686),
            fontSize: deviceWidth>600? 22: 8,
          ),
        )
      ],
    );
  }
}
