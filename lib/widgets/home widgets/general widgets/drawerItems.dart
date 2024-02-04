import 'package:flutter/material.dart';
import 'package:mlvolt_new_website/aboutPage.dart';
import 'package:mlvolt_new_website/contactPage.dart';
import 'package:mlvolt_new_website/homePage.dart';
import 'package:mlvolt_new_website/productsPage.dart';

import '../../../servicesPage.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xff2E2D2D),
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: 
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 100,
                  height: 100,
                  child: Image.asset("Images/mlvoltlogo.jpg"),
                ),

              
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

  const DrawerItem({required this.text, required this.onTap});

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
