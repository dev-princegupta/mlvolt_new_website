import 'package:flutter/material.dart';
import 'package:mlvolt_new_website/widgets/home widgets/customers.dart';
import 'package:mlvolt_new_website/widgets/common%20widgets/footer.dart';
import 'package:mlvolt_new_website/widgets/home widgets/heroSection.dart';
import 'package:mlvolt_new_website/widgets/home%20widgets/ourServices.dart';
import 'package:mlvolt_new_website/widgets/home widgets/ourClients.dart';
import 'package:mlvolt_new_website/widgets/home%20widgets/ourWork.dart';



class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
          child: SizedBox(
              height: deviceWidth > 600 ? 4750 : 3400,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(
                            top: 50,
                            left: deviceWidth > 600 ? 63 : 10,
                            right: deviceWidth > 600 ? 63 : 10),
                        child: const HeroSection()),
                    Padding(
                      padding: EdgeInsets.only(
                          top: 0,
                          left: deviceWidth > 600 ? 63 : 10,
                          right: deviceWidth > 600 ? 63 : 10),
                      child: const OurClients(),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: 80,
                          left: deviceWidth > 600 ? 63 : 10,
                          right: deviceWidth > 600 ? 63 : 10),
                      child: const HomeServices(),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: deviceWidth > 600 ? 100 : 30,
                          left: 0,
                          right: deviceWidth > 600 ? 63 : 10),
                      child: const OurWorkHome(),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: deviceWidth > 600 ? 100 : 30,
                          left: deviceWidth > 600 ? 63 : 10,
                          right: deviceWidth > 600 ? 63 : 10),
                      child: const CustomerFeedbackHome(),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 170,
                        left: deviceWidth > 600 ? 63 : 10,
                        right: deviceWidth > 600 ? 63 : 10,
                      ),
                      child: const Footer(),
                    )
                  ])));
  }
}
