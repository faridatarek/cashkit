

import 'package:cashkit/core/res/color.dart';
import 'package:cashkit/screens/Goals/create_goals/view.dart';
import 'package:cashkit/screens/auth/sign_up/view.dart';
import 'package:cashkit/screens/budget/Emergency_budget/mainCateg_emergency/view.dart';
import 'package:cashkit/screens/home/view.dart';
import 'package:cashkit/screens/nav_bar/view.dart';
import 'package:cashkit/screens/profile/view.dart';
import 'package:cashkit/screens/splash/logo.dart';
import 'package:cashkit/screens/splash/toggle_splash.dart';
import 'package:cashkit/screens/tab_bar/view.dart';
import 'package:cashkit/tesst.dart';
import 'package:cashkit/testt2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'screens/auth/new_password/view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'CashKit',
          theme: ThemeData(
            fontFamily: "Poppins",
            scaffoldBackgroundColor: const Color(0xffEFEFEF),
            primaryColor: getMaterialColor(primaryColor.value),
            primarySwatch: getMaterialColor(primaryColor.value),
          ),



          home:LogoScreen(),

        );
      },

    );
  }
}


