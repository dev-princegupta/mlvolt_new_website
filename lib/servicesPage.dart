import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:mlvolt_new_website/widgets/home%20widgets/general%20widgets/footer.dart';
import 'package:mlvolt_new_website/widgets/home%20widgets/whatWeDo.dart';
import 'package:mlvolt_new_website/widgets/servicesCard.dart';

import 'widgets/home widgets/general widgets/customAppbar.dart';
import 'widgets/home widgets/general widgets/drawerItems.dart';

class ServicesPage extends StatelessWidget {
  const ServicesPage({super.key});

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
            backgroundColor: const Color(0xff151515),
               appBar: const PreferredSize(
          child: CustomAppBar(), preferredSize: Size.fromHeight(70)),
      drawer: deviceWidth < 600 ? const CustomDrawer() : null,

      body: SingleChildScrollView(
          child: SizedBox(
              height: deviceWidth>600?4300:1900,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(
                            top: 30,
                            left: deviceWidth > 600 ? 63 : 10,
                            right: deviceWidth > 600 ? 63 : 10),
                        child: const WhatWeDo()),
                    Padding(
                      padding: EdgeInsets.only(left: deviceWidth>600? 72: 10, top: deviceWidth>600? 144:60),
                      child: SizedBox(
                        height: 10,
                        child: Image.asset("images/aboutLine.png"),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: deviceWidth>600? 68:10, top:deviceWidth>600? 20:10),
                      child: Text(
                        "Want to know exactly what we are providing?",
                        style: TextStyle(
                            fontSize: deviceWidth>600? 20:12,
                            color: Color(0xff868686),
                            fontFamily: "medium"),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: deviceWidth>600?63:10, right: deviceWidth>600?63:10,top: deviceWidth>600? 100:50),
                      child: ServicesCard(
                        title: "CAD Design",
                        body:
                            "We turn your ideas into cool, tangible stuff with 3D design. Let's bring your concepts to life!",
                        align: "right",
                        imageAd: "images/caddesignimg.png",
                      ),
                    ),
                     Padding(
                      padding: EdgeInsets.only(left: deviceWidth>600?63:10, right: deviceWidth>600?63:10,top: deviceWidth>600? 100:50),
                      child: ServicesCard(
                        title: "PCB Design",
                        body:
                            "We turn your ideas into cool, tangible stuff with 3D design. Let's bring your concepts to life!",
                        align: "left",
                        imageAd: "images/pcbdesignimg.png",
                      ),
                    ),
                        Padding(
                      padding: EdgeInsets.only(left: deviceWidth>600?63:10, right: deviceWidth>600?63:10,top: deviceWidth>600? 100:50),
                      child: ServicesCard(
                        title: "Prototyping",
                        body:
                            "We turn your ideas into cool, tangible stuff with 3D design. Let's bring your concepts to life!",
                        align: "right",
                        imageAd: "images/caddesignimg.png",
                      ),
                    ),
    
                    Padding(
                      padding: EdgeInsets.only(left: deviceWidth>600?63:10, right: deviceWidth>600?63:10,top: deviceWidth>600? 100:50),
                      child: Footer(),
                    )
                  ]))),
    );
    
  }
}
