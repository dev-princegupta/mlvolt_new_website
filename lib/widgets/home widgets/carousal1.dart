import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mlvolt_new_website/widgets/common%20widgets/responsiveLayout.dart';

import 'homeCards.dart';

class Carousal1 extends StatefulWidget {
  const Carousal1({super.key});

  @override
  State<Carousal1> createState() => _Carousal1State();
}

class _Carousal1State extends State<Carousal1> {
  int _currentIndex = 0;
  CarouselController _carouselController = CarouselController();

  Widget desktop(){
    return SizedBox(
      // width: 500,
      height: 1500,
      child: CarouselSlider(
        items: const [
          // Add your carousel items here
          HomeCard(
            imgAd: "assets/images/headphone1.png",
            productName: "Head Phone Design",
            clientName: "Mr. Amit Sinha",
          ),
          HomeCard(
            imgAd: "assets/images/earbuds1.png",
            productName: "Earbuds Design",
            clientName: "Mr. Sachin Verma",
          ),
          HomeCard(
            imgAd: "assets/images/earbuds2.png",
            productName: "Earbuds Design",
            clientName: "Mr. Sachin Verma",
          ),
          HomeCard(
            imgAd: "assets/images/speaker1.png",
            productName: "Smart Speaker Design",
            clientName: "Mr. Robert D",
          ),
          HomeCard(
            imgAd: "assets/images/bottel.png",
            productName: "Smart Bottel Design",
            clientName: "Mr. Mark H",
          ),
          // Add more images as needed
        ],
        options: CarouselOptions(
          autoPlayInterval: Duration(seconds: 2),
          autoPlay: true, // Set to true for auto-scrolling
          enlargeCenterPage: true,
          onPageChanged: (index, reason) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
        carouselController: _carouselController,
      ),
    );
  }
  
  Widget tab(){
    return SizedBox(
      width: 300,
      height: 400,
      child: CarouselSlider(
        items: const [
          // Add your carousel items here
          HomeCard(
            imgAd: "assets/images/headphone1.png",
            productName: "Head Phone Design",
            clientName: "Mr. Amit Sinha",
          ),
          HomeCard(
            imgAd: "assets/images/earbuds1.png",
            productName: "Earbuds Design",
            clientName: "Mr. Sachin Verma",
          ),
          HomeCard(
            imgAd: "assets/images/earbuds2.png",
            productName: "Earbuds Design",
            clientName: "Mr. Sachin Verma",
          ),
          HomeCard(
            imgAd: "assets/images/speaker1.png",
            productName: "Smart Speaker Design",
            clientName: "Mr. Robert D",
          ),
          HomeCard(
            imgAd: "assets/images/bottel.png",
            productName: "Smart Bottel Design",
            clientName: "Mr. Mark H",
          ),
          // Add more images as needed
        ],
        options: CarouselOptions(
          autoPlayInterval: Duration(seconds: 2),
          autoPlay: true, // Set to true for auto-scrolling
          enlargeCenterPage: true,
          onPageChanged: (index, reason) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
        carouselController: _carouselController,
      ),
    );
  }
  
  Widget mobile(){
    return  SizedBox(
      // width: 200,
      // height: 300,
      child: CarouselSlider(
        items: const [
          // Add your carousel items here
          HomeCard(
            imgAd: "assets/images/headphone1.png",
            productName: "Head Phone Design",
            clientName: "Mr. Amit Sinha",
          ),
          HomeCard(
            imgAd: "assets/images/earbuds1.png",
            productName: "Earbuds Design",
            clientName: "Mr. Sachin Verma",
          ),
          HomeCard(
            imgAd: "assets/images/earbuds2.png",
            productName: "Earbuds Design",
            clientName: "Mr. Sachin Verma",
          ),
          HomeCard(
            imgAd: "assets/images/speaker1.png",
            productName: "Smart Speaker Design",
            clientName: "Mr. Robert D",
          ),
          HomeCard(
            imgAd: "assets/images/bottel.png",
            productName: "Smart Bottel Design",
            clientName: "Mr. Mark H",
          ),
          // Add more images as needed
        ],
        options: CarouselOptions(
          autoPlayInterval: Duration(seconds: 2),
          autoPlay: true, // Set to true for auto-scrolling
          enlargeCenterPage: true,
          onPageChanged: (index, reason) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
        carouselController: _carouselController,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: mobile(), 
      tablet: tab(), 
      desktop: desktop());

}
}