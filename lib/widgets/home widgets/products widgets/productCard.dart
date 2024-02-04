import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ProductCard extends StatelessWidget {
  final String imgAd;
  final String productName;
  final String industry;
  final String aText;
  final String bText;
  const ProductCard(
      {super.key,
      required this.productName,
      required this.imgAd,
      required this.industry,
      required this.aText,
      required this.bText});

  @override
  Widget build(BuildContext context) {
            double deviceWidth = MediaQuery.of(context).size.width;

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
         // width: deviceWidth>600? 549: deviceWidth*0.5,
        //  height: deviceWidth>600?525: deviceWidth*0.5,
          color: Colors.amber,
          child: Image.asset(imgAd),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15),
          child: SizedBox(
            width: deviceWidth>600?549:deviceWidth*0.5-20,
            
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      productName,
                      style: TextStyle(
                        fontFamily: 'bold',
                        fontSize: deviceWidth>600?35:16,
                        color: Colors.white,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          aText,
                          style: TextStyle(
                            fontFamily: 'regular',
                            fontSize: deviceWidth>600?20:14,
                            color: Color(0xff868686),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          child: Container(
                            width: 5,
                            height: 25,
                            color: const Color(0xffFF6006),
                          ),
                        ),
                        Text(
                          bText,
                          style: TextStyle(
                            fontFamily: 'regular',
                            fontSize: deviceWidth>600?20:14,
                            color: Color(0xff868686),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              deviceWidth>600?  Text(
                  industry,
                  style: TextStyle(
                    fontFamily: 'medium',
                    fontSize: deviceWidth>600?20:10,
                    color: Color(0xffFF6006),
                  ),
                ):SizedBox(),
              ],
            ),
          ),
        )
      ],
    );
  }
}
