import 'package:flutter/material.dart';

class BlogCard extends StatelessWidget {
   final String title;
   final String date;
   final String description;
   BlogCard({super.key, required this.title, required this.date, required this.description,});

  @override
  Widget build(BuildContext context) {

    return Container(
  // width: 320,
  //    height: 418,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Color(0xff2E2D2D),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
          //  height: 196,
            child: Image.asset('assets/images/13.png'),
          ),
          
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(this.title, style: TextStyle(fontSize: 18, fontFamily: 'regular', color: Color(0xffFF6006),),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(this.date, style: TextStyle(fontSize: 9, fontFamily: 'light', color: Colors.white,),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(this.description, style: TextStyle(fontSize: 10, fontFamily: 'light', color: Colors.white,),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 8, top: 20),
            child: Text("Read More", style: TextStyle(fontSize: 14, fontFamily: 'semibold', color: Color(0xff868686),),),
          ),

        ],
      ),
    );
  }
}