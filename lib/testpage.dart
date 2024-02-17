import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'widgets/home widgets/homeCards.dart';


class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {

   int _currentIndex = 0;
  CarouselController _carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
    
      body: SizedBox(
        width: 500,
        height: 500,
        child: CarouselSlider(
          items: [
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
      ),
    );
  }
}