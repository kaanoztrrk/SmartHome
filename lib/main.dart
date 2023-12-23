import 'package:flutter/material.dart';
import 'package:smarthome/constants/app_colors.dart';
import 'package:smarthome/screen/smart_home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        theme: ThemeData(
            useMaterial3: true,
            scaffoldBackgroundColor: AppColor.bgColor,
            fontFamily: "Poppins"),
        home: const SmartHomeScreen());
  }
}
