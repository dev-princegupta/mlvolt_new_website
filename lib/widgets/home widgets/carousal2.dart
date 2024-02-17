import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Carousal2 extends StatefulWidget {
  const Carousal2({super.key});

  @override
  State<Carousal2> createState() => _Carousal2State();
}

class _Carousal2State extends State<Carousal2> {
  int _currentIndex = 0;
  CarouselController _carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      // width: 500,
      height: 1500,
      child: CarouselSlider(
        items: [
          // Add your carousel items here
          SizedBox(
            width: deviceWidth > 600 ? 780 : 400,
            height: deviceWidth > 600 ? 618 : 400,
            child: Image.asset("assets/images/11.png"),
          ),
          SizedBox(
            width: deviceWidth > 600 ? 780 : 400,
            height: deviceWidth > 600 ? 618 : 400,
            child: Image.asset("assets/images/12.png"),
          ),
          SizedBox(
            width: deviceWidth > 600 ? 780 : 400,
            height: deviceWidth > 600 ? 618 : 400,
            child: Image.asset("assets/images/13.png"),
          ),
          SizedBox(
            width: deviceWidth > 600 ? 780 : 400,
            height: deviceWidth > 600 ? 618 : 400,
            child: Image.asset("assets/images/14.png"),
          ),
          SizedBox(
            width: deviceWidth > 600 ? 780 : 400,
            height: deviceWidth > 600 ? 618 : 400,
            child: Image.asset("assets/images/15.png"),
          ),
          SizedBox(
            width: deviceWidth > 600 ? 780 : 400,
            height: deviceWidth > 600 ? 618 : 400,
            child: Image.asset("assets/images/16.png"),
          ),
          SizedBox(
            width: deviceWidth > 600 ? 780 : 400,
            height: deviceWidth > 600 ? 618 : 400,
            child: Image.asset("assets/images/17.png"),
          ),
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
}
