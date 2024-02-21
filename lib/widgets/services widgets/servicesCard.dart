import 'package:flutter/material.dart';

class ServicesCard extends StatelessWidget {
  final String title;
  final String body;
  final String imageAd;
  final String align;
  const ServicesCard({
    super.key,
    required this.title,
    required this.body,
    required this.align,
    required this.imageAd,
  });

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

    return align=="right"?    Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          title,
          style: TextStyle(
              fontFamily: "bold", fontSize: device()=='mobile' ? 40 : device()=='desktop'? 90:50, color: Colors.white),
        ),
        SizedBox(height: device()=='mobile' ? 10 : device()=='desktop'? 92:20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width:  device()=='mobile' ? deviceWidth*0.4 : device()=='desktop'? 300:100,
                  child: Text(
                    body,
                    style: TextStyle(
                        fontFamily: "regular",
                        fontSize: device()=='mobile' ? 14 : device()=='desktop'? 20:14,
                        color: const Color(0xff868686)),
                  ),
                ),
                 SizedBox(
                  height: deviceWidth>600? 67:20,
                ),
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                      side:
                          const BorderSide(color: Color(0xffFF6006), width: 2)),
                  child:  Padding(
                    padding: EdgeInsets.all(deviceWidth>600?15:8),
                    child: Text(
                      "Know More",
                      style: TextStyle(
                        fontFamily: "light",
                        color: const Color(0xff7A7A7A),
                        fontSize: device()=='mobile' ? 16 : device()=='desktop'? 22: 20,
                      ),
                    ),
                  ),
                )
              ],
            ),
             SizedBox(
              width:  device()=='mobile' ? deviceWidth*0.5 : device()=='desktop'? 800: deviceWidth*0.5,
              height: device()=='mobile' ? 220 : device()=='desktop'? 450: deviceWidth*300,
              child: Image.asset(imageAd),
            ),
          ],
        )
      ],
    ) : Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
              fontFamily: "bold", fontSize: device()=='mobile' ? 40 : device()=='desktop'? 90:50, color: Colors.white),
        ),
        SizedBox(
          height: deviceWidth>600? 67:20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
                width:  device()=='mobile' ? deviceWidth*0.5 : device()=='desktop'? 800: deviceWidth*0.5,
              height: device()=='mobile' ? 220 : device()=='desktop'? 450: deviceWidth*300,
              child: Image.asset(imageAd),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  width: deviceWidth>600?300:deviceWidth*0.4,
                  child: Text(
                    body,
                    style: TextStyle(
                        fontFamily: "regular",
                        fontSize: deviceWidth>600?20:14,
                        color: const Color(0xff868686)),
                  ),
                ),
                SizedBox(
                  height: deviceWidth>600? 67:20,
                ),
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                      side:
                          const BorderSide(color: Color(0xffFF6006), width: 2)),
                  child:  Padding(
                    padding: EdgeInsets.all(deviceWidth>600?15:8),
                    child: Text(
                      "Know More",
                      style: TextStyle(
                        fontFamily: "light",
                        color: const Color(0xff7A7A7A),
                        fontSize: deviceWidth>600?22:16,
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        )
      ],
    );
  }
}
