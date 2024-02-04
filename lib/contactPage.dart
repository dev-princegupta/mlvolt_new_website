import 'package:flutter/material.dart';
import 'package:mlvolt_new_website/widgets/contactForm.dart';
import 'package:mlvolt_new_website/widgets/home%20widgets/general%20widgets/footer.dart';

import 'widgets/home widgets/general widgets/customAppbar.dart';
import 'widgets/home widgets/general widgets/drawerItems.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xff151515),
      appBar: const PreferredSize(
          child: CustomAppBar(), preferredSize: Size.fromHeight(70)),
      drawer: deviceWidth < 600 ? const CustomDrawer() : null,
      body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SizedBox(
              height: deviceWidth > 600 ? 1300 : 1250,
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        "Namaste",
                                        style: TextStyle(
                                            fontSize: 96,
                                            color: Colors.white,
                                            fontFamily: "bold"),
                                      ),
                                      Text(
                                        "200+ clients.",
                                        style: TextStyle(
                                            fontSize: 35,
                                            color: Colors.white,
                                            fontFamily: "bold"),
                                      ),
                                      Text(
                                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Color(0xffC2BFBF),
                                            fontFamily: "thin"),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 450,
                                    child:
                                        Image.asset("images/verticalLine.png"),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        "What’s Your Idea?",
                                        style: TextStyle(
                                            fontSize: 40,
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
                                    fontFamily: "regular"),
                                                     ),
                             ),
                           ),
                         ),
                         SizedBox(
                          width: deviceWidth,
                           child: const Padding(
                             padding: EdgeInsets.all(10),
                             child: Text(
                              "Share Your Idea With Us, We are helping entrepreneurs to convert their Ideas into Reality.",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontFamily: "regular"),
                                                   ),
                           ),
                         ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Book A Quick Meet Now",
                          style: TextStyle(
                              fontSize: 36,
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
