import 'package:flutter/material.dart';
import 'package:mlvolt_new_website/widgets/contact%20widgets/contactForm.dart';
import 'package:mlvolt_new_website/widgets/common%20widgets/footer.dart';

import '../widgets/common widgets/customAppbar.dart';
import '../widgets/common widgets/customDrawer.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;

    String device() {
      String dvc;
      if (deviceWidth <= 600) {
        dvc = "mobile";
      } else if (deviceWidth > 600 && deviceWidth <= 1200) {
        dvc = "tab";
      } else {
        dvc = "desktop";
      }
      return dvc;
    }

    return Scaffold(
      backgroundColor: const Color(0xff151515),
          appBar: const PreferredSize(
            preferredSize: Size.fromHeight(70),
            child: CustomAppBar(),
          ),
          drawer: deviceWidth < 1200 ? const CustomDrawer() : null,
          body:  SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SizedBox(
              height: deviceWidth > 600 ? 1300 : 1100,
              child: deviceWidth > 600
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                          Padding(
                              padding: EdgeInsets.only(
                                  top: 20,
                                  left: deviceWidth > 600 ? 63 : 10,
                                  right: deviceWidth > 600 ? 63 : 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Hi There,",
                                        style: TextStyle(
                                            fontSize:
                                                device() == 'desktop' ? 58 : 60,
                                            color: const Color(0xff7A7A7A),
                                            fontFamily: "regular"),
                                      ),
                                      SizedBox(
                                        height: 50,
                                      ),
                                      SizedBox(
                                        width: device() == 'desktop'
                                            ? 500
                                            : deviceWidth * 0.37,
                                        child: RichText(
                                            text: TextSpan(children: [
                                          TextSpan(
                                              text: "We’re Converting ",
                                              style: TextStyle(
                                                fontFamily: "semibold",
                                                color: Colors.white,
                                                fontSize: device() == 'desktop'
                                                    ? 58
                                                    : 32,
                                              )),
                                          TextSpan(
                                              text: " Ideas ",
                                              style: TextStyle(
                                                fontFamily: "bold",
                                                color: Color(0xff7A7A7A),
                                                fontSize: device() == 'desktop'
                                                    ? 58
                                                    : 32,
                                              )),
                                          TextSpan(
                                            text: "Into ",
                                            style: TextStyle(
                                              fontFamily: "semibold",
                                              color: Colors.white,
                                              fontSize:
                                                  device() == 'desktop' ? 58 : 32,
                                            ),
                                          ),
                                          TextSpan(
                                            text: "Reality.",
                                            style: TextStyle(
                                              fontFamily: "semibold",
                                              color: Color(0xffFF6006),
                                              fontSize:
                                                  device() == 'desktop' ? 58 : 32,
                                            ),
                                          ),
                                        ])),
                                      ),
                                      const SizedBox(
                                        height: 80,
                                      ),
                                      Text(
                                        "Are you",
                                        style: TextStyle(
                                            fontSize:
                                                device() == 'desktop' ? 35 : 31,
                                            color: Colors.white,
                                            fontFamily: "bold"),
                                      ),
                                      // const TypewriterText(
                                      //   "In 2023 we have worked with 100+ entrepreneurs.",
                                      //   duration: Duration(milliseconds: 100),
                                      //   style: TextStyle(
                                      //       fontSize: 20,
                                      //       color: Color(0xffC2BFBF),
                                      //       fontFamily: "thin"),
                                      // ),
                                      SizedBox(
                                        width: device() == 'desktop'
                                            ? 500
                                            : deviceWidth * 0.37,
                                        child: Text(
                                          "Ready to transform your ideas into reality? Connect with us today, and let's bring your product prototype to life. We're here to guide you through every step of the process.",
                                          style: TextStyle(
                                              fontSize:
                                                  device() == 'desktop' ? 20 : 16,
                                              color: Color(0xffC2BFBF),
                                              fontFamily: "thin"),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: device() == 'desktop' ? 450 : 0,
                                    child: Image.asset(
                                        "assets/images/verticalLine.png"),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "What’s Your Idea?",
                                        style: TextStyle(
                                            fontSize:
                                                device() == 'desktop' ? 40 : 32,
                                            color: Colors.white,
                                            fontFamily: "regular"),
                                      ),
                                      SizedBox(
                                        height: 50,
                                      ),
                                      CustomContactForm(),
                                    ],
                                  ),
                                ],
                              )),
                          const SizedBox(
                            height: 100,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: deviceWidth > 600 ? 63 : 10,
                                right: deviceWidth > 600 ? 63 : 10),
                            child: const Footer(),
                          )
                        ])
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: deviceWidth,
                          child: const Padding(
                            padding: EdgeInsets.all(10),
                            child: Center(
                              child: Text(
                                "Hi There,",
                                style: TextStyle(
                                    fontSize: 40,
                                    color: Color(0xff7A7A7A),
                                    fontFamily: "semibold"),
                              ),
                            ),
                          ),
                        ),
                        const Text(
                          "What's Your Idea?",
                          style: TextStyle(
                              fontSize: 32,
                              color: Colors.white,
                              fontFamily: "regular"),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Padding(
                          padding: EdgeInsets.all(10),
                          child: CustomContactForm(),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        const Footer()
                      ],
                    ))),
    );
  }
}
