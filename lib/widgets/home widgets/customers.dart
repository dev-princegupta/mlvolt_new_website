import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:mlvolt_new_website/widgets/home widgets/customerCard.dart';

class CustomerFeedbackHome extends StatelessWidget {
  const CustomerFeedbackHome({super.key});

  @override
  Widget build(BuildContext context) {
        double deviceWidth = MediaQuery.of(context).size.width;

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(children: [
          SizedBox(
            width: deviceWidth>600?600:deviceWidth-40,
            child: Text(
              "Don't take our word for it, \nlisten to our satisfied clients",
              style: TextStyle(
                fontFamily: "bold",
                fontSize: deviceWidth>600?40:25,
                color: Color(0xff959595),
              ),
            ),
          ),
          Positioned(
            bottom:  deviceWidth>600?15: 9,
            right: deviceWidth>600?5: 14,
            child: Container(
              width: deviceWidth>600?14: 10,
              height: deviceWidth>600?14: 10,
              color: const Color(0xffFF6006),
            ),
          ),
        ]),
        SizedBox(
          height:deviceWidth>600? 90:50,
        ),
        const CustomerCard(
          imgAd: "images/amit.jpg",
          name: "Mr. Amit Sinha",
          position: "Entrepreneur",
          comment:
              "MLVOLT's headphone design service exceeded my expectations, delivering sleek, innovative, and top-quality designs. Impressive work!",
        ),
        SizedBox(
          height: deviceWidth>600? 70:30,
        ),
        const CustomerCard(
            imgAd: "images/jitendra.jpg",
            name: "Dr. Jitendra Gupta",
            position: "Entrepreneur",
            comment:
                "Exceptional PCB design services - precision, innovation, and reliability at their finest. Our projects' secret weapon!"),
      ],
    );
  }
}
