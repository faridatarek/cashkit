
import 'package:cashkit/budget/Emergency_budget/mainCateg_emergency/view.dart';
import 'package:cashkit/budget/wants_budget/mainCateg_wants/view.dart';
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


          home:MainCateg_emergency (),

        );
      },

    );
  }
}


