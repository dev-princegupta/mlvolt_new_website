import 'package:flutter/material.dart';
import 'package:mlvolt_new_website/widgets/common%20widgets/responsiveLayout.dart';

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
   
    Widget mobile(){
      return SizedBox(
            // width: 200,
            // height: 300,
       
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 140,
                    height: 140,
                    child: Image.asset(imgAd),
                  ),

                 Padding(
                  padding: const EdgeInsets.only(left: 20, top: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        productName,
                        style: const TextStyle(
                            fontFamily: "regular",
                            fontSize: 14,
                            color: Color(0xffFF6006)),
                      ),
                      Text(
                        clientName,
                        style: const TextStyle(
                            fontFamily: "regular",
                            fontSize: 12,
                            color: Color(0xffFFFFFF)),
                      )
                    ],
                  ),
                ),
                ]),
          );
    }

    Widget tab(){
       return SizedBox(
            width: 400,
            height: 400,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 200,
                  height: 200,
                  child: Image.asset(imgAd),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        productName,
                        style: const TextStyle(
                            fontFamily: "regular",
                            fontSize: 18,
                            color: Color(0xffFF6006)),
                      ),
                      Text(
                        clientName,
                        style: const TextStyle(
                            fontFamily: "regular",
                            fontSize: 14,
                            color: Color(0xffFFFFFF)),
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
    }

    Widget desktop (){
      return SizedBox(
            width: 500,
            height: 500,
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
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        productName,
                        style: const TextStyle(
                            fontFamily: "regular",
                            fontSize: 22,
                            color: Color(0xffFF6006)),
                      ),
                      Text(
                        clientName,
                        style: const TextStyle(
                            fontFamily: "regular",
                            fontSize: 14,
                            color: Color(0xffFFFFFF)),
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
    }
    return ResponsiveLayout(
      mobile: mobile(), 
      tablet: tab(), 
      desktop: desktop());
   
  }
}
