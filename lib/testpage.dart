import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:provider/provider.dart';

import 'widgets/home widgets/homeCards.dart';


class TestPage extends StatelessWidget {
  const TestPage({super.key});

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    

    return Container(
      width: deviceWidth,
      child: Center(child: Text("Page1", style: TextStyle(fontSize: 100, color: Colors.white),)),
    );
  }
}