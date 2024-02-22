import 'package:flutter/material.dart';
import 'package:mlvolt_new_website/widgets/common%20widgets/customText.dart';
import 'package:mlvolt_new_website/widgets/common%20widgets/responsiveLayout.dart';

class CustomAppBar extends StatelessWidget {
   const CustomAppBar({super.key});



  @override
  Widget build(BuildContext context) {
//    double deviceWidth = MediaQuery.of(context).size.width;

    Widget desktopAppbar() {
      return AppBar(
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
                    Navigator.pushNamed(context, '/home');
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
                          Navigator.pushNamed(context, '/about');
                        },
                        child: const CustomText(
                            text: "ABOUT",
                            normalFontColor: Colors.white,
                            howerFontColor: Color(0xffFF6006),
                            fontFamily: "medium",
                            fontSize: 20)),
                    InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/projects');
                        },
                        child: const CustomText(
                            text: "PROJECTS",
                            normalFontColor: Colors.white,
                            howerFontColor: Color(0xffFF6006),
                            fontFamily: "medium",
                            fontSize: 20)),
                    InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/services');
                        },
                        child: const CustomText(
                            text: "SERVICES",
                            normalFontColor: Colors.white,
                            howerFontColor: Color(0xffFF6006),
                            fontFamily: "medium",
                            fontSize: 20)),
                    InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/blogs');
                        },
                        child: const CustomText(
                            text: "BLOGS",
                            normalFontColor: Colors.white,
                            howerFontColor: Color(0xffFF6006),
                            fontFamily: "medium",
                            fontSize: 20)),
                    InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/contact');
                        },
                        child: const CustomText(
                            text: "CONTACT",
                            normalFontColor: Colors.white,
                            howerFontColor: Color(0xffFF6006),
                            fontFamily: "medium",
                            fontSize: 20)),
                  ],
                ),
              ),
            )
          ]);
    }

    Widget mobileAppbar() {
      return AppBar(
        backgroundColor: const Color(0xFF000000),
        elevation: 10,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "MLVOLT",
              style: TextStyle(
                  fontFamily: "bold", fontSize: 22, color: Color(0xffFF6006)),
            ),
          ],
        ),
      );
    }

    Widget tabAppbar(){
      return AppBar(
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
                    Navigator.pushNamed(context, '/home');
                  },
                  child: const Text(
                    "MLVOLT",
                    style: TextStyle(
                        fontFamily: "bold",
                        fontSize: 28,
                        color: Color(0xffFF6006)),
                  ),
                ),
              ],
            ),
          ),
      );
    }

    return ResponsiveLayout(
      mobile: mobileAppbar(),
      tablet: tabAppbar(),
      desktop: desktopAppbar(),
    );
  }
}
