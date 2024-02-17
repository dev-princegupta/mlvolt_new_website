import 'package:flutter/material.dart';

class OurStory extends StatelessWidget {
  const OurStory({super.key});

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;

    return deviceWidth > 600
        ? Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                width: 744,
                height: 579,
                child: Image.asset("assets/images/gridImage.png"),
              ),
              const SizedBox(
                width: 61,
              ),
              const Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Our Story",
                    style: TextStyle(
                      fontFamily: "bold",
                      color: Colors.white,
                      fontSize: 48,
                    ),
                  ),
                  SizedBox(
                    height: 44,
                  ),
                  SizedBox(
                    width: 310,
                    child: Text(
                      "Fuelled by relentless passion, we transform ideas into hardware and software products, unleashing innovation through dedicated design and engineering.",
                      style: TextStyle(
                          fontFamily: "regular",
                          color: Color(0xff8B8B8B),
                          fontSize: 24),
                    ),
                  )
                ],
              )
            ],
          )
        : Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                SizedBox(
                  width: deviceWidth,
                  height: 400,
                  child: Image.asset("assets/images/gridImage.png"),
                ),
                const SizedBox(
                height: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Our Story",
                      style: TextStyle(
                        fontFamily: "bold",
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                    const SizedBox(
                      height: 28,
                    ),
                    SizedBox(
                      width: deviceWidth - 20,
                      child: const Text(
                        "Fuelled by relentless passion, we transform ideas into hardware and software products, unleashing innovation through dedicated design and engineering.",
                        style: TextStyle(
                            fontFamily: "regular",
                            color: Color(0xff8B8B8B),
                            fontSize: 16),
                      ),
                    )
                  ],
                )
              ]);
  }
}
