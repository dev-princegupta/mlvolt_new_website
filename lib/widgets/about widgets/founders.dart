import 'package:flutter/material.dart';
import 'package:mlvolt_new_website/widgets/common%20widgets/responsiveLayout.dart';

class Founders extends StatelessWidget {
  const Founders({super.key});

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;

    Widget mobile(){
      return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Person(imgAdd: "assets/images/prince.jpg", name: "Prince Gupta"),
            SizedBox(
              width: 12,
            ),
            Person(imgAdd: "assets/images/atulsir.jpg", name: "Atul Maurya"),
          ],
        ),
        const SizedBox(
          height: 50,
        ),
         const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Person(imgAdd: "assets/images/prince.jpg", name: "Prince Gupta"),
            SizedBox(
              width: 12,
            ),
            Person(imgAdd: "assets/images/atulsir.jpg", name: "Atul Maurya"),
            SizedBox(
              width:  12,
            ),
            Person(imgAdd: "assets/images/atulsir.jpg", name: "Atul Maurya"),
            SizedBox(
              width: 12,
            ),
            Person(imgAdd: "assets/images/atulsir.jpg", name: "Atul Maurya"),
            SizedBox(
              width: 12,
            ),
          ],
        ),
        SizedBox(
          height: deviceWidth>600? 50: 18,
        ),
         const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Person(imgAdd: "assets/images/prince.jpg", name: "Prince Gupta"),
            SizedBox(
              width: 12,
            ),
            Person(imgAdd: "assets/images/atulsir.jpg", name: "Atul Maurya"),
            SizedBox(
              width: 12,
            ),
            Person(imgAdd: "assets/images/atulsir.jpg", name: "Atul Maurya"),
            SizedBox(
              width: 12,
            ),
            Person(imgAdd: "assets/images/atulsir.jpg", name: "Atul Maurya"),
            SizedBox(
              width:  12,
            ),
          ],
                 ),
      ],
    );
    }

    Widget desktop(){
      return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Person(imgAdd: "assets/images/prince.jpg", name: "Prince Gupta"),
            SizedBox(
              width: deviceWidth>600? 40: 12,
            ),
            const Person(imgAdd: "assets/images/atulsir.jpg", name: "Atul Maurya"),
          ],
        ),
        SizedBox(
          height: deviceWidth>600? 100: 50,
        ),
         Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Person(imgAdd: "assets/images/prince.jpg", name: "Prince Gupta"),
            SizedBox(
              width: deviceWidth>600? 40: 12,
            ),
            const Person(imgAdd: "assets/images/atulsir.jpg", name: "Atul Maurya"),
            SizedBox(
              width: deviceWidth>600? 40: 12,
            ),
            const Person(imgAdd: "assets/images/atulsir.jpg", name: "Atul Maurya"),
            SizedBox(
              width: deviceWidth>600? 40: 12,
            ),
            const Person(imgAdd: "assets/images/atulsir.jpg", name: "Atul Maurya"),
            SizedBox(
              width: deviceWidth>600? 40: 12,
            ),
          ],
        ),
        SizedBox(
          height: deviceWidth>600? 50: 18,
        ),
         Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Person(imgAdd: "assets/images/prince.jpg", name: "Prince Gupta"),
            SizedBox(
              width: deviceWidth>600? 40: 12,
            ),
            const Person(imgAdd: "assets/images/atulsir.jpg", name: "Atul Maurya"),
            SizedBox(
              width: deviceWidth>600? 40: 12,
            ),
            const Person(imgAdd: "assets/images/atulsir.jpg", name: "Atul Maurya"),
            SizedBox(
              width: deviceWidth>600? 40: 12,
            ),
            const Person(imgAdd: "assets/images/atulsir.jpg", name: "Atul Maurya"),
            SizedBox(
              width: deviceWidth>600? 40: 12,
            ),
          ],
        ),
      ],
    );
    }

    Widget tab(){
      return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Person(imgAdd: "assets/images/prince.jpg", name: "Prince Gupta"),
            SizedBox(
              width:  16,
            ),
            Person(imgAdd: "assets/images/atulsir.jpg", name: "Atul Maurya"),
          ],
        ),
        SizedBox(
          height:  50,
        ),
         Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Person(imgAdd: "assets/images/prince.jpg", name: "Prince Gupta"),
            SizedBox(
              width:  16,
            ),
            Person(imgAdd: "assets/images/atulsir.jpg", name: "Atul Maurya"),
            SizedBox(
              width:  16,
            ),
            Person(imgAdd: "assets/images/atulsir.jpg", name: "Atul Maurya"),
            SizedBox(
              width: 16,
            ),
            Person(imgAdd: "assets/images/atulsir.jpg", name: "Atul Maurya"),
            SizedBox(
              width:  16,
            ),
          ],
        ),
        SizedBox(
          height: 40,
        ),
         Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Person(imgAdd: "assets/images/prince.jpg", name: "Prince Gupta"),
            SizedBox(
              width: 16,
            ),
            Person(imgAdd: "assets/images/atulsir.jpg", name: "Atul Maurya"),
            SizedBox(
              width:  16,
            ),
            Person(imgAdd: "assets/images/atulsir.jpg", name: "Atul Maurya"),
            SizedBox(
              width: 16,
            ),
            Person(imgAdd: "assets/images/atulsir.jpg", name: "Atul Maurya"),
            SizedBox(
              width:  16,
            ),
          ],
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

class Person extends StatelessWidget {
  final String imgAdd;
  final String name;
  const Person({
    super.key,
    required this.imgAdd,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;

    Widget mobile (){
      return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 60,
          height: 60,
          child: Image.asset(imgAdd),
        ),
       const  SizedBox(
          height: 10,
        ),
        Text(
          name,
          style: const TextStyle(
            fontFamily: "medium",
            color: Color(0xffFF6006),
            fontSize: 10,
          ),
        ),
        
        const Text(
          "Co-Founder",
          style: TextStyle(
            fontFamily: "regular",
            color: Color(0xff868686),
            fontSize:  8,
          ),
        )
      ],
    );
    }

    Widget desktop(){
       return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 200,
          height: 200,
          child: Image.asset(imgAdd),
        ),
       const  SizedBox(
          height: 10,
        ),
        Text(
          name,
          style: const TextStyle(
            fontFamily: "medium",
            color: Color(0xffFF6006),
            fontSize: 28,
          ),
        ),
        
        const Text(
          "Co-Founder",
          style: TextStyle(
            fontFamily: "regular",
            color: Color(0xff868686),
            fontSize:  16,
          ),
        )
      ],
    );
    }

    Widget tab(){
      return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 130,
          height: 130,
          child: Image.asset(imgAdd),
        ),
       const  SizedBox(
          height: 10,
        ),
        Text(
          name,
          style: const TextStyle(
            fontFamily: "medium",
            color: Color(0xffFF6006),
            fontSize: 18,
          ),
        ),
        
        const Text(
          "Co-Founder",
          style: TextStyle(
            fontFamily: "regular",
            color: Color(0xff868686),
            fontSize:  16,
          ),
        )
      ],
    );
    }

    return ResponsiveLayout(
      mobile: mobile(), 
      tablet: tab(), 
      desktop: desktop());
  }
}
