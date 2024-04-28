
import 'package:cashkit/screens/Goals/all_goals/view.dart';
import 'package:cashkit/screens/charts/view.dart';
import 'package:cashkit/screens/home/view.dart';
import 'package:cashkit/screens/premium_view.dart';
import 'package:cashkit/screens/nav_bar/view.dart';
import 'package:cashkit/screens/rating/view.dart';
import 'package:cashkit/screens/splash/logo.dart';
import 'package:cashkit/screens/splash/toggle_splash.dart';
import 'package:cashkit/tesst.dart';
import 'package:cashkit/testt2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
            primaryColor:Color(0xff047857),

            fontFamily: "Poppins",

            scaffoldBackgroundColor: Color(0xffEFEFEF),

          ),


          home:EditQuestionScreen (),

        );
      },

    );
  }
}


