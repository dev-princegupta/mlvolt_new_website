import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'widgets/home widgets/general widgets/customAppbar.dart';
import 'widgets/home widgets/general widgets/drawerItems.dart';

class ThankYouPage extends StatelessWidget {
  const ThankYouPage({super.key});

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xff151515),
      appBar: const PreferredSize(
          child: CustomAppBar(), preferredSize: Size.fromHeight(70)),
      drawer: deviceWidth < 600 ? const CustomDrawer() : null,
      body: Container(
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
                  child: Image.asset("Images/ok.png"),
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
