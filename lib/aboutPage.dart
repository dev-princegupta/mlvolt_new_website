import 'package:flutter/material.dart';
import 'package:mlvolt_new_website/widgets/founders.dart';
import 'package:mlvolt_new_website/widgets/home%20widgets/general%20widgets/drawerItems.dart';
import 'package:mlvolt_new_website/widgets/home%20widgets/general%20widgets/footer.dart';
import 'package:mlvolt_new_website/widgets/home%20widgets/ourStory.dart';
import 'package:mlvolt_new_website/widgets/home%20widgets/whoWeAre.dart';
import 'widgets/home widgets/general widgets/customAppbar.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

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
            height: deviceWidth > 600 ? 3800 : 2170,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.only(
                          top: 30,
                          left: deviceWidth > 600 ? 63 : 10,
                          right: deviceWidth > 600 ? 63 : 10),
                      child: const WhoWeAre()),
                  Padding(
                    padding: EdgeInsets.only(
                        left: deviceWidth > 600 ? 63 : 10,
                        top: deviceWidth > 600 ? 60 : 30),
                    child: SizedBox(
                      height: 30,
                      child: Image.asset("images/aboutLine.png"),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: deviceWidth > 600 ? 63 : 10,
                        top: deviceWidth > 600 ? 20 : 8),
                    child: Text(
                      "Not only this we are doing more. Keep Scrolling.",
                      style: TextStyle(
                          fontSize: deviceWidth > 600 ? 20 : 14,
                          color: Color(0xff868686),
                          fontFamily: "medium"),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: deviceWidth > 600 ? 63 : 10,
                        right: deviceWidth > 600 ? 63 : 10,
                        top: deviceWidth > 600 ? 100 : 40),
                    child: OurStory(),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: deviceWidth > 600 ? 63 : 10,
                        top: deviceWidth > 600 ? 100 : 40),
                    child: Text(
                      "OUR\nTEAM",
                      style: TextStyle(
                        fontFamily: "bold",
                        color: Color(0xff2E2D2D),
                        fontSize: deviceWidth > 600 ? 120 : 55,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: deviceWidth > 600 ? 100 : 40,
                        left: deviceWidth > 600 ? 63 : 10,
                        right: deviceWidth > 600 ? 63 : 10),
                    child: Founders(),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: deviceWidth > 600 ? 63 : 10,
                        right: deviceWidth > 600 ? 63 : 10,
                        top: deviceWidth > 600 ? 300 : 100),
                    child: Footer(),
                  )
                ])),
      ),
    );
  }
}
