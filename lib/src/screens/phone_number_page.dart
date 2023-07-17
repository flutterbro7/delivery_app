import 'package:flutter/material.dart';

import 'get_code_page.dart';
import 'widgets/text_fields.dart';

class PhoneNumberPage extends StatefulWidget {
  const PhoneNumberPage({Key? key}) : super(key: key);

  @override
  State<PhoneNumberPage> createState() => _PhoneNumberPageState();
}

class _PhoneNumberPageState extends State<PhoneNumberPage> {
  void openGetCodePage() => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const GetCodePage()),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Image.asset(
                "assets/images/women.png",
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Text(
                    "Enter your Phone number",
                    style: TextStyle(
                      fontSize: 28,
                      color: Color(0xFF353535),
                      fontFamily: "Nunito",
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 25, right: 25),
                  child: TextFields(
                    onTap: openGetCodePage,
                    keyboardType: TextInputType.number,
                    suffixIcon: "assets/images/next.png",
                    imagePath: "assets/images/flag.png",
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
