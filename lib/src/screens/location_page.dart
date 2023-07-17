import 'package:flutter/material.dart';

import 'widgets/custom_buttons.dart';
import 'widgets/infoText.dart';

class LocationPage extends StatefulWidget {
  const LocationPage({Key? key}) : super(key: key);

  @override
  State<LocationPage> createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  void backPage() {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      backgroundColor: Colors.white,
      body: const SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Center(
                child: Image(
                  image: AssetImage("assets/images/map_one.png"),
                ),
              ),
            ),
            Expanded(
              child: InfoText(
                mainText: "Select Your Location",
                text:
                    "Swithch on your location to stay in tune with what’s happening in your area",
              ),
            ),
            Expanded(
              flex: 3,
              child: Stack(
                children: [
                  Center(
                    child: Image(
                      width: double.infinity,
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/map_two.png"),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: SizedBox(
                      height: 85,
                      width: 177,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: Center(
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              "4140 Parker Rd. Allentown, New Mexico 31134 USA",
                              style: TextStyle(
                                  color: Color(0xFF353535),
                                  fontSize: 12,
                                  fontFamily: "Nunito"),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30, bottom: 30),
              child: CustomButtons(
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
    );
  }
}
