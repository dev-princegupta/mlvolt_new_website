import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:mlvolt_new_website/widgets/common%20widgets/responsiveLayout.dart';
import 'package:mlvolt_new_website/widgets/home widgets/clientCard.dart';

class OurClients extends StatelessWidget {
  const OurClients({super.key});

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;

    Widget mobile(){
      return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(children: [
            SizedBox(
              width: deviceWidth,
              child: const Text(
                "Our clients",
                style: TextStyle(
                    fontFamily: 'bold', fontSize: 28, color: Colors.white),
              ),
            ),
            Positioned(
              left: 167,
              bottom: 10,
              child: Container(
                width: 5,
                height: 5,
                color: const Color(0xffFF6006),
              ),
            ),
          ]),
          RichText(
            text: const TextSpan(
                text: "We've transformed ",
                style: TextStyle(
                    fontFamily: 'thin', fontSize: 14, color: Colors.white),
                children: [
                  TextSpan(
                      text: "200+ ",
                      style: TextStyle(
                          fontFamily: 'medium',
                          fontSize: 14,
                          color: Colors.white)),
                  TextSpan(
                      text:
                          "visionary ideas into the vibrant realities of ambitious entrepreneurs.",
                      style: TextStyle(
                          fontFamily: 'thin',
                          fontSize: 14,
                          color: Colors.white)),
                ]),
          ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            width: deviceWidth,
            height: 600,
            child: GridView(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
              ),
              scrollDirection: Axis.vertical,
              children:  [
                FlipCard(
                      front: const ClientCard(
                        color: Colors.black,
                        clientName: "Amit Sinha",
                        serviceName: "CAD Design",
                        description:
                            "Improving Healthcre delivery using better UX.",
                      ),
                      back: Container(
                        color: Colors.purple,
                        width: 280,
                        height: 300,
                        child: Image.asset(
                          'assets/images/bottel.png',
                        ),
                      ),
                    ),
                const ClientCard(
                  color: Color(0xff2E2D2D),
                  clientName: "Amit Sinha",
                  serviceName: "CAD Design",
                  description: "Improving Healthcre delivery using better UX.",
                ),
                const ClientCard(
                  color: Colors.black,
                  clientName: "Amit Sinha",
                  serviceName: "CAD Design",
                  description: "Improving Healthcre delivery using better UX.",
                ),
                const ClientCard(
                  color: Colors.black,
                  clientName: "Amit Sinha",
                  serviceName: "CAD Design",
                  description: "Improving Healthcre delivery using better UX.",
                ),
                const ClientCard(
                  color: Colors.black,
                  clientName: "Amit Sinha",
                  serviceName: "CAD Design",
                  description: "Improving Healthcre delivery using better UX.",
                ),
                const ClientCard(
                  color: Colors.black,
                  clientName: "Amit Sinha",
                  serviceName: "CAD Design",
                  description: "Improving Healthcre delivery using better UX.",
                ),
              ],
            ),
          )
        ],
      );
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
                "Our clients",
                style: TextStyle(
                    fontFamily: 'bold', fontSize: 28, color: Colors.white),
              ),
            ),
            Positioned(
              left: 167,
              bottom: 10,
              child: Container(
                width: 5,
                height: 5,
                color: const Color(0xffFF6006),
              ),
            ),
          ]),
          RichText(
            text: const TextSpan(
                text: "We've transformed ",
                style: TextStyle(
                    fontFamily: 'thin', fontSize: 14, color: Colors.white),
                children: [
                  TextSpan(
                      text: "200+ ",
                      style: TextStyle(
                          fontFamily: 'medium',
                          fontSize: 14,
                          color: Colors.white)),
                  TextSpan(
                      text:
                          "visionary ideas into the vibrant realities of ambitious entrepreneurs.",
                      style: TextStyle(
                          fontFamily: 'thin',
                          fontSize: 14,
                          color: Colors.white)),
                ]),
          ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            width: deviceWidth,
            height: 450,
            child: GridView(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
              ),
              scrollDirection: Axis.vertical,
              children:  [
                FlipCard(
                      front: const ClientCard(
                        color: Colors.black,
                        clientName: "Amit Sinha",
                        serviceName: "CAD Design",
                        description:
                            "Improving Healthcre delivery using better UX.",
                      ),
                      back: Container(
                        color: Colors.purple,
                        width: 280,
                        height: 300,
                        child: Image.asset(
                          'assets/images/bottel.png',
                        ),
                      ),
                    ),
                const ClientCard(
                  color: Color(0xff2E2D2D),
                  clientName: "Amit Sinha",
                  serviceName: "CAD Design",
                  description: "Improving Healthcre delivery using better UX.",
                ),
                const ClientCard(
                  color: Colors.black,
                  clientName: "Amit Sinha",
                  serviceName: "CAD Design",
                  description: "Improving Healthcre delivery using better UX.",
                ),
                const ClientCard(
                  color: Colors.black,
                  clientName: "Amit Sinha",
                  serviceName: "CAD Design",
                  description: "Improving Healthcre delivery using better UX.",
                ),
                const ClientCard(
                  color: Colors.black,
                  clientName: "Amit Sinha",
                  serviceName: "CAD Design",
                  description: "Improving Healthcre delivery using better UX.",
                ),
                const ClientCard(
                  color: Colors.black,
                  clientName: "Amit Sinha",
                  serviceName: "CAD Design",
                  description: "Improving Healthcre delivery using better UX.",
                ),
              ],
            ),
          )
        ],
      );
    }

    Widget desktop() {
      return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                const SizedBox(
                  width: 300,
                  child: Text(
                    "Our clients",
                    style: TextStyle(
                        fontFamily: 'bold', fontSize: 50, color: Colors.white),
                  ),
                ),
                Positioned(
                  left: 285,
                  bottom: 20,
                  child: Container(
                    width: 10,
                    height: 10,
                    color: const Color(0xffFF6006),
                  ),
                )
              ],
            ),
            RichText(
              text: const TextSpan(
                  text: "We've transformed ",
                  style: TextStyle(
                      fontFamily: 'thin', fontSize: 22, color: Colors.white),
                  children: [
                    TextSpan(
                        text: "200+ ",
                        style: TextStyle(
                            fontFamily: 'medium',
                            fontSize: 22,
                            color: Colors.white)),
                    TextSpan(
                        text:
                            "visionary ideas into the vibrant realities of \nambitious entrepreneurs.",
                        style: TextStyle(
                            fontFamily: 'thin',
                            fontSize: 22,
                            color: Colors.white)),
                  ]),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 70, left: 27, right: 27),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 800,
                child: GridView(
                  scrollDirection: Axis.vertical,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 76,
                      mainAxisSpacing: 76,
                      childAspectRatio: 1),
                  children: [
                    FlipCard(
                      front: const ClientCard(
                        color: Colors.black,
                        clientName: "Amit Sinha",
                        serviceName: "CAD Design",
                        description:
                            "Improving Healthcre delivery using better UX.",
                      ),
                      back: Container(
                        color: Colors.purple,
                        width: 280,
                        height: 300,
                        child: Image.asset(
                          'assets/images/bottel.png',
                        ),
                      ),
                    ),
                    const ClientCard(
                      color: Color(0xff2E2D2D),
                      clientName: "Amit Sinha",
                      serviceName: "CAD Design",
                      description:
                          "Improving Healthcre delivery using better UX.",
                    ),
                    const ClientCard(
                      color: Colors.black,
                      clientName: "Amit Sinha",
                      serviceName: "CAD Design",
                      description:
                          "Improving Healthcre delivery using better UX.",
                    ),
                    const ClientCard(
                      color: Colors.black,
                      clientName: "Amit Sinha",
                      serviceName: "CAD Design",
                      description:
                          "Improving Healthcre delivery using better UX.",
                    ),
                    const ClientCard(
                      color: Color(0xff2E2D2D),
                      clientName: "Amit Sinha",
                      serviceName: "CAD Design",
                      description:
                          "Improving Healthcre delivery using better UX.",
                    ),
                    const ClientCard(
                      color: Colors.black,
                      clientName: "Amit Sinha",
                      serviceName: "CAD Design",
                      description:
                          "Improving Healthcre delivery using better UX.",
                    ),
                  ],
                ),
              ),
            )
          ]);
    }

    return ResponsiveLayout(
        mobile: mobile(), tablet: tab(), desktop: desktop());
  }
}
