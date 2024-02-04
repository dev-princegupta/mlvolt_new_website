import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;
    return deviceWidth>600? Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "MLVOLT",
              style: TextStyle(
                  fontFamily: "bold",
                  fontSize: 40,
                  color: Color(
                    0xffFF6006,
                  )),
            ),
            const Text(
              "Let’s create a great digital experience.",
              style: TextStyle(
                  fontFamily: "regular", fontSize: 24, color: Colors.white),
            ),
            const SizedBox(
              height: 38,
            ),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Color(0xffFF6006), width: 2)),
              child: const Padding(
                padding:
                    EdgeInsets.only(left: 47, right: 47, top: 13, bottom: 13),
                child: Text(
                  "Contact Us",
                  style: TextStyle(
                    fontFamily: "regular",
                    color: Colors.white,
                    fontSize: 22,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 45,
            ),
            SizedBox(
              width: 530,
              height: 5,
              child: Image.asset("images/line.png"),
            ),
            const SizedBox(
              height: 48,
            ),
            RichText(
                text: const TextSpan(children: [
              TextSpan(
                text: "A design agency By",
                style: TextStyle(
                    fontFamily: "regular", color: Colors.white, fontSize: 20),
              ),
              TextSpan(
                text: " MLVOLT",
                style: TextStyle(
                    fontFamily: "bold", color: Color(0xffFF6006), fontSize: 20),
              ),
            ])),
            const SizedBox(
              height: 36,
            ),
            const Text(
              "+91 9557676740",
              style: TextStyle(
                  fontFamily: "regular", color: Colors.white, fontSize: 25),
            ),
            const SizedBox(
              height: 24,
            ),
            const Text(
              "hi@mlvolt.com",
              style: TextStyle(
                  fontFamily: "regular",
                  color: Color(0xffFF6006),
                  fontSize: 25),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(
              width: 300,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text(
                    "Services",
                    style: TextStyle(
                      fontFamily: "medium",
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                  Text(
                    "About",
                    style: TextStyle(
                      fontFamily: "medium",
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              width: 300,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text(
                    "Project",
                    style: TextStyle(
                      fontFamily: "medium",
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                  Text(
                    "Contact",
                    style: TextStyle(
                      fontFamily: "medium",
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 90,
            ),
            SizedBox(
              width: 170,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 35,
                    height: 35,
                    child: Image.asset('images/li.png'),
                  ),
                  SizedBox(
                    width: 35,
                    height: 35,
                    child: Image.asset('images/ig.png'),
                  ),
                  SizedBox(
                    width: 35,
                    height: 35,
                    child: Image.asset('images/fb.png'),
                  ),
                ],
              ),
            )
          ],
        )
      ],
    ):Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
              "MLVOLT",
              style: TextStyle(
                  fontFamily: "bold",
                  fontSize: 40,
                  color: Color(
                    0xffFF6006,
                  )),
            ),
            SizedBox(height: 20,),
            SizedBox(
              width: deviceWidth-20,
              child: const Text(
                "Let’s create a great digital experience.",
                style: TextStyle(
                    fontFamily: "regular", fontSize: 16, color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Color(0xffFF6006), width: 2)),
              child: const Padding(
                padding:
                    EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                child: Text(
                  "Contact Us",
                  style: TextStyle(
                    fontFamily: "regular",
                    color: Colors.white,
                    fontSize: 22,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: deviceWidth-10,
              height: 5,
              child: Image.asset("images/line.png"),
            ),
            
            const SizedBox(
              height: 15,
            ),
            const Text(
              "+91 9557676740",
              style: TextStyle(
                  fontFamily: "regular", color: Colors.white, fontSize: 16),
            ),
            const SizedBox(
              height: 8,
            ),
            const Text(
              "hi@mlvolt.com",
              style: TextStyle(
                  fontFamily: "regular",
                  color: Color(0xffFF6006),
                  fontSize: 16),
            ),
            SizedBox(height: 20,),
            SizedBox(
              width: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 18,
                    height: 18,
                    child: Image.asset('images/li.png'),
                  ),
                  SizedBox(
                    width: 18,
                    height: 18,
                    child: Image.asset('images/ig.png'),
                  ),
                  SizedBox(
                    width: 18,
                    height: 18,
                    child: Image.asset('images/fb.png'),
                  ),
                ],
              ),
            )
      ],
    );
  }
}
