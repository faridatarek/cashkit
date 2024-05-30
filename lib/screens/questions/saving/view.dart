import 'package:animate_do/animate_do.dart';
import 'package:cashkit/screens/questions/q_sex/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SavingScreen extends StatelessWidget {
  const SavingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/backq.png',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Saving Fund !",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
                ),
                SizedBox(
                  height: 24.h,
                ),
                Text(
                  "Now you can save from your total budget",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                ),
                SizedBox(
                  height: 24.h,
                ),
                Container(
                  height: 48.h,
                  width: 248.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                    border: Border.all(color: Colors.white),

                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "1000",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w700,color: Colors.black),
                      ),
                      SizedBox(width: 10.w,),
                      Text(
                        "EGP",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w700,color: Colors.black),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 56.h,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 53.0),
                  child: Align(
                    alignment: AlignmentDirectional.center,
                    child: Text(
                      textAlign: TextAlign.center,
                      "Do you want to carry on and make a saving box of your own?",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 48.h,
                ),
                Row(
                  children: [
                    Spacer(),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(backgroundColor: Theme.of(context).primaryColor,
                          shape: RoundedRectangleBorder(

                              borderRadius: BorderRadius.circular(8)),
                          fixedSize: Size(100.w, 48.h),
                        ),
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              Future.delayed(Duration(seconds: 3), () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => QuestionSexScreen(),)); // Close the dialog
                              });
                              return AlertDialog(
                                title: JelloIn
                                  (
                                  duration: Duration(seconds: 2),
                                  child: Image.asset(
                                    "assets/images/goodsave.png",
                                    width: 118.w,
                                    height: 118.h,
                                  ),
                                ),
                                titlePadding: EdgeInsets.symmetric(vertical: 32),
                                actions: [
                                  Column(
                                    children: [
                                      Text(
                                        "Great choice!",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 23),
                                      ),
                                      SizedBox(height: 8.h,),
                                      Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                          padding: const EdgeInsets.only(bottom: 28.0,right: 22,left: 22),
                                          child: Text(
                                            textAlign: TextAlign.center,
                                            "Now you will save EGP 1000 this month in your saving box.",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 16),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              );
                            },
                          );
                        },
                        child: Text("Save")),
                    Spacer(),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            fixedSize: Size(100.w, 48.h),
                            side: BorderSide(
                                color: Theme.of(context).primaryColor),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            backgroundColor: Colors.white),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => QuestionSexScreen(),));
                        },
                        child: Text(
                          "Cancel",
                          style:
                              TextStyle(color: Theme.of(context).primaryColor),
                        )),
                    Spacer(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
