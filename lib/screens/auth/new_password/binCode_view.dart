import 'package:cashkit/core/desgin/btn.dart';
import 'package:cashkit/screens/auth/new_password/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PinCodeScreen extends StatelessWidget {
  const PinCodeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/images/background.png",
            fit: BoxFit.fill,
            width: double.infinity,
            height: double.infinity,
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, top: 48),
            child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                  size: 30,
                )),
          ),
          const SizedBox(
            height: 80,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 16.0, top: 130),
            child: Text("Enter Code",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 25,
                    color: Colors.white)),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 200.0),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                width: double.infinity,
                height: 700,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24))),
                child: Column(
                  children: [
                    Row(
                      children: [
                         Text(
                          "Sent code on",
                          style: TextStyle(
                              fontSize: 17.sp,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff989898)),
                        ),
                        Text(
                          " lena123@gmail.com",
                          style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: Theme.of(context).primaryColor),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    PinCodeTextField(
                      appContext: (context),
                      keyboardType: TextInputType.number,
                      animationType: AnimationType.fade,
                      cursorColor: Theme.of(context).primaryColor,
                      animationDuration: const Duration(milliseconds: 300),
                      length: 5,
                      enableActiveFill: false,
                      pinTheme: PinTheme(
                        shape: PinCodeFieldShape.box,
                        fieldOuterPadding:
                        const EdgeInsets.symmetric(horizontal: 2),

                        borderRadius: BorderRadius.circular(15),
                        fieldHeight: 60.h,
                        fieldWidth: 60.w,
                        activeColor: Theme.of(context).primaryColor,
                        inactiveColor: const Color(0xffF3F3F3),
                        selectedColor: Theme.of(context).primaryColor,
                        // selectedFillColor: Colors.red,
                      ),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    BTN(text: "Verify", onPrees: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) =>newPass ()));
                    }),
                    const SizedBox(
                      height: 32,
                    ),
                    Text(
                      "Resend Code in 24s",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Theme.of(context).primaryColor),
                    ),
                    const Text(
                      "Resend Code",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xffBDBDBD)),
                    ),
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