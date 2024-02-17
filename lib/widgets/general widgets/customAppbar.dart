import 'package:flutter/material.dart';
import 'package:mlvolt_new_website/pages/blogPage.dart';
import 'package:mlvolt_new_website/widgets/general%20widgets/customText.dart';

import '../../pages/aboutPage.dart';
import '../../pages/contactPage.dart';
import '../../pages/homePage.dart';
import '../../pages/productsPage.dart';
import '../../pages/servicesPage.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    return deviceWidth > 600
        ? AppBar(
            backgroundColor: const Color(0xFF000000),
            elevation: 10,
            title: Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Row(
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
                    child: const Padding(
                      padding: EdgeInsets.only(left: 48),
                      child: Text(
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
            ),
            actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 63, top: 15),
                  child: SizedBox(
                    width: 600,
                    child: Row(
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
                          child: const CustomText(text: "ABOUT", normalFontColor: Colors.white, howerFontColor: Color(0xffFF6006), fontFamily: "medium", fontSize: 20)
                       
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ProductsPage()),
                            );
                          },
                          child: const CustomText(text: "PROJECTS", normalFontColor: Colors.white, howerFontColor: Color(0xffFF6006), fontFamily: "medium", fontSize: 20)
                       
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ServicesPage()),
                            );
                          },
                          child: const CustomText(text: "SERVICES", normalFontColor: Colors.white, howerFontColor: Color(0xffFF6006), fontFamily: "medium", fontSize: 20)
                       
                        ),
                          InkWell(
                          onTap: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const BlogPage()),
                            );
                          },
                          child: const CustomText(text: "BLOGS", normalFontColor: Colors.white, howerFontColor: Color(0xffFF6006), fontFamily: "medium", fontSize: 20)
                       
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ContactPage()),
                            );
                          },
                          child: const CustomText(text: "CONTACT", normalFontColor: Colors.white, howerFontColor: Color(0xffFF6006), fontFamily: "medium", fontSize: 20)
                       
                        ),
                      
                      ],
                    ),
                  ),
                )
              ])
        : AppBar(
            backgroundColor: const Color(0xFF000000),
            elevation: 10,
            title: const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
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

class HoverUnderlineText extends StatefulWidget {
  final String text;

  HoverUnderlineText({
    required this.text,
  });

  @override
  _HoverUnderlineTextState createState() => _HoverUnderlineTextState();
}

class _HoverUnderlineTextState extends State<HoverUnderlineText> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => _handleHover(true),
      onExit: (_) => _handleHover(false),
      child: Text(
        widget.text,
        style: TextStyle(
          fontFamily: "medium",
          fontSize: 20,
          color: _isHovered?Color(0xffFF6006): Colors.white,
     
        ),
      ),
    );
  }

  void _handleHover(bool isHovered) {
    setState(() {
      _isHovered = isHovered;
    });
  }
}
