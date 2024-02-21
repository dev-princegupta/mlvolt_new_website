import 'package:flutter/material.dart';

class TestPage2 extends StatelessWidget {
  const TestPage2({super.key});

  @override
  Widget build(BuildContext context) {
        double deviceWidth = MediaQuery.of(context).size.width;

    return Container(
      child: Text("page2", style: TextStyle(fontSize: 100, color: Colors.white),),
    );
  }
}