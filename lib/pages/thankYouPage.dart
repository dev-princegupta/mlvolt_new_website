import 'package:flutter/material.dart';

import '../widgets/common widgets/customAppbar.dart';
import '../widgets/common widgets/customDrawer.dart';

class ThankYouPage extends StatelessWidget {
  const ThankYouPage({super.key});

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xff151515),
          appBar: const PreferredSize(
            preferredSize: Size.fromHeight(70),
            child: CustomAppBar(),
          ),
          drawer: deviceWidth < 1200 ? const CustomDrawer() : null,
          body:  SizedBox(
          width: deviceWidth,
          height: deviceHeight,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Thank You !",
                style: TextStyle(
                    fontSize: deviceWidth>600?150: 60, color: Colors.white, fontFamily: "bold"),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: deviceWidth>600? 50: 20,
                    height: deviceWidth>600? 50: 20,
                    child: Image.asset("assets/images/ok.png"),
                  ),
                  SizedBox(
                    width: deviceWidth>600? 20:8,
                  ),
                  Text(
                "Your query has been successfully submitted.",
                style: TextStyle(
                    fontSize: deviceWidth>600?35: 14, color: Colors.white, fontFamily: "regular"),
              ),
                ],
              )
            ],
          ),
        ),
    );
  }
}
