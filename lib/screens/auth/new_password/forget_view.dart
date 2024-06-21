import 'package:cashkit/core/desgin/btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'binCode_view.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/images/background.png",
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,

          ),
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 6.0, top: 60),
            child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },

                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                  size: 26.sp,
                )),
          ),
          SizedBox(
            height: 80.h,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, top: 145),
            child: Text("Forgot Password",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 22.sp,
                    color: Colors.white)),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 200.0),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                width: double.infinity.w,
                height: 700.h,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24.r),
                        topRight: Radius.circular(24.r))),
                child: Column(
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(top:10.h),
                      child: Text(
                        "Please enter your email to get a verification code.",
                        style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff989898)),
                      ),
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    Container(
                      height: 52.h,
                      child: TextFormField(
                        decoration: InputDecoration(

                          label: Text( "Email ",style: TextStyle(fontSize:14.sp,fontWeight: FontWeight.w400,color: Color(0xff989898))),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.r)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 32.h,
                    ),
                    BTN(text: "Get Code", onPrees: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) =>PinCodeScreen()));
                    })
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}