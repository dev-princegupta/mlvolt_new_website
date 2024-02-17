import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mlvolt_new_website/pages/thankYouPage.dart';
import 'package:mlvolt_new_website/widgets/general%20widgets/customButton.dart';

class CustomContactForm extends StatefulWidget {
  const CustomContactForm({super.key});

  @override
  State<CustomContactForm> createState() => _CustomContactFormState();
}

class _CustomContactFormState extends State<CustomContactForm> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  final TextEditingController contactController = TextEditingController();

  final TextEditingController queryController = TextEditingController();

  // final databaseReference = FirebaseDatabase.instance.reference();

  Future<void> sendQuery() async {
    CollectionReference users = FirebaseFirestore.instance.collection('query');

    await users
        .doc(emailController.text)
        .set({
          'name': nameController.text,
          'email': emailController.text,
          'contact': contactController.text,
          'query': queryController.text
        })
        .then((value) {
          Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ThankYouPage()),
                      );
        })
        .catchError((error) => print("Problem: $error"));
  }

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;

    return Container(
      width: deviceWidth > 600 ? 400 : deviceWidth - 20,
      height: 560,
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(
          color: Colors.white,
          width: 2.0,
        ),
        borderRadius:
            BorderRadius.circular(10.0), // Adjust the radius as needed
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
              padding: const EdgeInsets.only(
                  left: 16, right: 16, bottom: 8, top: 20),
              child: TextField(
                controller: nameController,
                style: const TextStyle(color: Color(0xffFF6006)),
                cursorColor: const Color(0xffFF6006), // Cursor color

                decoration: const InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ), // Border color without focus

                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.white), // Border color when focused
                  ),
                  labelText: 'Name',
                  labelStyle:
                      TextStyle(color: Colors.white), // Label text color

                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white), // Border color
                  ),
                ),
              )),
          Padding(
              padding: const EdgeInsets.only(
                  left: 16, right: 16, bottom: 8, top: 20),
              child: TextField(
                controller: emailController,
                style: const TextStyle(color: Color(0xffFF6006)),
                cursorColor: const Color(0xffFF6006), // Cursor color

                decoration: const InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ), // Border color without focus

                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.white), // Border color when focused
                  ),
                  labelText: 'Email',
                  labelStyle:
                      TextStyle(color: Colors.white), // Label text color

                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white), // Border color
                  ),
                ),
              )),
          Padding(
              padding: const EdgeInsets.only(
                  left: 16, right: 16, bottom: 8, top: 20),
              child: TextField(
                controller: contactController,
                style: const TextStyle(color: Color(0xffFF6006)),
                cursorColor: const Color(0xffFF6006), // Cursor color

                decoration: const InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ), // Border color without focus

                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.white), // Border color when focused
                  ),
                  labelText: 'Contact',
                  labelStyle:
                      TextStyle(color: Colors.white), // Label text color

                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white), // Border color
                  ),
                ),
              )),
          Padding(
              padding: const EdgeInsets.only(
                  left: 16, right: 16, bottom: 8, top: 20),
              child: TextField(
                controller: queryController,
                maxLines: 5, // Adjust the number of lines

                style: const TextStyle(color: Color(0xffFF6006)),
                cursorColor: const Color(0xffFF6006), // Cursor color

                decoration: const InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ), // Border color without focus

                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.white), // Border color when focused
                  ),
                  labelText: 'Your Query',
                  labelStyle:
                      TextStyle(color: Colors.white), // Label text color

                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white), // Border color
                  ),
                ),
              )),
          Padding(
            padding: const EdgeInsets.only(right: 16, top: 20),
            child: CustomButton(
              onPressed: () async {
                await sendQuery();

              },
              buttonText: "   Submit   ",
              outlineColor: Color(0xffFF6006),
              textColor: Colors.white,
              hoverTextColor: Colors.black,
            ),
            // child: ElevatedButton(
            //   style: ElevatedButton.styleFrom(
            //       backgroundColor: const Color(0xffFF6006)),
            //   onPressed: () async{
            //     await sendQuery();
            //   },
            //   child: const Padding(
            //     padding:
            //         EdgeInsets.only(top: 8, bottom: 8, left: 15, right: 15),
            //     child: Text(
            //       "Submit",
            //       style: TextStyle(
            //           color: Colors.white, fontSize: 16, fontFamily: "medium"),
            //     ),
            //   ),
            // ),
          ),
        ],
      ),
    );
  }
}
