import 'package:flutter/material.dart';
import 'package:mlvolt_new_website/widgets/about%20widgets/founders.dart';
import 'package:mlvolt_new_website/widgets/common%20widgets/footer.dart';
import 'package:mlvolt_new_website/widgets/about%20widgets/ourStory.dart';
import 'package:mlvolt_new_website/widgets/about%20widgets/whoWeAre.dart';


class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;

    String device(){
      String dvc;
      if(deviceWidth<=600){
        dvc = "mobile";
      }else if(deviceWidth>600&&deviceWidth<=1200){
        dvc = "tab";
      }else{
        dvc = "desktop";
      }
      return dvc;
    }

    return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SizedBox(
            height: device()=='mobile' ? 2000 : device()=='desktop'? 3750:3000,
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
                      child: Image.asset("assets/images/aboutLine.png"),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: deviceWidth > 600 ? 63 : 10,
                        top: deviceWidth > 600 ? 20 : 8),
                    child: Text(
                      "Not only this we are doing more. Keep Scrolling.",
                      style: TextStyle(
                          fontSize: device()=='mobile' ? 14 : device()=='desktop'? 20:16,
                          color: const Color(0xff868686),
                          fontFamily: "medium"),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: deviceWidth > 600 ? 63 : 10,
                        right: deviceWidth > 600 ? 63 : 10,
                        top: deviceWidth > 600 ? 100 : 40),
                    child: const OurStory(),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: deviceWidth > 600 ? 63 : 10,
                        top: deviceWidth > 600 ? 100 : 40),
                    child: Text(
                      "OUR\nTEAM",
                      style: TextStyle(
                        fontFamily: "bold",
                        color: const Color(0xff2E2D2D),
                        fontSize: device()=='mobile' ? 55 : device()=='desktop'? 120:80,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: deviceWidth > 600 ? 100 : 40,
                        left: deviceWidth > 600 ? 63 : 10,
                        right: deviceWidth > 600 ? 63 : 10),
                    child: const Founders(),
                  ),
                 
                  Padding(
                    padding: EdgeInsets.only(
                        left: deviceWidth > 600 ? 63 : 10,
                        right: deviceWidth > 600 ? 63 : 10,
                        top: deviceWidth > 600 ? 300 : 100),
                    child: const Footer(),
                  )
                ])),
      );
  }
}
