import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/Network/NetworkHandler/network_binding.dart';
import 'package:portfolio/UI/View/HomePageModule/homepage.dart';
import 'package:portfolio/Utils/Constants/style_constant.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: NetworkBinding(),
      debugShowCheckedModeBanner: false,
      title: 'Dharti S. Chauhan',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF0700B1)),
        inputDecorationTheme: AppStyle.dDefaultInputDecorationTheme,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}

