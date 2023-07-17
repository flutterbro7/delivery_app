import 'package:flutter/material.dart';

import 'signup_page.dart';
import 'widgets/registration_text_fields.dart';

class GetCodePage extends StatefulWidget {
  const GetCodePage({Key? key}) : super(key: key);

  @override
  State<GetCodePage> createState() => _GetCodePageState();
}

class _GetCodePageState extends State<GetCodePage> {
  void backPage() {
    Navigator.pop(context);
  }

  void openSignUpPage() => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const SignUpPage(),
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
            const Padding(
              padding:
                  EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 50),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Enter your 4-digit code",
                  style: TextStyle(
                    fontSize: 25,
                    fontFamily: "Nunito",
                    color: Color(0xFF353535),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: RegistratonTextFields(
                counterText: "Resend Code",
                counterColor: Color(0xFF53B175),
                inputAction: TextInputAction.done,
                labelText: "Code",
                hintText: "- - - -",
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: openSignUpPage,
                  child: const SizedBox(
                    height: 66,
                    width: 66,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Color(0xFFFF746B),
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Image(
                          width: 30,
                          height: 30,
                          image: AssetImage("assets/images/next.png"),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
