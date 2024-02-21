import 'package:flutter/material.dart';
import 'package:mlvolt_new_website/widgets/common%20widgets/responsiveLayout.dart';

class WhatWeDo extends StatelessWidget {
  const WhatWeDo({super.key});

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;

    Widget mobile(){
      return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "What We Do?",
          style: TextStyle(
            color: Color(0xff868686),
            fontSize: 20,
            fontFamily: "medium",
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        SizedBox(
          width: deviceWidth-20,
          
          child: RichText(text: const TextSpan(
            children: [
              TextSpan(
                text: "Our services meet your business or startup needs with a",
                style: TextStyle(
                  fontFamily: "regular",
                  color: Colors.white,
                  fontSize: 28
                )
              ),
               TextSpan(
                text: " performance-driven ",
                style: TextStyle(
                  fontFamily: "regular",
                  color: Color(0xffFF6006),
                  fontSize: 28
                )
              ),
                TextSpan(
                text: " approach.",
                style: TextStyle(
                  fontFamily: "regular",
                  color: Colors.white,
                  fontSize: 28
                )
              ),
              
            ]
          )),
        ),
      ],
    );
    }

    Widget desktop(){
      return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "What We Do?",
          style: TextStyle(
            color: Color(0xff868686),
            fontSize: 46,
            fontFamily: "medium",
          ),
        ),
        const SizedBox(
          width: 100,
        ),
        Flexible(
          child: RichText(text: const TextSpan(
            children: [
              TextSpan(
                text: "Our services meet your business or startup needs with a",
                style: TextStyle(
                  fontFamily: "regular",
                  color: Colors.white,
                  fontSize: 70
                )
              ),
               TextSpan(
                text: " performance-driven ",
                style: TextStyle(
                  fontFamily: "regular",
                  color: Color(0xffFF6006),
                  fontSize: 70
                )
              ),
                TextSpan(
                text: "approach.",
                style: TextStyle(
                  fontFamily: "regular",
                  color: Colors.white,
                  fontSize: 70
                )
              ),
           
            ]
          )),
        ),
        
      ],
    );
    }

    Widget tab(){
      return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "What We Do?",
          style: TextStyle(
            color: Color(0xff868686),
            fontSize: 32,
            fontFamily: "medium",
          ),
        ),
        const SizedBox(
          width: 100,
        ),
        Flexible(
          child: RichText(text: const TextSpan(
            children: [
              TextSpan(
                text: "Our services meet your business or startup needs with a",
                style: TextStyle(
                  fontFamily: "regular",
                  color: Colors.white,
                  fontSize: 24
                )
              ),
               TextSpan(
                text: " performance-driven ",
                style: TextStyle(
                  fontFamily: "regular",
                  color: Color(0xffFF6006),
                  fontSize: 24
                )
              ),
                TextSpan(
                text: "approach.",
                style: TextStyle(
                  fontFamily: "regular",
                  color: Colors.white,
                  fontSize: 24
                )
              ),
            ]
          )),
        ),
        
      ],
    );
    }

    return ResponsiveLayout(
      mobile: mobile(), 
      tablet: tab(), 
      desktop: desktop());
  }
}