

import 'package:flutter/material.dart';
import 'package:mlvolt_new_website/models/currentPage.dart';



import 'package:mlvolt_new_website/widgets/common%20widgets/customText.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import 'customButton.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  redirectLinkedin() async {
    Uri linkedinUri = Uri(
        scheme: "https",
        host: "www.linkedin.com",
        path: "company/mlvoltoffical");
    if (await canLaunchUrl(linkedinUri)) {
      await launchUrl(linkedinUri);
    } else {
      throw 'Could not launch ';
    }
  }

  redirectInstagram() async {
    Uri instagramUri =
        Uri(scheme: "https", host: "www.instagram.com", path: "design.mlvolt/");
    if (await canLaunchUrl(instagramUri)) {
      await launchUrl(instagramUri);
    } else {
      throw 'Could not launch ';
    }
  }

  redirectFacebook() async {
    Uri facebookUri = Uri(
        scheme: "https",
        host: "www.facebook.com",
        path: "profile.php?id=100064113364453/");
    if (await canLaunchUrl(facebookUri)) {
      await launchUrl(facebookUri);
    } else {
      throw 'Could not launch ';
    }
  }



  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;

    String device(){
      String dvc;
      if(deviceWidth<=600){
        dvc = "mobile";
      }else if(deviceWidth>600&&deviceWidth<=1200){
        dvc = "tab";
      }else{
        dvc = "desktop";
      }
      return dvc;
    }
    CurrentPage provider = Provider.of<CurrentPage>(context);

    return deviceWidth > 600
        ? Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Text(
                    "MLVOLT",
                    style: TextStyle(
                        fontFamily: "bold",
                        fontSize: device()=='desktop'? 40:32,
                        color: Color(
                          0xffFF6006,
                        )),
                  ),
                  Text(
                    "Let’s create a great digital experience.",
                    style: TextStyle(
                        fontFamily: "regular",
                        fontSize: device()=='desktop'? 24:18,
                        color: Colors.white),
                  ),
                   SizedBox(
                    height: device()=='desktop'? 38:28,
                  ),
                  CustomButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/contact');
                    },
                    buttonText: "Contact Us",
                    outlineColor: Color(0xffFF6006),
                    textColor: Colors.white,
                    hoverTextColor: Colors.black,
                  ),
                  SizedBox(
                    height: device()=='desktop'? 45:30,
                  ),
                  SizedBox(
                    width: device()=='desktop'? 530:300,
                    height: 5,
                    child: Image.asset("images/line.png"),
                  ),
                  SizedBox(
                    height: device()=='desktop'? 40: 30,
                  ),
                  RichText(
                      text:  TextSpan(children: [
                    TextSpan(
                      text: "A design agency By",
                      style: TextStyle(
                          fontFamily: "regular",
                          color: Colors.white,
                          fontSize: device()=='desktop'? 20:16,),
                    ),
                    TextSpan(
                      text: " MLVOLT",
                      style: TextStyle(
                          fontFamily: "bold",
                          color: Color(0xffFF6006),
                          fontSize: device()=='desktop'? 20:16,),
                    ),
                  ])),
                   SizedBox(
                    height: device()=='desktop'? 30:28,
                  ),
                   Text(
                    "+91 9557676740",
                    style: TextStyle(
                        fontFamily: "regular",
                        color: Colors.white,
                        fontSize: device()=='desktop'? 25:16,),
                  ),
                   SizedBox(
                    height: device()=='desktop'? 25:16,
                  ),
                  Text(
                    "hi@mlvolt.com",
                    style: TextStyle(
                        fontFamily: "regular",
                        color: Color(0xffFF6006),
                        fontSize: device()=='desktop'? 25:16,),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    width: device()=='desktop'? 300:200,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/services');
                          },
                          child:  CustomText(
                            text: "Services",
                            normalFontColor: Colors.white,
                            howerFontColor: Color(0xffFF6006),
                            fontFamily: 'medium',
                            fontSize: device()=='desktop'? 30:20,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/about');
                          },
                          child:  CustomText(
                            text: "About",
                            normalFontColor: Colors.white,
                            howerFontColor: Color(0xffFF6006),
                            fontFamily: 'medium',
                            fontSize: device()=='desktop'? 30:20,
                          ),
                        ),
                      ],
                    ),
                  ),
                   SizedBox(
                    height: device()=='desktop'? 50:20,
                  ),
                  SizedBox(
                    width: device()=='desktop'? 300:200,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/projects');
                          },
                          child:  CustomText(
                            text: "Projects",
                            normalFontColor: Colors.white,
                            howerFontColor: Color(0xffFF6006),
                            fontFamily: 'medium',
                            fontSize: device()=='desktop'? 30:20,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            provider.updateCurrentPage("CONTACT");
                          },
                          child: CustomText(
                            text: "Contact",
                            normalFontColor: Colors.white,
                            howerFontColor: Color(0xffFF6006),
                            fontFamily: 'medium',
                            fontSize: device()=='desktop'? 30:20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: device()=='desktop'? 90:50,
                  ),
                  SizedBox(
                    width: device()=='desktop'? 170:100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            redirectLinkedin();
                          },
                          child: SizedBox(
                            width: device()=='desktop'? 35:20,
                            height: device()=='desktop'? 35:20,
                            child: Image.asset('assets/images/li.png'),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            redirectInstagram();
                          },
                          child: SizedBox(
                            width: device()=='desktop'? 35:20,
                            height: device()=='desktop'? 35:20,
                            child: Image.asset('assets/images/ig.png'),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            redirectFacebook();
                          },
                          child: SizedBox(
                            width: device()=='desktop'? 35:20,
                            height: device()=='desktop'? 35:20,
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
                onPressed: () {
                  Navigator.pushNamed(context, '/contact');
                },
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
                      onTap: () {
                        redirectLinkedin();
                      },
                      child: SizedBox(
                        width: 18,
                        height: 18,
                        child: Image.asset('assets/images/li.png'),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        redirectInstagram();
                      },
                      child: SizedBox(
                        width: 18,
                        height: 18,
                        child: Image.asset('assets/images/ig.png'),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        redirectFacebook();
                      },
                      child: SizedBox(
                        width: 18,
                        height: 18,
                        child: Image.asset('assets/images/fb.png'),
                      ),
                    ),
                  ],
                ),
              )
            ],
          );
  }
}
