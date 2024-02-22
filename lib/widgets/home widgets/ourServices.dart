import 'package:flutter/material.dart';
import 'package:mlvolt_new_website/models/currentPage.dart';
import 'package:mlvolt_new_website/pages/servicesPage.dart';
import 'package:mlvolt_new_website/widgets/common%20widgets/customButton.dart';
import 'package:mlvolt_new_website/widgets/common%20widgets/responsiveLayout.dart';
import 'package:provider/provider.dart';
import 'package:stylish_text/stylish_text.dart';

import '../common widgets/customText.dart';

class HomeServices extends StatelessWidget {
  const HomeServices({super.key});

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    CurrentPage provider = Provider.of<CurrentPage>(context);

    Widget desktop() {
      return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                const SizedBox(
                  width: 400,
                  child: Text(
                    "Our Services",
                    style: TextStyle(
                        fontFamily: 'bold', fontSize: 50, color: Colors.white),
                  ),
                ),
                Positioned(
                  left: 330,
                  bottom: 20,
                  child: Container(
                    width: 10,
                    height: 10,
                    color: const Color(0xffFF6006),
                  ),
                )
              ],
            ),
            const Text(
              "Elevate your brand with our design solutions, delivering \ndepth and resonance.",
              style: TextStyle(
                  fontFamily: 'thin', fontSize: 22, color: Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: "CAD Design",
                        normalFontColor: Colors.white,
                        howerFontColor: Color(0xffFF6006),
                        fontFamily: "bold",
                        fontSize: 80,
                      ),
                      CustomText(
                        text: "PCB Design",
                        normalFontColor: Colors.white,
                        howerFontColor: Color(0xffFF6006),
                        fontFamily: "bold",
                        fontSize: 80,
                      ),
                      CustomText(
                        text: "UI, UX Design",
                        normalFontColor: Colors.white,
                        howerFontColor: Color(0xffFF6006),
                        fontFamily: "bold",
                        fontSize: 80,
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const TypewriterText(
                            "Ready to dive \ndeeper?",
                            style: TextStyle(
                                fontFamily: 'regular',
                                fontSize: 40,
                                color: Colors.white),
                            duration: Duration(milliseconds: 150),
                          ),
                          const SizedBox(
                            width: 50,
                          ),
                          Container(
                            width: 5,
                            height: 100,
                            color: const Color(0xffFF6006),
                          ),
                          const SizedBox(
                            width: 100,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      CustomButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/services');
                        },
                        buttonText: "View All Services",
                        outlineColor: const Color(0xffFF6006),
                        textColor: Colors.white,
                        hoverTextColor: Colors.black,
                      )
                    ],
                  )
                ],
              ),
            )
          ]);
    }

    Widget tab() {
      return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(children: [
              SizedBox(
                width: deviceWidth,
                child: const Text(
                  "Our Services",
                  style: TextStyle(
                      fontFamily: 'bold', fontSize: 28, color: Colors.white),
                ),
              ),
              Positioned(
                left: 190,
                bottom: 10,
                child: Container(
                  width: 5,
                  height: 5,
                  color: const Color(0xffFF6006),
                ),
              ),
            ]),
            const Text(
              "Elevate your brand with our design solutions, delivering depth and resonance.",
              style: TextStyle(
                  fontFamily: 'thin', fontSize: 14, color: Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: "CAD Design",
                        normalFontColor: Colors.white,
                        howerFontColor: Color(0xffFF6006),
                        fontFamily: "bold",
                        fontSize: 50,
                      ),
                      CustomText(
                        text: "PCB Design",
                        normalFontColor: Colors.white,
                        howerFontColor: Color(0xffFF6006),
                        fontFamily: "bold",
                        fontSize: 50,
                      ),
                      CustomText(
                        text: "UI, UX Design",
                        normalFontColor: Colors.white,
                        howerFontColor: Color(0xffFF6006),
                        fontFamily: "bold",
                        fontSize: 50,
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const TypewriterText(
                            "Ready to dive \ndeeper?",
                            style: TextStyle(
                                fontFamily: 'regular',
                                fontSize: 28,
                                color: Colors.white),
                            duration: Duration(milliseconds: 150),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 5,
                            height: 30,
                            color: const Color(0xffFF6006),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      CustomButton(
                        onPressed: () {
                       Navigator.pushNamed(context, '/services');
                        },
                        buttonText: "View All Services",
                        outlineColor: Color(0xffFF6006),
                        textColor: Colors.white,
                        hoverTextColor: Colors.black,
                      )
                    ],
                  )
                ],
              ),
            )
          ]);
    }

    Widget mobile() {
      return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(children: [
              SizedBox(
                width: deviceWidth,
                child: const Text(
                  "Our Services",
                  style: TextStyle(
                      fontFamily: 'bold', fontSize: 28, color: Colors.white),
                ),
              ),
              Positioned(
                left: 190,
                bottom: 10,
                child: Container(
                  width: 5,
                  height: 5,
                  color: const Color(0xffFF6006),
                ),
              ),
            ]),
            const Text(
              "Elevate your brand with our design solutions, delivering depth and resonance.",
              style: TextStyle(
                  fontFamily: 'thin', fontSize: 14, color: Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: "CAD Design",
                        normalFontColor: Colors.white,
                        howerFontColor: Color(0xffFF6006),
                        fontFamily: "bold",
                        fontSize: 40,
                      ),
                      CustomText(
                        text: "PCB Design",
                        normalFontColor: Colors.white,
                        howerFontColor: Color(0xffFF6006),
                        fontFamily: "bold",
                        fontSize: 40,
                      ),
                      CustomText(
                        text: "UI, UX Design",
                        normalFontColor: Colors.white,
                        howerFontColor: Color(0xffFF6006),
                        fontFamily: "bold",
                        fontSize: 40,
                      ),
                    ],
                  ),
                  const SizedBox( height: 70,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [


                      const SizedBox(
                        width: 20,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                           TypewriterText(
                            "Ready to dive deeper?",
                            style: TextStyle(
                                fontFamily: 'regular',
                                fontSize: 22,
                                color: Colors.white),
                            duration: Duration(milliseconds: 150),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      CustomButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/services');
                        },
                        buttonText: "View All Services",
                        outlineColor: const Color(0xffFF6006),
                        textColor: Colors.white,
                        hoverTextColor: Colors.black,
                      )
                    ],
                  )
                ],
              ),
            )
          ]);
    }

    return ResponsiveLayout(
      mobile: mobile(),
      tablet: tab(),
      desktop: desktop(),
    );
  }
}
