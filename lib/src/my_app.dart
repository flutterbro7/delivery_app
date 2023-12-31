import 'package:flutter/material.dart';

import 'screens/registration_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Delivery App",
      home: RegistrationPage(),
    );
  }
}
