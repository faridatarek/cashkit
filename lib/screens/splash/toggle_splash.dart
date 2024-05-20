import 'dart:async';

import 'package:cashkit/screens/auth/login/view.dart';
import 'package:cashkit/screens/auth/sign_up/view.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Toggle_spash extends StatefulWidget {
  @override
  _Toggle_spashState createState() => _Toggle_spashState();
}

class _Toggle_spashState extends State<Toggle_spash> {
  PageController _pageController = PageController();
  int _currentPage = 0;
  Timer? _timer;

  final List<String> _photos = [
    'assets/images/Frame 1000005189.png',
    'assets/images/Frame 1000005199.png',
    'assets/images/Frame 1000005206.png',
  ];

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    const Duration duration = const Duration(seconds: 2);
    _timer = Timer.periodic(duration, (Timer timer) {
      if (_currentPage < _photos.length - 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      _pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 200),
        curve: Curves.easeOut,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /*Center(child: Padding(
              padding:  EdgeInsets.only(top:100.h),
              child: Image.asset("assets/images/Group 47 (1).png",width: 150.w,height: 100.h,),
            )),*/
            Padding(
              padding:  EdgeInsets.only(top:40.h),
              child: Container(
                height: 500.h,
                width: MediaQuery.of(context).size.width.w,
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: _photos.length,
                  onPageChanged: (int index) {
                    setState(() {
                      _currentPage = index;
                    });
                  },
                  itemBuilder: (context, index) {
                    return Image.asset(
                      _photos[index],
                      fit: BoxFit.none,
                    );
                  },
                ),
              ),
            ),
            DotsIndicator(
              dotsCount: _photos.length,
              position: _currentPage.toInt(),
              decorator: DotsDecorator(
               spacing: EdgeInsets.all(5),
                color: Colors.white, // Inactive dot color
                activeColor:  Theme.of(context).primaryColor, // Active dot color
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
              child: ElevatedButton(
                onPressed: () {
              Navigator.push(
              context,
              MaterialPageRoute(
              builder: (context) => signUp(),
              ),
              );
              },
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity.w, 50.h),
                    backgroundColor: Theme.of(context).primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.r),
                    )),
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>login(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity.w, 50.h),
                    side: BorderSide(color: Theme.of(context).primaryColor,width: 1.6),
                    backgroundColor:Colors.white70 ,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.r),
                    )),
                child: Text(
                  "Log In",
                  style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w700,
                      color: Theme.of(context).primaryColor),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _timer?.cancel(); // Cancel the timer when the widget is disposed
    _pageController.dispose();
    super.dispose();
  }
}