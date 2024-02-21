import 'package:flutter/material.dart';
import 'package:mlvolt_new_website/widgets/common%20widgets/responsiveLayout.dart';
import 'package:mlvolt_new_website/widgets/home%20widgets/carousal1.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;

    Widget desktop(){
      return Row(
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
                      child: Image.asset("assets/images/people.png"),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      width: 165,
                      height: 27,
                      child: Image.asset("assets/images/rating.png"),
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
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 564,
                    width: 500,
                    child: Carousal1(),
                  ),
                  Container(
                    height: 180,
                    width: 5,
                    color: Color(0xffFF6006),
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   const SizedBox(
                      width: 300,
                      child: Text(
                        "Converting ideas into reality through",
                        style: TextStyle(
                            fontSize: 18,
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
                            fontSize: 50,
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
                            fontSize: 50,
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
                          fontSize: 14,
                          color: Color(0xffFFFFFF),
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    SizedBox(
                      width: 100,
                      height: 30,
                      child: Image.asset("assets/images/people.png"),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    SizedBox(
                      width: 100,
                      height: 18,
                      child: Image.asset("assets/images/rating.png"),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const FittedBox(
                      fit: BoxFit.contain,
                      child: Text(
                        "Trusted by 1000+ Entrepreneurs",
                        style: TextStyle(
                            fontFamily: "regular",
                            color: Colors.white,
                            fontSize: 14),
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                  ],
                ),
              ),
            
               Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                   // color: Colors.amber,
                    height: 300,
                    width: 300,
                    child: Carousal1(),
                  ),
                ],
              )
              
            ],
          );
    }

    Widget mobile(){
      return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               
              Padding(
                padding: const EdgeInsets.only(left: 22),
                child: SizedBox(
                  height: deviceHeight,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const FittedBox(
                        fit: BoxFit.contain,
                        child: Text(
                          "Converting ideas into reality through",
                          style: TextStyle(
                              fontSize: 16,
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
                              fontSize: 50,
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
                              fontSize: 50,
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
                            fontSize: 14,
                            color: Color(0xffFFFFFF),
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                       SizedBox(
                        height: 20 //deviceHeight*0.3,
                      ),
                      SizedBox(
                        width: 100,
                        height: 30,
                        child: Image.asset("assets/images/people.png"),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      SizedBox(
                        width: 100,
                        height: 18,
                        child: Image.asset("assets/images/rating.png"),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const FittedBox(
                        fit: BoxFit.contain,
                        child: Text(
                          "Trusted by 1000+ Entrepreneurs",
                          style: TextStyle(
                              fontFamily: "regular",
                              color: Colors.white,
                              fontSize: 14),
                        ),
                      ),

                      Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                   // color: Colors.amber,
                    height: 300,
                    width: 300,
                    child: Carousal1(),
                  ),
                ],
              ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
             
            ],
          );
    }

    return ResponsiveLayout(
      mobile: mobile(), 
      tablet: tab(), 
      desktop: desktop());

  }
}
