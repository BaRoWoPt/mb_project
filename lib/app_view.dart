import 'package:flutter/material.dart';

import 'screens/home/views/home_screen.dart';

class MyAppView extends StatelessWidget {
  const MyAppView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Quan ly tai chinh",
      theme: ThemeData(
          colorScheme: ColorScheme.light(
              surface: Colors.grey.shade100,
              onSurface: Colors.black,
              primary: const Color.fromARGB(255, 41, 138, 56),
              secondary: const Color.fromARGB(255, 216, 110, 235),
              tertiary: const Color(0xFFFF8D6C),
              outline: Colors.grey.shade400)),
      home: HomeScreen(),
    );
  }
}
