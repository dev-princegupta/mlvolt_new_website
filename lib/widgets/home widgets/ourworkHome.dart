import 'package:flutter/material.dart';
import 'package:mlvolt_new_website/pages/productsPage.dart';
import 'package:mlvolt_new_website/widgets/home%20widgets/carousal2.dart';

import '../general widgets/customButton.dart';

class OurWorkHome extends StatelessWidget {
  const OurWorkHome({super.key});

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: deviceWidth > 600 ? 700 : 300,
          width: deviceWidth > 600 ? 900 : deviceWidth * 0.6,
          child: Carousal2(),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              "Our Work",
              style: TextStyle(
                fontFamily: "bold",
                fontSize: deviceWidth > 600 ? 60 : 30,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: deviceWidth > 600 ? 20 : 10,
            ),
            CustomButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const ProductsPage()),
                );
              },
              buttonText: "View More",
              outlineColor: Color(0xffFF6006),
              textColor: Colors.white,
              hoverTextColor: Colors.black,
            ),
          ],
        )
      ],
    );
  }
}
