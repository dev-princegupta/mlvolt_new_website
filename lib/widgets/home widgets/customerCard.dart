import 'package:flutter/material.dart';

class CustomerCard extends StatelessWidget {
  final String imgAd;
  final String name;
  final String position;
  final String comment;
  const CustomerCard({
    super.key,
    required this.imgAd,
    required this.name,
    required this.position,
    required this.comment,
  });

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;

    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: deviceWidth>600? 120: 80,
          height: deviceWidth>600? 120: 80,
          child: Image.asset(imgAd),
        ),
        SizedBox(
          width: deviceWidth>600? 20: 10,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: deviceWidth>600? 1000: deviceWidth - 110,
              height: deviceWidth>600? 100: 100,
              child: Text(
                comment,
                style:  TextStyle(
                  fontFamily: "regular",
                  color: Colors.white,
                  fontSize: deviceWidth>600?25:14,
                ),
              ),
            ),
            SizedBox(
              height: deviceWidth>600? 50:10,
            ),
            Text(
              name,
              style: TextStyle(
                fontFamily: "regular",
                color: const Color(0xffFF6006),
                fontSize: deviceWidth>600?25:16,
              ),
            ),
            Text(
              position,
              style: TextStyle(
                fontFamily: deviceWidth>600? "thin": "regular",
                color: const Color(0xff868686),
                fontSize: deviceWidth>600?25:16,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
