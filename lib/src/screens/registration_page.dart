import 'package:flutter/material.dart';

import 'get_started_page.dart';
import 'logIn_page.dart';
import 'widgets/custom_buttons.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  void openGetStartedPage() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const GetStartedPage(),
      ),
    );
  }
  void openLogInPage() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const LogInPage(),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3FFFD),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                child: Center(
                  child: Image.asset("assets/images/delivery_motorbike.png"),
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 30),
                      child: Text("Get the fastest\nDelivery groceries at home",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 28,
                        color: Color(0xFF353535),
                        fontFamily: "Nunito",
                        fontWeight: FontWeight.w600,
                      ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Text("Ger your groceries in as fast as one hour",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xB3353535),
                          fontFamily: "Nunito",
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: CustomButtons(
                        onTap: openGetStartedPage,
                        width: 264,
                        height: 57,
                        color: const Color(0xFFFF746B),
                        text: "Get Started",
                        textColor: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: CustomButtons(
                        onTap: openLogInPage,
                        width: 264,
                        height: 57,
                        color: Color(0xFF53B175),
                        text: "Log in",
                        textColor: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
