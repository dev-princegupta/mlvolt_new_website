import 'package:flutter/material.dart';
import 'package:mlvolt_new_website/widgets/common%20widgets/responsiveLayout.dart';

class WhoWeAre extends StatelessWidget {
  const WhoWeAre({super.key});



  @override
  Widget build(BuildContext context) {

    double deviceWidth = MediaQuery.of(context).size.width;

    Widget mobile(){
      return Column(
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
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: deviceWidth - 20,
                child: RichText(
                    text: const TextSpan(children: [
                  TextSpan(
                      text:
                          "A Team of Designers and Engineers who are converting",
                      style: TextStyle(
                          fontFamily: "regular",
                          color: Colors.white,
                          fontSize: 28)),
                  TextSpan(
                      text: " Ideas",
                      style: TextStyle(
                          fontFamily: "regular",
                          color: Color(0xffFF6006),
                          fontSize: 28)),
                  TextSpan(
                      text: " into",
                      style: TextStyle(
                          fontFamily: "regular",
                          color: Colors.white,
                          fontSize: 28)),
                  TextSpan(
                      text: " Reality",
                      style: TextStyle(
                          fontFamily: "regular",
                          color: Color(0xffFF6006),
                          fontSize: 28)),
                ])),
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
                "Who We are?",
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
          );
    }

    Widget tab(){
      return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Who We are?",
                style: TextStyle(
                  color: Color(0xff868686),
                  fontSize: 32,
                  fontFamily: "medium",
                ),
              ),
              const SizedBox(
                width: 70,
              ),     
              Flexible(
                child: RichText(text: const TextSpan(
                  children: [
                   

                    TextSpan(
                      text: "A Team of Designers and Engineers who are converting",
                      style: TextStyle(
                        fontFamily: "regular",
                        color: Colors.white,
                        fontSize: 24
                      )
                    ),
                     TextSpan(
                      text: " Ideas",
                      style: TextStyle(
                        fontFamily: "regular",
                        color: Color(0xffFF6006),
                        fontSize: 24
                      )
                    ),
                      TextSpan(
                      text: " into",
                      style: TextStyle(
                        fontFamily: "regular",
                        color: Colors.white,
                        fontSize: 24
                      )
                    ),
                      TextSpan(
                      text: " Reality",
                      style: TextStyle(
                        fontFamily: "regular",
                        color: Color(0xffFF6006),
                        fontSize: 24
                      )
                    ),
                  ]
                )),
              ),
            ],
          );
    }

    // double deviceWidth = MediaQuery.of(context).size.width;
    //   String device(){
    //   String dvc;
    //   if(deviceWidth<=600){
    //     dvc = "mobile";
    //   }else if(deviceWidth>600&&deviceWidth<=1200){
    //     dvc = "tab";
    //   }else{
    //     dvc = "desktop";
    //   }
    //   return dvc;
    // }
    return ResponsiveLayout(
      mobile: mobile(), 
      tablet: tab(), 
      desktop: desktop());
  }
}

