import 'package:flutter/material.dart';
import 'package:mlvolt_new_website/pages/aboutPage.dart';
import 'package:mlvolt_new_website/pages/contactPage.dart';
import 'package:mlvolt_new_website/pages/homePage.dart';
import 'package:mlvolt_new_website/pages/productsPage.dart';

import '../../pages/servicesPage.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xff000000),
            shape: const Border(right: BorderSide(color: Colors.transparent, width: 0.0)),

      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Color(0xff151515),
            ),
            child: 
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // SizedBox(
                //   width: 100,
                //   height: 100,
                //   child: Image.asset("assets/images/mlvoltlogo.jpg"),
                // ),

              
              ],
            ),
            
           
          ),
          DrawerItem(
              text: 'Home',
              onTap: () => Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage()),
                  )),
          DrawerItem(
              text: 'About',
              onTap: () => Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AboutPage()),
                  )),
          DrawerItem(
              text: 'Services',
              onTap: () => Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ServicesPage()),
                  )),
          DrawerItem(
              text: 'Projects',
              onTap: () => Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ProductsPage()),
                  )),
          DrawerItem(
              text: 'Contact',
              onTap: () => Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ContactPage()),
                  )),
        ],
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  const DrawerItem({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        text,
        style: const TextStyle(
            color: Colors.white, fontFamily: "regular", fontSize: 22),
      ),
      onTap: onTap,
    );
  }
}
