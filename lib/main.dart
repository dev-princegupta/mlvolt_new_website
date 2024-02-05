import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mlvolt_new_website/contactPage.dart';
import 'firebase_options.dart';
import 'homePage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);


  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        theme: ThemeData(
          appBarTheme: AppBarTheme( iconTheme: IconThemeData(color: Colors.white))
        ),
        debugShowCheckedModeBanner: false, home: HomePage());
  }
}
