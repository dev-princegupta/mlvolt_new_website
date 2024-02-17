import 'package:flutter/material.dart';

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
    return  Container(
      width: deviceWidth>600? 300:deviceWidth-60,
      height: deviceWidth>600?280:60,
      color: color,
      child: Padding(
        padding: EdgeInsets.all(deviceWidth>600?40:18),
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
            SizedBox(
              height: deviceWidth>600?90:30,
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
}
