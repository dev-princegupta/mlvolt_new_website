import 'package:flutter/material.dart';
import 'package:mlvolt_new_website/widgets/home widgets/customers.dart';
import 'package:mlvolt_new_website/widgets/general%20widgets/customAppbar.dart';
import 'package:mlvolt_new_website/widgets/general%20widgets/footer.dart';
import 'package:mlvolt_new_website/widgets/home widgets/heroSection.dart';
import 'package:mlvolt_new_website/widgets/home widgets/homeServices.dart';
import 'package:mlvolt_new_website/widgets/home widgets/ourClients.dart';
import 'package:mlvolt_new_website/widgets/home widgets/ourworkHome.dart';

import '../widgets/general widgets/drawerItems.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xff151515),
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: CustomAppBar()),
      drawer: deviceWidth < 600 ? const CustomDrawer() : null,
      body: SingleChildScrollView(
          child: SizedBox(
              height: deviceWidth > 600 ? 4750 : 3800,
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
                          top: 100,
                          left: 0,
                          right: deviceWidth > 600 ? 63 : 10),
                      child: const OurWorkHome(),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: 100,
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
                      child: Footer(),
                    )
                  ]))),
    );
  }
}
