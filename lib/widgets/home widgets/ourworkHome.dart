import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:mlvolt_new_website/widgets/home widgets/homeCard2.dart';

class OurWorkHome extends StatelessWidget {
  const OurWorkHome({super.key});

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: deviceWidth>600? 700 :300,
          width: deviceWidth>600? 900 :deviceWidth*0.6,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: const [
              HomeCard2(
                  imgAd: "images/blackearbuds.png",
                  productName: "Wearable PCB",
                  clientName: "Mr. Archit "),
              HomeCard2(
                  imgAd: "images/headphone1.png",
                  productName: "Headphone Design",
                  clientName: "Mr. Kunal"),
              HomeCard2(
                  imgAd: "images/earbuds1.png",
                  productName: "Earbuds Design",
                  clientName: "Robert K."),
            

               HomeCard2(
                  imgAd: "images/pcb2.png",
                  productName: "Werable PCB",
                  clientName: "Mark H."),
              
              HomeCard2(
                  imgAd: "images/pvb1.png",
                  productName: "Werable PCB",
                  clientName: "Mr. Inderjeet"),
              HomeCard2(
                  imgAd: "images/lamp.png",
                  productName: "Smart Lamp",
                  clientName: "Prabhu V."),
              
               HomeCard2(
                  imgAd: "images/speaker1.png",
                  productName: "Speaker",
                  clientName: "Varun D."),

            ],
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              "Our Work",
              style: TextStyle(
                fontFamily: "bold",
                fontSize: deviceWidth>600? 60: 30,
                color: Colors.white,
              ),
            ),
             SizedBox(
              height: deviceWidth>600? 20 :10,
            ),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Color(0xffFF6006), width: 2)),
              child: Padding(
                padding: EdgeInsets.only(left: deviceWidth>600? 65:18, right: deviceWidth>600? 65:18, top: deviceWidth>600? 15:8, bottom: deviceWidth>600? 15:8),
                child: Text(
                  "View More",
                  style: TextStyle(
                    fontFamily: "light",
                    color: Color(0xff7A7A7A),
                    fontSize: deviceWidth>600?22:14,
                  ),
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
