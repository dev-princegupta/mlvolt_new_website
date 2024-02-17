
import 'package:flutter/material.dart';
import 'package:mlvolt_new_website/widgets/home widgets/clientCard.dart';

class OurClients extends StatelessWidget {
  const OurClients({super.key});

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    return deviceWidth>600? Column(
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
            padding: const EdgeInsets.only(top:70, left: 27, right: 27),
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
                children: const[
                  ClientCard(
                    color: Colors.black,
                    clientName: "Amit Sinha",
                    serviceName: "CAD Design",
                    description: "Improving Healthcre delivery using better UX.",
                  ),
                  ClientCard(
                    color: Color(0xff2E2D2D),
                    clientName: "Amit Sinha",
                    serviceName: "CAD Design",
                    description: "Improving Healthcre delivery using better UX.",
                  ),
                  ClientCard(
                    color: Colors.black,
                    clientName: "Amit Sinha",
                    serviceName: "CAD Design",
                    description: "Improving Healthcre delivery using better UX.",
                  ),
                  ClientCard(
                    color: Colors.black,
                    clientName: "Amit Sinha",
                    serviceName: "CAD Design",
                    description: "Improving Healthcre delivery using better UX.",
                  ),
                  ClientCard(
                    color: Color(0xff2E2D2D),
                    clientName: "Amit Sinha",
                    serviceName: "CAD Design",
                    description: "Improving Healthcre delivery using better UX.",
                  ),
                  ClientCard(
                    color: Colors.black,
                    clientName: "Amit Sinha",
                    serviceName: "CAD Design",
                    description: "Improving Healthcre delivery using better UX.",
                  ),
                  
                ],
              ),
            ),
          )
        ]):Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [SizedBox(
                  width: deviceWidth,
                  child: const Text(
                    "Our clients",
                    style: TextStyle(
                        fontFamily: 'bold', fontSize: 40, color: Colors.white),
                  ),
                ),
                Positioned(
                left: 230,
                bottom: 15,
                child: Container(
                  width: 10,
                  height: 10,
                  color: const Color(0xffFF6006),
                ),
              ),
              
                
                ]
            ),
            RichText(
            text: const TextSpan(
                text: "We've transformed ",
                style: TextStyle(
                    fontFamily: 'thin', fontSize: 16, color: Colors.white),
                children: [
                  TextSpan(
                      text: "200+ ",
                      style: TextStyle(
                          fontFamily: 'medium',
                          fontSize: 16,
                          color: Colors.white)),
                  TextSpan(
                      text:
                          "visionary ideas into the vibrant realities of \nambitious entrepreneurs.",
                      style: TextStyle(
                          fontFamily: 'thin',
                          fontSize: 16,
                          color: Colors.white)),
                ]),
          ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            width: deviceWidth,
            height: 300,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                ClientCard(
                    color: Colors.black,
                    clientName: "Amit Sinha",
                    serviceName: "CAD Design",
                    description: "Improving Healthcre delivery using better UX.",
                  ),
                  ClientCard(
                    color: Color(0xff2E2D2D),
                    clientName: "Amit Sinha",
                    serviceName: "CAD Design",
                    description: "Improving Healthcre delivery using better UX.",
                  ),
                  ClientCard(
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
}
     