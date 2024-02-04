import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

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
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "CAD Design",
                            style: TextStyle(
                                fontFamily: 'bold',
                                fontSize: 70,
                                color: Colors.white,
                                letterSpacing: 8),
                          ),
                          Text(
                            "PCB Design",
                            style: TextStyle(
                                fontFamily: 'bold',
                                fontSize: 70,
                                color: Colors.white,
                                letterSpacing: 8),
                          ),
                          Text(
                            "UI,Ux Design",
                            style: TextStyle(
                                fontFamily: 'bold',
                                fontSize: 70,
                                color: Colors.white,
                                letterSpacing: 8),
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
                                color: Color(0xffFF6006),
                              ),
                              const SizedBox(
                                width: 100,
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          OutlinedButton(
                            onPressed: () {},
                            style: OutlinedButton.styleFrom(
                                side: const BorderSide(
                                    color: Color(0xffFF6006), width: 2)),
                            child: const Padding(
                              padding: EdgeInsets.all(15),
                              child: Text(
                                "View all services",
                                style: TextStyle(
                                  fontFamily: "light",
                                  color: Color(0xff7A7A7A),
                                  fontSize: 22,
                                ),
                              ),
                            ),
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
                    child: Text(
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
              SizedBox(
                height: 20,
              ),
              Text(
                "CAD Design",
                style: TextStyle(
                    fontFamily: 'bold',
                    fontSize: 50,
                    color: Colors.white,
                    letterSpacing: 4),
              ),
              Text(
                "PCB Design",
                style: TextStyle(
                    fontFamily: 'bold',
                    fontSize: 40,
                    color: Colors.white,
                    letterSpacing: 4),
              ),
              Text(
                "UI,Ux Design",
                style: TextStyle(
                    fontFamily: 'bold',
                    fontSize: 40,
                    color: Colors.white,
                    letterSpacing: 4),
              ),
              SizedBox(
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
