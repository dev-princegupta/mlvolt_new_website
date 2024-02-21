import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:mlvolt_new_website/widgets/blog%20widgets/blogCard.dart';

class BlogPage extends StatelessWidget {
  const BlogPage({super.key});

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

    return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SizedBox(
            height: deviceWidth > 600 ? 3750 : 2170,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 60, bottom: 50),
                  child: Center(
                      child: Text(
                    "Read Articles",
                    style: TextStyle(
                      fontSize: 48,
                      fontFamily: "regular",
                      color: Colors.white,
                    ),
                  )),
                ),

                SizedBox(
                  width: deviceWidth*0.9,
                  height: device()=='mobile' ? 800 : device()=='desktop'? 1000:800,
                  child: FutureBuilder<QuerySnapshot>(
                      future:
                          FirebaseFirestore.instance.collection('blogs').get(),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return CircularProgressIndicator();
                        } else if (snapshot.hasError) {
                          print("error");
                          return Text('Error: ${snapshot.error}');
                        } else {
                          List<QueryDocumentSnapshot> cardData =
                              snapshot.data!.docs;
                          return GridView.builder(
                            gridDelegate:
                                 SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: device()=='mobile' ? 1 : device()=='desktop'? 3:3,
                                    crossAxisSpacing: 8.0,
                                    mainAxisSpacing: 8.0,
                                    childAspectRatio: 4 / 5.5),
                            itemCount: cardData.length,
                            itemBuilder: (context, index) {
                              return BlogCard(
                                  title: cardData[index]['title'],
                                  date: cardData[index]['published date'],
                                  description: cardData[index]['Description']);
                            },
                          );
                        }
                      }),
                ),

                // SizedBox(width: deviceWidth-300,
                // height: 900,
                //   child: GridView(

                //     scrollDirection: Axis.vertical,
                //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                //       childAspectRatio: 3/3.5,
                //       crossAxisCount: 3,
                //      crossAxisSpacing: 20,
                //      mainAxisSpacing: 20
                //     ),
                //     children: [
                //       BlogCard(),
                //       BlogCard(),
                //       BlogCard(),
                //       BlogCard(),
                //       BlogCard(),
                //       // Add more BlogCard widgets as needed
                //     ],
                //   ),
                // ),
              ],
            )));
  }
}
