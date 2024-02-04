import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class WhoWeAre extends StatelessWidget {
  const WhoWeAre({super.key});

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;
    return deviceWidth>600? Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Who We are?",
          style: TextStyle(
            color: Color(0xff868686),
            fontSize: 46,
            fontFamily: "medium",
          ),
        ),
        SizedBox(
          width: 100,
        ),
        Flexible(
          child: RichText(text: const TextSpan(
            children: [
              TextSpan(
                text: "A Team of Designers and Engineers who are converting",
                style: TextStyle(
                  fontFamily: "regular",
                  color: Colors.white,
                  fontSize: 70
                )
              ),
               TextSpan(
                text: " Ideas",
                style: TextStyle(
                  fontFamily: "regular",
                  color: Color(0xffFF6006),
                  fontSize: 70
                )
              ),
                TextSpan(
                text: " into",
                style: TextStyle(
                  fontFamily: "regular",
                  color: Colors.white,
                  fontSize: 70
                )
              ),
                TextSpan(
                text: " Reality",
                style: TextStyle(
                  fontFamily: "regular",
                  color: Color(0xffFF6006),
                  fontSize: 70
                )
              ),
            ]
          )),
        ),
        
      ],
    ):Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Who We are?",
          style: TextStyle(
            color: Color(0xff868686),
            fontSize: 20,
            fontFamily: "medium",
          ),
        ),
        SizedBox(
          height: 30,
        ),
        SizedBox(
          width: deviceWidth-20,
          
          child: RichText(text: const TextSpan(
            children: [
              TextSpan(
                text: "A Team of Designers and Engineers who are converting",
                style: TextStyle(
                  fontFamily: "regular",
                  color: Colors.white,
                  fontSize: 28
                )
              ),
               TextSpan(
                text: " Ideas",
                style: TextStyle(
                  fontFamily: "regular",
                  color: Color(0xffFF6006),
                  fontSize: 28
                )
              ),
                TextSpan(
                text: " into",
                style: TextStyle(
                  fontFamily: "regular",
                  color: Colors.white,
                  fontSize: 28
                )
              ),
                TextSpan(
                text: " Reality",
                style: TextStyle(
                  fontFamily: "regular",
                  color: Color(0xffFF6006),
                  fontSize: 28
                )
              ),
            ]
          )),
        ),
      ],
    );
  }
}
