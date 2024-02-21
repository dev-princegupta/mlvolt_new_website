import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mlvolt_new_website/models/currentPage.dart';
import 'package:mlvolt_new_website/pages/aboutPage.dart';
import 'package:mlvolt_new_website/pages/blogPage.dart';
import 'package:mlvolt_new_website/pages/contactPage.dart';
import 'package:mlvolt_new_website/pages/productsPage.dart';
import 'package:mlvolt_new_website/pages/servicesPage.dart';
import 'package:mlvolt_new_website/pages/thankYouPage.dart';
import 'package:mlvolt_new_website/testpage.dart';
import 'package:mlvolt_new_website/testpage2.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';
import 'pages/homePage.dart';
import 'widgets/common widgets/customAppbar.dart';
import 'widgets/common widgets/customDrawer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    ChangeNotifierProvider(
      create: ((BuildContext context) => CurrentPage()),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    CurrentPage provider = Provider.of<CurrentPage>(context);
    double deviceWidth = MediaQuery.of(context).size.width;

    provider.updateDeviceSize(MediaQuery.of(context).size.width);


    Widget setPages() {
      Widget rt = const HomePage();
      if (provider.currentPage == 'HOME') {
        rt = const HomePage();
      } else if (provider.currentPage == 'ABOUT') {
        rt = const AboutPage();
      } else if (provider.currentPage == 'PROJECTS') {
        rt = const ProductsPage();
      } else if (provider.currentPage == 'SERVICES') {
        rt = const ServicesPage();
      } else if (provider.currentPage == 'BLOGS') {
        rt = const BlogPage();
      } else if (provider.currentPage == 'CONTACT') {
        rt = const ContactPage();
      }else if (provider.currentPage == 'THANKYOU') {
        rt = const ThankYouPage();
      }

      return rt;
    }

    return MaterialApp(
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
        iconTheme: IconThemeData(color: Colors.white),
      )),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: const Color(0xff151515),
          appBar: const PreferredSize(
            preferredSize: Size.fromHeight(70),
            child: CustomAppBar(),
          ),
          drawer: deviceWidth < 1200 ? const CustomDrawer() : null,
          body: setPages()),
    );
  }
}
