import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:mlvolt_new_website/pages/aboutPage.dart';
import 'package:mlvolt_new_website/pages/contactPage.dart';
import 'package:mlvolt_new_website/pages/productsPage.dart';
import 'package:mlvolt_new_website/pages/servicesPage.dart';

import 'package:mlvolt_new_website/widgets/general%20widgets/customText.dart';
import 'package:url_launcher/url_launcher.dart';

import 'customButton.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  redirectLinkedin() async {
     Uri linkedinUri = Uri(scheme: "https", host: "www.linkedin.com", path: "company/mlvoltoffical" );
    if (await canLaunchUrl(linkedinUri)) {
      await launchUrl(linkedinUri);
    } else {
      throw 'Could not launch ';
    }
  }
   redirectInstagram() async {
     Uri instagramUri = Uri(scheme: "https", host: "www.instagram.com", path: "design.mlvolt/" );
    if (await canLaunchUrl(instagramUri)) {
      await launchUrl(instagramUri);
    } else {
      throw 'Could not launch ';
    }
  }
   redirectFacebook() async {
     Uri facebookUri = Uri(scheme: "https", host: "www.facebook.com", path: "profile.php?id=100064113364453/" );
    if (await canLaunchUrl(facebookUri)) {
      await launchUrl(facebookUri);
    } else {
      throw 'Could not launch ';
    }
  }

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;


    return deviceWidth > 600
        ? Row(
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
                        fontFamily: "regular",
                        fontSize: 24,
                        color: Colors.white),
                  ),
                  const SizedBox(
                    height: 38,
                  ),
                  CustomButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ContactPage()),
                            );
                    },
                    buttonText: "Contact Us",
                    outlineColor: Color(0xffFF6006),
                    textColor: Colors.white,
                    hoverTextColor: Colors.black,
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
                          fontFamily: "regular",
                          color: Colors.white,
                          fontSize: 20),
                    ),
                    TextSpan(
                      text: " MLVOLT",
                      style: TextStyle(
                          fontFamily: "bold",
                          color: Color(0xffFF6006),
                          fontSize: 20),
                    ),
                  ])),
                  const SizedBox(
                    height: 36,
                  ),
                  const Text(
                    "+91 9557676740",
                    style: TextStyle(
                        fontFamily: "regular",
                        color: Colors.white,
                        fontSize: 25),
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
                      children: [
                        InkWell(
                          onTap: (){
                              Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ServicesPage()),
                            );
                          },
                          child: const CustomText(
                            text: "Services",
                            normalFontColor: Colors.white,
                            howerFontColor: Color(0xffFF6006),
                            fontFamily: 'medium',
                            fontSize: 30,
                          ),
                        ),
                        InkWell(
                          onTap: (){
                              Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const AboutPage()),
                            );
                          },
                          child: const CustomText(
                            text: "About",
                            normalFontColor: Colors.white,
                            howerFontColor: Color(0xffFF6006),
                            fontFamily: 'medium',
                            fontSize: 30,
                          ),
                        ),
                     
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
                      children: [
                        InkWell(
                          onTap: (){
                            
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ProductsPage()),
                            );
                          },
                          child: const CustomText(
                            text: "Projects",
                            normalFontColor: Colors.white,
                            howerFontColor: Color(0xffFF6006),
                            fontFamily: 'medium',
                            fontSize: 30,
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ContactPage()),
                            );
                          },
                          child: const CustomText(
                            text: "Contact",
                            normalFontColor: Colors.white,
                            howerFontColor: Color(0xffFF6006),
                            fontFamily: 'medium',
                            fontSize: 30,
                          ),
                        ),
                     
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
                        InkWell(
                          onTap: (){
                            redirectLinkedin();
                          },
                          child: SizedBox(
                            width: 35,
                            height: 35,
                            child: Image.asset('assets/images/li.png'),
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            redirectInstagram();
                          },
                          child: SizedBox(
                            width: 35,
                            height: 35,
                            child: Image.asset('assets/images/ig.png'),
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            redirectFacebook();
                          },
                          child: SizedBox(
                            width: 35,
                            height: 35,
                            child: Image.asset('assets/images/fb.png'),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          )
        : Column(
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
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: deviceWidth - 20,
                child: const Text(
                  "Let’s create a great digital experience.",
                  style: TextStyle(
                      fontFamily: "regular", fontSize: 16, color: Colors.white),
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              CustomButton(
                onPressed: () {},
                buttonText: "Contact Us",
                outlineColor: Color(0xffFF6006),
                textColor: Colors.white,
                hoverTextColor: Colors.black,
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: deviceWidth - 10,
                height: 5,
                child: Image.asset("assets/images/line.png"),
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
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: (){
                        print("hello");
                      // await redirect();
                      },
                      child: SizedBox(
                        width: 18,
                        height: 18,
                        child: Image.asset('assets/images/li.png'),
                      ),
                    ),
                    SizedBox(
                      width: 18,
                      height: 18,
                      child: Image.asset('assets/images/ig.png'),
                    ),
                    SizedBox(
                      width: 18,
                      height: 18,
                      child: Image.asset('assets/images/fb.png'),
                    ),
                  ],
                ),
              )
            ],
          );
  }
}
