import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;

    return Drawer(
      width: deviceWidth * 0.65,
      backgroundColor: const Color(0xffFF6006), //const Color(0xff000000),
      shape: const Border(
          right: BorderSide(color: Colors.transparent, width: 0.0)),
      child: ListView(
        children: [
          SizedBox(
            height: deviceWidth > 600 && deviceWidth < 1200 ? 200 : 100,
          ),
          const DrawerItem(displayText: "Home", navigatorText: "/home"),
          const DrawerItem(displayText: "About", navigatorText: "/about"),
          const DrawerItem(displayText: "Projects", navigatorText: "/projects"),
          const DrawerItem(displayText: "Services", navigatorText: "/services"),
          const DrawerItem(displayText: "Blogs", navigatorText: "/blogs"),
          const DrawerItem(displayText: "Contact", navigatorText: "/contact"),
        ],
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  final String displayText;
  final String navigatorText;

  const DrawerItem({
    super.key,
    required this.displayText,
    required this.navigatorText,
  });

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    
    return Padding(
      padding: EdgeInsets.only(
        left: deviceWidth > 600 && deviceWidth < 1200 ? 150 : 50,
        top: deviceWidth > 600 && deviceWidth < 1200 ? 30 : 20,
      ),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, navigatorText);
        },
        child: Text(
          displayText,
          style: TextStyle(
              color: Colors.white,
              fontSize: deviceWidth > 600 && deviceWidth < 1200 ? 50 : 30,
              fontFamily: "medium"),
        ),
      ),
    );
  }
}
