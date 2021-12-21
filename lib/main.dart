import 'package:flutter/material.dart';
import 'package:picpay_clone_app/utils/contrains.dart';

import 'custom/my_custom_scroll_behavior.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: MyCustomScrollBehavior(),
      debugShowCheckedModeBanner: false,
      title: 'PicPay Clone',
      theme: ThemeData(
        primaryColor: darkColor,
        backgroundColor: lightColor,
        scaffoldBackgroundColor: lightColor,
        primaryTextTheme: Typography(platform: TargetPlatform.iOS).white,
        textTheme: Typography(platform: TargetPlatform.iOS).white,
      ),
      home: const HomePage(),
    );
  }
}
