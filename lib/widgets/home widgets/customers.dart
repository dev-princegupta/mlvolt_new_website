import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:mlvolt_new_website/widgets/common%20widgets/responsiveLayout.dart';
import 'package:mlvolt_new_website/widgets/home widgets/customerCard.dart';

class CustomerFeedbackHome extends StatelessWidget {
  const CustomerFeedbackHome({super.key});

  @override
  Widget build(BuildContext context) {
        double deviceWidth = MediaQuery.of(context).size.width;

    Widget mobile(){
      return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(children: [
         const  SizedBox(
            width: 300,
            child: const Text(
              "Don't take our word for it, \nlisten to our satisfied clients",
              style: TextStyle(
                fontFamily: "bold",
                fontSize: 18,
                color: const Color(0xff959595),
              ),
            ),
          ),
          Positioned(
            bottom:  8,
            left: 270,
            child: Container(
              width: 6,
              height: 6,
              color: const Color(0xffFF6006),
            ),
          ),
        ]),
        const SizedBox(
          height:50,
        ),
        const CustomerCard(
          imgAd: "assets/images/amit.jpg",
          name: "Mr. Amit Sinha",
          position: "Entrepreneur",
          comment:
              "MLVOLT's headphone design service exceeded my expectations, delivering sleek, innovative, and top-quality designs. Impressive work!",
        ), 
        SizedBox(
          height: deviceWidth>600? 70:30,
        ),
        const CustomerCard(
            imgAd: "assets/images/jitendra.jpg",
            name: "Dr. Jitendra Gupta",
            position: "Entrepreneur",
            comment:
                "Exceptional PCB design services - precision, innovation, and reliability at their finest. Our projects' secret weapon!"),
      ],
    );
    }


    Widget tab(){
       return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(children: [
          SizedBox(
            width: deviceWidth-40,
            child: const Text(
              "Don't take our word for it, \nlisten to our satisfied clients",
              style: TextStyle(
                fontFamily: "bold",
                fontSize: 25,
                color: const Color(0xff959595),
              ),
            ),
          ),
          Positioned(
            bottom:  8,
            left: 380,
            child: Container(
              width: deviceWidth>600?10: 10,
              height: deviceWidth>600?10: 10,
              color: const Color(0xffFF6006),
            ),
          ),
        ]),
        const SizedBox(
          height:30,
        ),
        const CustomerCard(
          imgAd: "assets/images/amit.jpg",
          name: "Mr. Amit Sinha",
          position: "Entrepreneur",
          comment:
              "MLVOLT's headphone design service exceeded my expectations, delivering sleek, innovative, and top-quality designs. Impressive work!",
        ), 
        SizedBox(
          height: deviceWidth>600? 70:30,
        ),
        const CustomerCard(
            imgAd: "assets/images/jitendra.jpg",
            name: "Dr. Jitendra Gupta",
            position: "Entrepreneur",
            comment:
                "Exceptional PCB design services - precision, innovation, and reliability at their finest. Our projects' secret weapon!"),
      ],
    );
    }

    Widget desktop(){
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
                color: const Color(0xff959595),
              ),
            ),
          ),
          Positioned(
            bottom:  deviceWidth>600?15: 9,
            right: deviceWidth>600?1: 14,
            child: Container(
              width: deviceWidth>600?10: 10,
              height: deviceWidth>600?10: 10,
              color: const Color(0xffFF6006),
            ),
          ),
        ]),
        SizedBox(
          height:deviceWidth>600? 90:50,
        ),
        const CustomerCard(
          imgAd: "assets/images/amit.jpg",
          name: "Mr. Amit Sinha",
          position: "Entrepreneur",
          comment:
              "MLVOLT's headphone design service exceeded my expectations, delivering sleek, innovative, and top-quality designs. Impressive work!",
        ), 
        SizedBox(
          height: deviceWidth>600? 70:30,
        ),
        const CustomerCard(
            imgAd: "assets/images/jitendra.jpg",
            name: "Dr. Jitendra Gupta",
            position: "Entrepreneur",
            comment:
                "Exceptional PCB design services - precision, innovation, and reliability at their finest. Our projects' secret weapon!"),
      ],
    );

    
    }

    return ResponsiveLayout(
      mobile: mobile(), 
      tablet: tab(), 
      desktop: desktop());


   
  }
}
