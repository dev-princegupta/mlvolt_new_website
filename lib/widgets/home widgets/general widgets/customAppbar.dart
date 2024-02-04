import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../../aboutPage.dart';
import '../../../contactPage.dart';
import '../../../homePage.dart';
import '../../../productsPage.dart';
import '../../../servicesPage.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    return  deviceWidth > 600
            ? AppBar(
                backgroundColor: Color(0xFF000000),
                elevation: 10,
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePage()),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 48),
                        child: const Text(
                          "MLVOLT",
                          style: TextStyle(
                              fontFamily: "bold",
                              fontSize: 28,
                              color: Color(0xffFF6006)),
                        ),
                      ),
                    ),
                  ],
                ),
                actions: [
                  Padding(
                    padding: const EdgeInsets.only(right: 63),
                    child: SizedBox(
                      width: 600,                    child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const AboutPage()),
                                  );
                                },
                                child: const Text(
                                  "ABOUT",
                                  style: TextStyle(
                                      fontFamily: "medium",
                                      fontSize: 20,
                                      color: Colors.white),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ProductsPage()),
                                  );
                                },
                                child: const Text(
                                  "PROJECTS",
                                  style: TextStyle(
                                      fontFamily: "medium",
                                      fontSize: 20,
                                      color: Colors.white),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const ServicesPage()),
                                  );
                                },
                                child: const Text(
                                  "SERVICES",
                                  style: TextStyle(
                                      fontFamily: "medium",
                                      fontSize: 20,
                                      color: Colors.white),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const ContactPage()),
                                  );
                                },
                                child: const Text(
                                  "CONTACT",
                                  style: TextStyle(
                                      fontFamily: "medium",
                                      fontSize: 20,
                                      color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                    ),
                  )
                ]
              )
            : AppBar(
                backgroundColor: Color(0xFF000000),
                elevation: 10,
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text(
                      "MLVOLT",
                      style: TextStyle(
                          fontFamily: "bold",
                          fontSize: 28,
                          color: Color(0xffFF6006)),
                    ),
                  ],
                ),
              );
  }
}