import 'package:flutter/material.dart';
import 'package:mlvolt_new_website/widgets/general%20widgets/customAppbar.dart';
import 'package:mlvolt_new_website/widgets/general%20widgets/drawerItems.dart';

class BlogPage extends StatelessWidget {
  const BlogPage({super.key});

  @override
  Widget build(BuildContext context) {
        double deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xff151515),
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: CustomAppBar()),
      drawer: deviceWidth < 600 ? const CustomDrawer() : null,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SizedBox(
            height: deviceWidth > 600 ? 3750 : 2170,
            child: Column(
              
            ))));
  }
}