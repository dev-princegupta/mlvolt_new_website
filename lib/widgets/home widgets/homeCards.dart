import 'package:flutter/material.dart';

class HomeCard extends StatelessWidget {
  final String imgAd;
  final String productName;
  final String clientName;
  const HomeCard(
      {super.key,
      required this.imgAd,
      required this.productName,
      required this.clientName});

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    return deviceWidth > 600
        ? SizedBox(
            width: 400,
            height: 400,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 400,
                  height: 400,
                  child: Image.asset(imgAd),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 35),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        productName,
                        style: const TextStyle(
                            fontFamily: "regular",
                            fontSize: 28,
                            color: Color(0xffFF6006)),
                      ),
                      Text(
                        clientName,
                        style: const TextStyle(
                            fontFamily: "regular",
                            fontSize: 22,
                            color: Color(0xffFFFFFF)),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        : SizedBox(
            width: deviceWidth,
            height: deviceWidth +200,
       
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: deviceWidth,
                    height: deviceWidth,
                    child: Image.asset(imgAd),
                  ),

                 Padding(
                  padding: const EdgeInsets.only(left: 100, top: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        productName,
                        style: const TextStyle(
                            fontFamily: "regular",
                            fontSize: 20,
                            color: Color(0xffFF6006)),
                      ),
                      Text(
                        clientName,
                        style: const TextStyle(
                            fontFamily: "regular",
                            fontSize: 18,
                            color: Color(0xffFFFFFF)),
                      )
                    ],
                  ),
                ),
                ]),
          );
  }
}
