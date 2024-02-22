import 'package:flutter/material.dart';
import 'package:mlvolt_new_website/widgets/common%20widgets/footer.dart';

import '../widgets/common widgets/customAppbar.dart';
import '../widgets/common widgets/customDrawer.dart';
import '../widgets/products widgets/productCard.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;

     String device() {
      String dvc;
      if (deviceWidth <= 600) {
        dvc = "mobile";
      } else if (deviceWidth > 600 && deviceWidth <= 1200) {
        dvc = "tab";
      } else {
        dvc = "desktop";
      }
      return dvc;
    }

    return Scaffold(
      backgroundColor: const Color(0xff151515),
          appBar: const PreferredSize(
            preferredSize: Size.fromHeight(70),
            child: CustomAppBar(),
          ),
          drawer: deviceWidth < 1200 ? const CustomDrawer() : null,
          body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
                left: deviceWidth > 600 ? 63 : 10,
                right: deviceWidth > 600 ? 63 : 10,),
            child: SizedBox(
              height: device()=='mobile' ? 1700 : device()=='desktop'? 3800:2600,
              width: deviceWidth,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: device()=='mobile' ? 30 : device()=='desktop'? 150:50,),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "ALL",
                            style: TextStyle(
                              fontFamily: "medium",
                              fontSize: device()=='mobile' ? 16 : device()=='desktop'? 25:20,
                              color: Colors.white,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: device()=='mobile' ? 10 : device()=='desktop'? 50:15,),
                            child: Text(
                              "PCB",
                              style: TextStyle(
                                fontFamily: "medium",
                                fontSize: device()=='mobile' ? 16 : device()=='desktop'? 25:20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: device()=='mobile' ? 10 : device()=='desktop'? 50:15,),
                            child: Text(
                              "CAD",
                              style: TextStyle(
                                fontFamily: "medium",
                                fontSize: device()=='mobile' ? 16 : device()=='desktop'? 25:20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: device()=='mobile' ? 10 : device()=='desktop'? 50:15,),
                            child: Text(
                              "PROTOTYPE",
                              style: TextStyle(
                                fontFamily: "medium",
                                fontSize: device()=='mobile' ? 16 : device()=='desktop'? 25:20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          deviceWidth > 600
                              ? Padding(
                                  padding: EdgeInsets.only(
                                      left: device()=='mobile' ? 10 : device()=='desktop'? 50:15,),
                                  child: Text(
                                    "UI,UX",
                                    style: TextStyle(
                                      fontFamily: "medium",
                                      fontSize: device()=='mobile' ? 16 : device()=='desktop'? 25:20,
                                      color: Colors.white,
                                    ),
                                  ),
                                )
                              : const SizedBox(),
                          deviceWidth > 600
                              ? Padding(
                                  padding: EdgeInsets.only(
                                      left: device()=='mobile' ? 10 : device()=='desktop'? 50:15,),
                                  child: Text(
                                    "CEO DASHBOARD",
                                    style: TextStyle(
                                      fontFamily: "medium",
                                      fontSize: device()=='mobile' ? 16 : device()=='desktop'? 25:20,
                                      color: Colors.white,
                                    ),
                                  ),
                                )
                              : const SizedBox(),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: deviceWidth > 600 ? 100 : 40, left: 0, right: 0),
                      child: SizedBox(
                        height: device()=='mobile' ? 1200 : device()=='desktop'? 2800:1800,
        
                        // color: Colors.amber,
                        child: GridView(
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  mainAxisSpacing: deviceWidth > 600 ? 50 : 20,
                                  crossAxisSpacing: 20,
                                  childAspectRatio: 0.7),
                          children: const [
                            ProductCard(
                              productName: "Headphone",
                              imgAd: "assets/images/p1.jpg",
                              industry: "Wearables",
                              aText: "Research",
                              bText: "Branding",
                            ),
                            ProductCard(
                              productName: "Smart Bottel",
                              imgAd: "assets/images/p2.jpg",
                              industry: "Wearables",
                              aText: "ok",
                              bText: "ok",
                            ),
                            ProductCard(
                              productName: "Smart Bottel",
                              imgAd: "assets/images/p3.jpg",
                              industry: "Wearables",
                              aText: "ok",
                              bText: "ok",
                            ),
                            ProductCard(
                              productName: "Smart Bottel",
                              imgAd: "assets/images/p4.jpg",
                              industry: "Wearables",
                              aText: "ok",
                              bText: "ok",
                            ),
                            ProductCard(
                              productName: "Smart Bottel",
                              imgAd: "assets/images/p5.jpg",
                              industry: "Wearables",
                              aText: "ok",
                              bText: "ok",
                            ),
                            ProductCard(
                              productName: "Smart Bottel",
                              imgAd: "assets/images/p6.jpg",
                              industry: "Wearables",
                              aText: "ok",
                              bText: "ok",
                            ),
                            ProductCard(
                              productName: "Smart Bottel",
                              imgAd: "assets/images/p7.jpg",
                              industry: "Wearables",
                              aText: "ok",
                              bText: "ok",
                            ),
                            ProductCard(
                              productName: "Smart Bottel",
                              imgAd: "assets/images/p8.jpg",
                              industry: "Wearables",
                              aText: "ok",
                              bText: "ok",
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(top: deviceWidth > 600 ? 200 : 50),
                      child: const Footer(),
                    )
                  ]),
            ),
          ),
        ),
    );
  }
}
