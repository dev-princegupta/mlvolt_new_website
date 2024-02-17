import 'package:flutter/material.dart';
import 'package:mlvolt_new_website/pages/servicesPage.dart';
import 'package:mlvolt_new_website/widgets/general%20widgets/customButton.dart';

import '../general widgets/customText.dart';

class HomeServices extends StatelessWidget {
  const HomeServices({super.key});

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;

    return deviceWidth > 600
        ? Column(
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
                            fontFamily: 'bold',
                            fontSize: 50,
                            color: Colors.white),
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
                              const Text(
                                "Ready to dive \ndeeper?",
                                style: TextStyle(
                                    fontFamily: 'regular',
                                    fontSize: 40,
                                    color: Colors.white),
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
                              Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ServicesPage()),
                            );
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
              ])
        : Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  SizedBox(
                    width: deviceWidth - 50,
                    child: const Text(
                      "Our Services",
                      style: TextStyle(
                          fontFamily: 'bold',
                          fontSize: 30,
                          color: Colors.white),
                    ),
                  ),
                  Positioned(
                    left: 200,
                    bottom: 10,
                    child: Container(
                      width: 8,
                      height: 8,
                      color: const Color(0xffFF6006),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: deviceWidth,
                child: const Text(
                  "Elevate your brand with our design solutions, delivering \ndepth and resonance.",
                  style: TextStyle(
                      fontFamily: 'thin', fontSize: 14, color: Colors.white),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "CAD Design",
                style: TextStyle(
                    fontFamily: 'bold',
                    fontSize: 50,
                    color: Colors.amber,
                    letterSpacing: 4),
              ),
              const Text(
                "PCB Design",
                style: TextStyle(
                    fontFamily: 'bold',
                    fontSize: 50,
                    color: Colors.white,
                    letterSpacing: 4),
              ),
              const Text(
                "UI,Ux Design",
                style: TextStyle(
                    fontFamily: 'bold',
                    fontSize: 50,
                    color: Colors.white,
                    letterSpacing: 4),
              ),
              const SizedBox(
                height: 30,
              ),
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: Color(0xffFF6006), width: 2)),
                child: const Padding(
                  padding: EdgeInsets.all(8),
                  child: Text(
                    "View all services",
                    style: TextStyle(
                      fontFamily: "light",
                      color: Color(0xff7A7A7A),
                      fontSize: 16,
                    ),
                  ),
                ),
              )
            ],
          );
  }
}
