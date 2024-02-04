import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomeCard2 extends StatelessWidget {
  final String imgAd;
  final String productName;
  final String clientName;
  const HomeCard2({
    super.key,
    required this.imgAd,
    required this.productName,
    required this.clientName,
  });

  @override
  Widget build(BuildContext context) {
        double deviceWidth = MediaQuery.of(context).size.width;

    return SizedBox(
        width: deviceWidth>600? 909: deviceWidth*0.6,
        height: deviceWidth>600?700: 250,
        child: Stack(
          children: [
            SizedBox(
              width: deviceWidth>600? 780:400,
              height: deviceWidth>600?618:400,
              child: Image.asset(imgAd),
            ),
            Positioned(
                right: deviceWidth>600? 80: 10,
                bottom: deviceWidth>600? 50:0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          clientName,
                          style: TextStyle(
                            fontFamily: "medium",
                            fontSize: deviceWidth>600? 28: 14,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          productName,
                          style: TextStyle(
                            fontFamily: "regular",
                            fontSize: deviceWidth>600? 22: 12,
                            color: Color(0xffC2C0C0),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Container(
                        width: deviceWidth>600? 5:4,
                        height: deviceWidth>600? 65: 30,
                        color: const Color(0xffFF6006),
                      ),
                    )
                  ],
                ))
          ],
        ));
  }
}
