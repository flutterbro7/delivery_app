import 'package:flutter/material.dart';

import 'location_page.dart';
import 'widgets/custom_buttons.dart';
import 'widgets/infoText.dart';
import 'widgets/registration_text_fields.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  void backPage() {
    Navigator.pop(context);
  }

  void openLocationPage() => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const LocationPage(),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.transparent,
        leading: GestureDetector(
          onTap: backPage,
          child: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Center(
                child: Image.asset("assets/images/delivery_love.png"),
              ),
            ),
            Expanded(
              flex: 4,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const InfoText(
                      mainText: "Signup",
                      text: "Enter your details for new account",
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 10, left: 20, right: 20),
                      child: RegistratonTextFields(
                        labelText: "Name",
                        hintText: "Goldcrown Labs",
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 10, left: 20, right: 20),
                      child: RegistratonTextFields(
                        labelText: "Email",
                        hintText: "goldcrownlabs@gmail.com",
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 10, left: 20, right: 20),
                      child: RegistratonTextFields(
                        labelText: "Password",
                        hintText: "Enter password",
                        isObscure: true,
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 20, top: 10, right: 20),
                      child: RichText(
                        text: const TextSpan(
                          style: TextStyle(
                            color: Color(0xFF7C7C7C),
                            fontSize: 14,
                            fontFamily: "Nunito",
                            fontWeight: FontWeight.w400,
                          ),
                          children: [
                            TextSpan(text: "By continuing you agree to our "),
                            TextSpan(
                                text: "Terms of Service",
                                style: TextStyle(color: Color(0xFF53B175))),
                            TextSpan(text: " and "),
                            TextSpan(
                                text: "Privacy Policy.",
                                style: TextStyle(color: Color(0xFF53B175))),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 30, bottom: 30),
                      child: CustomButtons(
                        onTap: openLocationPage,
                        width: 264,
                        height: 57,
                        color: Color(0xFFFF746B),
                        text: "Register Now",
                        textColor: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
