import 'package:flutter/material.dart';
import 'package:mlvolt_new_website/widgets/home%20widgets/general%20widgets/footer.dart';

import 'widgets/home widgets/general widgets/customAppbar.dart';
import 'widgets/home widgets/general widgets/drawerItems.dart';
import 'widgets/home widgets/products widgets/productCard.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
            backgroundColor: const Color(0xff151515),
               appBar: const PreferredSize(
          child: CustomAppBar(), preferredSize: Size.fromHeight(70)),
      drawer: deviceWidth < 600 ? const CustomDrawer() : null,

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
              left: deviceWidth > 600 ? 63 : 10,
              right: deviceWidth > 600 ? 63 : 10),
          child: SizedBox(
            height: deviceWidth > 600 ? 4000 : 1800,
            width: deviceWidth,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 150),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "ALL",
                          style: TextStyle(
                            fontFamily: "medium",
                            fontSize: deviceWidth > 600 ? 25 : 16,
                            color: Colors.white,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: deviceWidth > 600 ? 50 : 10),
                          child: Text(
                            "PCB",
                            style: TextStyle(
                              fontFamily: "medium",
                              fontSize: deviceWidth > 600 ? 25 : 16,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: deviceWidth > 600 ? 50 : 10),
                          child: Text(
                            "CAD",
                            style: TextStyle(
                              fontFamily: "medium",
                              fontSize: deviceWidth > 600 ? 25 : 16,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: deviceWidth > 600 ? 50 : 10),
                          child: Text(
                            "PROTOTYPE",
                            style: TextStyle(
                              fontFamily: "medium",
                              fontSize: deviceWidth > 600 ? 25 : 16,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        deviceWidth > 600
                            ? Padding(
                                padding: EdgeInsets.only(
                                    left: deviceWidth > 600 ? 50 : 10),
                                child: Text(
                                  "UI,UX",
                                  style: TextStyle(
                                    fontFamily: "medium",
                                    fontSize: deviceWidth > 600 ? 25 : 16,
                                    color: Colors.white,
                                  ),
                                ),
                              )
                            : SizedBox(),
                        deviceWidth > 600
                            ? Padding(
                                padding: EdgeInsets.only(
                                    left: deviceWidth > 600 ? 50 : 10),
                                child: Text(
                                  "CEO DASHBOARD",
                                  style: TextStyle(
                                    fontFamily: "medium",
                                    fontSize: deviceWidth > 600 ? 25 : 16,
                                    color: Colors.white,
                                  ),
                                ),
                              )
                            : SizedBox(),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: deviceWidth > 600 ? 100 : 40, left: 0, right: 0),
                    child: Container(
                      height: deviceWidth > 600 ? 2800 : 1200,
      
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
                            imgAd: "images/p1.jpg",
                            industry: "Wearables",
                            aText: "Research",
                            bText: "Branding",
                          ),
                          ProductCard(
                            productName: "Smart Bottel",
                            imgAd: "images/p2.jpg",
                            industry: "Wearables",
                            aText: "ok",
                            bText: "ok",
                          ),
                          ProductCard(
                            productName: "Smart Bottel",
                            imgAd: "images/p3.jpg",
                            industry: "Wearables",
                            aText: "ok",
                            bText: "ok",
                          ),
                          ProductCard(
                            productName: "Smart Bottel",
                            imgAd: "images/p4.jpg",
                            industry: "Wearables",
                            aText: "ok",
                            bText: "ok",
                          ),
                          ProductCard(
                            productName: "Smart Bottel",
                            imgAd: "images/p5.jpg",
                            industry: "Wearables",
                            aText: "ok",
                            bText: "ok",
                          ),
                          ProductCard(
                            productName: "Smart Bottel",
                            imgAd: "images/p6.jpg",
                            industry: "Wearables",
                            aText: "ok",
                            bText: "ok",
                          ),
                          ProductCard(
                            productName: "Smart Bottel",
                            imgAd: "images/p7.jpg",
                            industry: "Wearables",
                            aText: "ok",
                            bText: "ok",
                          ),
                          ProductCard(
                            productName: "Smart Bottel",
                            imgAd: "images/p8.jpg",
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
                    child: Footer(),
                  )
                ]),
          ),
        ),
      ),
    );
  }
}
