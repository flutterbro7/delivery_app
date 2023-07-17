import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';


import 'signup_page.dart';
import 'location_page.dart';
import 'widgets/infoText.dart';
import 'widgets/custom_buttons.dart';
import 'widgets/registration_text_fields.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
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
                child: Image.asset("assets/images/log_in_image.png"),
              ),
            ),
            Expanded(
              flex: 3,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const InfoText(
                      mainText: "Login",
                      text: "Enter your login details and password",
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 30, left: 20, right: 20),
                      child: RegistratonTextFields(
                        labelText: "Email",
                        hintText: "imshuvo97@gmail.com",
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 10, left: 20, right: 20),
                      child: RegistratonTextFields(
                        counterText: "Forgot Password?",
                        counterColor: Color(0xFFFF746B),
                        labelText: "Password",
                        hintText: "Enter password",
                        isObscure: true,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30, bottom: 5),
                      child: CustomButtons(
                        onTap: openLocationPage,
                        width: 264,
                        height: 57,
                        color: const Color(0xFFFF746B),
                        text: "Login Now",
                        textColor: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20, top: 10, right: 20, bottom: 20),
                      child: RichText(
                        text: TextSpan(
                          style: const TextStyle(
                            color: Color(0xFF000000),
                            fontSize: 14,
                            fontFamily: "Nunito",
                            fontWeight: FontWeight.w400,
                          ),
                          children: [
                            const TextSpan(text: "Don’t have account? "),
                            TextSpan(
                              recognizer: TapGestureRecognizer()
                                ..onTap = () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const SignUpPage(),
                                  ),
                                ),
                              text: "Create new account",
                              style: const TextStyle(
                                color: Color(0xFFFF746B),
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ],
                        ),
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
