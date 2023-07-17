import 'package:flutter/material.dart';

import 'phone_number_page.dart';
import 'widgets/text_fields.dart';
import 'widgets/custom_button_with_social.dart';

class GetStartedPage extends StatefulWidget {
  const GetStartedPage({Key? key}) : super(key: key);

  @override
  State<GetStartedPage> createState() => _GetStartedPageState();
}

class _GetStartedPageState extends State<GetStartedPage> {
  void openPhoneNumberPage() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const PhoneNumberPage(),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Image.asset("assets/images/vegetables.png"),
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 30),
                      child: Text(
                        "Get your groceries on\nyour door step",
                        style: TextStyle(
                          fontSize: 28,
                          color: Color(0xFF353535),
                          fontFamily: "Nunito",
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 50, right: 50),
                      child: TextFields(
                        onTap: openPhoneNumberPage,
                        keyboardType: TextInputType.number,
                        suffixIcon: "assets/images/next.png",
                        imagePath: "assets/images/flag.png",
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 30, bottom: 50),
                      child: Text(
                        "Or connect with social media",
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF828282),
                          fontFamily: "Nunito",
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    const SocialButtons(
                      text: "Sign in with Google",
                      color: Colors.white,
                      boxShadow: [BoxShadow(
                        color: Colors.black38,
                        blurRadius: 5,
                      )],
                      image: "assets/images/google.png",
                      textColor: Colors.black,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 10, bottom: 30),
                      child: SocialButtons(
                        text: "Continue with Facebook",
                        color: Color(0xFF4A66AC),
                        image: "assets/images/facebook.png",
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
