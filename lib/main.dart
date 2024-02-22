import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mlvolt_new_website/models/currentPage.dart';
import 'package:mlvolt_new_website/pages/aboutPage.dart';
import 'package:mlvolt_new_website/pages/blogPage.dart';
import 'package:mlvolt_new_website/pages/contactPage.dart';
import 'package:mlvolt_new_website/pages/productsPage.dart';
import 'package:mlvolt_new_website/pages/servicesPage.dart';
import 'package:mlvolt_new_website/pages/thankYouPage.dart';

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
    return MaterialApp(
      initialRoute: '/home',
      routes: {
        '/home':(context) => const HomePage(),
        '/about':(context) => const AboutPage(),
        '/projects':(context) => const ProductsPage(),
        '/services':(context) => const ServicesPage(),
        '/blogs':(context) => const BlogPage(),
        '/contact':(context) => const ContactPage(),
        '/thankyou':(context) => const ThankYouPage(),
      },
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
        iconTheme: IconThemeData(color: Colors.white),
      )),
      debugShowCheckedModeBanner: false,);
  }
}
