import 'package:flutter/material.dart';
import 'package:mlvolt_new_website/widgets/common%20widgets/responsiveLayout.dart';

class ClientCard extends StatelessWidget {
  final Color color;
  final String clientName;
  final String serviceName;
  final String description;
  const ClientCard({
    super.key,
    required this.color,
    required this.clientName,
    required this.serviceName,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;

    Widget tab(){
      return Container(
      width: 250,
      height: 220,
      color: color,
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              clientName,
              style: const TextStyle(
                fontFamily: 'medium',
                fontSize: 22,
                color: Colors.white,
              ),
            ),
           const SizedBox(
              height: 60,
            ),
             Text(
              serviceName,
              style: const TextStyle(
                fontFamily: 'medium',
                fontSize: 18,
                color: Colors.white,
              ),
            ),
             Text(
              description,
              style: const TextStyle(
                fontFamily: 'thin',
                fontSize: 12,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
    }

    Widget mobile(){
      return Container(
      width: 250,
      height: 220,
      color: color,
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              clientName,
              style: const TextStyle(
                fontFamily: 'medium',
                fontSize: 22,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height:30,
            ),
             Text(
              serviceName,
              style: const TextStyle(
                fontFamily: 'medium',
                fontSize: 18,
                color: Colors.white,
              ),
            ),
             Text(
              description,
              style: const TextStyle(
                fontFamily: 'thin',
                fontSize: 12,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
    }

    Widget desktop(){
      return Container(
      width: 300,
      height:280,
      color: color,
      child: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              clientName,
              style: const TextStyle(
                fontFamily: 'medium',
                fontSize: 28,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 90,
            ),
             Text(
              serviceName,
              style: const TextStyle(
                fontFamily: 'medium',
                fontSize: 28,
                color: Colors.white,
              ),
            ),
             Text(
              description,
              style: const TextStyle(
                fontFamily: 'thin',
                fontSize: 16,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
    }

    return  ResponsiveLayout(
      mobile: mobile(), 
      tablet: tab(), 
      desktop: desktop());
  }
}
