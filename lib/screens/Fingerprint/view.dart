import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../splash/toggle_splash.dart';



class FingerPrintAuthScreen extends StatefulWidget {
  @override
  _FingerPrintAuthScreenState createState() => _FingerPrintAuthScreenState();
}

class _FingerPrintAuthScreenState extends State<FingerPrintAuthScreen> {
  bool isScanning = false;

  void _onImageTap() {
    setState(() {
      isScanning = !isScanning;
    });

    if (isScanning) {

      Future.delayed(Duration(seconds:2), () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => Toggle_splash()
          ),
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: const EdgeInsets.only(top: 100, left: 20, right: 20),
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                "Authentication Required",
                style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Center(
                  child: Text(
                    "Please place your finger to ",
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14.sp),
                  ),
                ),
              ),
              Center(
                child: Text(
                  "your phone!",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14.sp),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Column(
                children: <Widget>[
                  GestureDetector(
                    onTap: _onImageTap,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Image.asset(
                          isScanning
                              ? "assets/images/fingerToScan.png"
                              : "assets/images/Group 20505.png",
                          height: 207.h,width: 207.w,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 50.h,
                  ),
                  Text(
                    isScanning ? "Scanning..." : "Tap to scan...",
                    style: TextStyle(color: Color(0xff525252),fontSize: 14.sp,fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}