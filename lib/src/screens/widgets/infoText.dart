import 'package:flutter/material.dart';

class InfoText extends StatelessWidget {
  final String mainText;
  final String text;

  const InfoText({
    required this.mainText,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            mainText,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Color(0xFF353535),
                fontSize: 26,
                fontFamily: "Nunito",
                fontWeight: FontWeight.w700),
          ),
          SizedBox(height: 10),
          Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Color(0xFF7C7C7C),
                fontSize: 16,
                fontFamily: "Nunito",
                fontWeight: FontWeight.w700),
          ),
        ],
      ),
    );
  }
}
