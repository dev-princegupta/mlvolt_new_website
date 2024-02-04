import 'package:flutter/material.dart';
import 'package:mlvolt_new_website/widgets/home widgets/homeCards.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;
    return deviceWidth > 600
        ? Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const FittedBox(
                      fit: BoxFit.contain,
                      child: Text(
                        "Converting ideas into reality through",
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.normal,
                            fontFamily: "regular",
                            color: Color(0xffFFFFFF)),
                      ),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    const FittedBox(
                      fit: BoxFit.contain,
                      child: Text(
                        "Product",
                        style: TextStyle(
                            fontSize: 80,
                            fontWeight: FontWeight.bold,
                            fontFamily: "bold",
                            color: Color(0xffFF6006)),
                      ),
                    ),
                    const FittedBox(
                      fit: BoxFit.contain,
                      child: Text(
                        "Design",
                        style: TextStyle(
                            fontSize: 80,
                            fontWeight: FontWeight.bold,
                            fontFamily: "bold",
                            color: Color(0xffFFFFFF)),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const FittedBox(
                      fit: BoxFit.contain,
                      child: Text(
                        "An Affordable Industrial Product  \nDesign Agency",
                        style: TextStyle(
                          fontFamily: "thin",
                          fontWeight: FontWeight.normal,
                          fontSize: 18,
                          color: Color(0xffFFFFFF),
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    const SizedBox(
                      height: 70,
                    ),
                    SizedBox(
                      width: 166,
                      height: 66,
                      child: Image.asset("images/people.png"),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      width: 165,
                      height: 27,
                      child: Image.asset("images/rating.png"),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const FittedBox(
                      fit: BoxFit.contain,
                      child: Text(
                        "Trusted by 1000+ Entrepreneurs",
                        style: TextStyle(
                            fontFamily: "regular",
                            color: Colors.white,
                            fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 564,
                    width: 500,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: const [
                        HomeCard(
                          imgAd: "images/headphone1.png",
                          productName: "Head Phone Design",
                          clientName: "Mr. Amit Sinha",
                        ),
                        HomeCard(
                          imgAd: "images/earbuds1.png",
                          productName: "Earbuds Design",
                          clientName: "Mr. Sachin Verma",
                        ),
                        HomeCard(
                          imgAd: "images/earbuds2.png",
                          productName: "Earbuds Design",
                          clientName: "Mr. Sachin Verma",
                        ),
                        HomeCard(
                          imgAd: "images/speaker1.png",
                          productName: "Smart Speaker Design",
                          clientName: "Mr. Robert D",
                        ),
                        HomeCard(
                          imgAd: "images/bottel.png",
                          productName: "Smart Bottel Design",
                          clientName: "Mr. Mark H",
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 300,
                    width: 5,
                    color: Colors.red,
                  ),
                ],
              )
            ],
          )
        : Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              SizedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const FittedBox(
                      fit: BoxFit.contain,
                      child: Text(
                        "Converting ideas into reality through",
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.normal,
                            fontFamily: "regular",
                            color: Color(0xffFFFFFF)),
                      ),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    const FittedBox(
                      fit: BoxFit.contain,
                      child: Text(
                        "Product",
                        style: TextStyle(
                            fontSize: 80,
                            fontWeight: FontWeight.bold,
                            fontFamily: "bold",
                            color: Color(0xffFF6006)),
                      ),
                    ),
                    const FittedBox(
                      fit: BoxFit.contain,
                      child: Text(
                        "Design",
                        style: TextStyle(
                            fontSize: 80,
                            fontWeight: FontWeight.bold,
                            fontFamily: "bold",
                            color: Color(0xffFFFFFF)),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const FittedBox(
                      fit: BoxFit.contain,
                      child: Text(
                        "An Affordable Industrial Product  \nDesign Agency",
                        style: TextStyle(
                          fontFamily: "thin",
                          fontWeight: FontWeight.normal,
                          fontSize: 18,
                          color: Color(0xffFFFFFF),
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    const SizedBox(
                      height: 70,
                    ),
                    SizedBox(
                      width: 166,
                      height: 66,
                      child: Image.asset("images/people.png"),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      width: 165,
                      height: 27,
                      child: Image.asset("images/rating.png"),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const FittedBox(
                      fit: BoxFit.contain,
                      child: Text(
                        "Trusted by 1000+ Entrepreneurs",
                        style: TextStyle(
                            fontFamily: "regular",
                            color: Colors.white,
                            fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 70,
              ),
              SizedBox(
                width: deviceWidth,
                height: deviceWidth+200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    HomeCard(
                      imgAd: "images/headphone1.png",
                      productName: "Head Phone Design",
                      clientName: "Mr. Amit Sinha",
                    ),
                    HomeCard(
                      imgAd: "images/earbuds1.png",
                      productName: "Earbuds Design",
                      clientName: "Mr. Sachin Verma",
                    ),
                    HomeCard(
                      imgAd: "images/earbuds2.png",
                      productName: "Earbuds Design",
                      clientName: "Mr. Sachin Verma",
                    ),
                    HomeCard(
                      imgAd: "images/speaker1.png",
                      productName: "Smart Speaker Design",
                      clientName: "Mr. Robert D",
                    ),
                    HomeCard(
                      imgAd: "images/bottel.png",
                      productName: "Smart Bottel Design",
                      clientName: "Mr. Mark H",
                    ),
                  ],
                ),
              ),

              
            ],
          );
  }
}
