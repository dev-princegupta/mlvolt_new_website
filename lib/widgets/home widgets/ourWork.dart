import 'package:flutter/material.dart';
import 'package:mlvolt_new_website/models/currentPage.dart';
import 'package:mlvolt_new_website/widgets/common%20widgets/responsiveLayout.dart';
import 'package:mlvolt_new_website/widgets/home%20widgets/carousal2.dart';
import 'package:provider/provider.dart';

import '../common widgets/customButton.dart';

class OurWorkHome extends StatelessWidget {
  const OurWorkHome({super.key});

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    CurrentPage provider = Provider.of<CurrentPage>(context);

    Widget mobile(){
      return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 400,
          width: deviceWidth * 0.6,
          child: Carousal2(),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Text(
              "Our Work",
              style: TextStyle(
                fontFamily: "bold",
                fontSize: 20,
                color: Colors.white,
              ),
            ),
           const  SizedBox(
              height: 10,
            ),
            CustomButton(
              onPressed: () {
               Navigator.pushNamed(context, '/projects');
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

    Widget tab(){


      return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 400,
          width:  deviceWidth * 0.7,
          child: const Carousal2(),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Text(
              "Our Work",
              style: TextStyle(
                fontFamily: "bold",
                fontSize:  30,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: deviceWidth > 600 ? 20 : 10,
            ),
            CustomButton(
              onPressed: () {
               Navigator.pushNamed(context, '/projects');
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

    Widget desktop(){

      return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: 700,
          width: 900,
          child: Carousal2(),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Text(
              "Our Work",
              style: TextStyle(
                fontFamily: "bold",
                fontSize: 60,
                color: Colors.white,
              ),
            ),
           const  SizedBox(
              height: 20,
            ),
            CustomButton(
              onPressed: () {
               Navigator.pushNamed(context, '/projects');
              },
              buttonText: "View More",
              outlineColor: const Color(0xffFF6006),
              textColor: Colors.white,
              hoverTextColor: Colors.black,
            ),
          ],
        )
      ],
    );


    }

    return ResponsiveLayout(
      mobile: mobile(), 
      tablet: tab(), 
      desktop: desktop());
  }
}
