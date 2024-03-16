import 'package:flutter/material.dart';

class CardInfo extends StatelessWidget {
  const CardInfo(
      {super.key,
      required this.icon,
      required this.miColor1,
      required this.miColor2,
      required this.text});

  final IconData icon;
  final Color miColor1;
  final Color miColor2;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
      child: ListTile(
        leading: Icon(
          icon,
          color: miColor1,
        ),
        title: Text(
          textAlign: TextAlign.center,
          text,
          style: TextStyle(
            color: miColor2,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w300,
            fontSize: 20,
            // letterSpacing: 3.5,
          ),
        ),
      ),
    );
  }
}
