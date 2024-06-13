import 'package:bloc/bloc.dart';
import 'package:cashkit/core/desgin/btn.dart';
import 'package:cashkit/screens/auth/login/view.dart';
import 'package:cashkit/screens/questions/q_one/view.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import '../../nav_bar/view.dart';
import 'package:cashkit/core/desgin/btn.dart';
import 'package:cashkit/screens/auth/login/view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../nav_bar/view.dart';

class signUp extends StatefulWidget {
  const signUp({Key? key}) : super(key: key);

  @override
  State<signUp> createState() => _signUpState();
}

class _signUpState extends State<signUp> {

  String password = '';
  bool isLengthValid = false;
  bool hasUpperCase = false;
  bool hasNumber = false;
  bool hasSpecialChar = false;
  bool _isObsecured = true;
  bool _isObsecuredConfirm = true;
  void _toggleObscured(){
    setState(() {
      _isObsecured=! _isObsecured ;
    });}

  void toggleObscuredConfrm(){
    setState(() {
      _isObsecuredConfirm =! _isObsecuredConfirm ;
    });}

  void _updatePassword(String newPassword) {
    setState(() {
      password = newPassword;
      isLengthValid = newPassword.length >= 8 && newPassword.length <= 20;
      hasUpperCase = RegExp(r'[A-Z]').hasMatch(newPassword);
      hasNumber = RegExp(r'[0-9]').hasMatch(newPassword);
      hasSpecialChar = RegExp(r'[!@#$%^&*(),.?":{}|<>]').hasMatch(newPassword);

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Image.asset(
            'assets/images/background.png',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, top: 48),
            child: IconButton(
                onPressed: () {},
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
            padding: const EdgeInsets.only(left: 16.0, top: 110),
            child: Text("Sign up",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 25.sp,
                    color: Colors.white)),
          ),

          // Container for Login Form
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
              ),
              height: MediaQuery.of(context).size.height * 0.76,
              width: double.infinity,
              child:SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(

                      "Create your account",
                      style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: 32.h,
                    ),
                    TextFormField(

                      decoration: InputDecoration(
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        enabledBorder:  OutlineInputBorder(

                            borderSide: BorderSide(
                              color: Color(0xffBDBDBD),
                              width: 1.0,
                            )),
                        focusedBorder:  OutlineInputBorder(
                          borderSide: BorderSide(
                            color:Theme.of(context).primaryColor,
                            width: 2.0,
                          ),
                        ),

                       label: Text( "Full Name ",style: TextStyle(fontSize:14,fontWeight: FontWeight.w400)),

                        border: OutlineInputBorder(


                            borderRadius: BorderRadius.circular(8.r)),
                      ),
                    ),
                    SizedBox(
                      height:18.h,
                    ),
                    TextFormField(

                      decoration: InputDecoration(
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        enabledBorder:  OutlineInputBorder(

                            borderSide: BorderSide(
                              color: Color(0xffBDBDBD),
                              width: 1.0,
                            )),
                        focusedBorder:  OutlineInputBorder(
                          borderSide: BorderSide(
                            color:Theme.of(context).primaryColor,
                            width: 2.0,
                          ),
                        ),


                        label: Text( "Email ",style: TextStyle(fontSize:14,fontWeight: FontWeight.w400)),

                        border: OutlineInputBorder(


                            borderRadius: BorderRadius.circular(8.r)),
                      ),
                    ),
                    SizedBox(
                      height:18.h,
                    ),
                    TextFormField(
                      obscureText: _isObsecured,


                      onChanged: _updatePassword,
                      decoration: InputDecoration(
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        enabledBorder:  OutlineInputBorder(

                            borderSide: BorderSide(
                              color: Color(0xffBDBDBD),
                              width: 1.0,
                            )),
                        focusedBorder:  OutlineInputBorder(
                          borderSide: BorderSide(
                            color:Theme.of(context).primaryColor,
                            width: 2.0,
                          ),
                        ),

                label: Text("Password ",style: TextStyle(fontSize:14,fontWeight: FontWeight.w400)),
                        suffixIcon:  IconButton(onPressed:_toggleObscured,
                            icon: Icon(_isObsecured?Icons.visibility:Icons.visibility_off
                              ,color: Theme.of(context).primaryColor,)),
                        border: OutlineInputBorder(


                            borderRadius: BorderRadius.circular(8.r)),
                      ),
                    ),
                    SizedBox(
                      height:18.h,
                    ),
                    TextFormField(
                      obscureText:_isObsecuredConfirm ,

                      decoration: InputDecoration(
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        enabledBorder:  OutlineInputBorder(

                            borderSide: BorderSide(
                              color: Color(0xffBDBDBD),
                              width: 1.0,
                            )),
                        focusedBorder:  OutlineInputBorder(
                          borderSide: BorderSide(
                            color:Theme.of(context).primaryColor,
                            width: 2.0,
                          ),
                        ),

                       label: Text( "Confirm Password ",style: TextStyle(fontSize:14,fontWeight: FontWeight.w400)),
                        suffixIcon:  IconButton(onPressed: toggleObscuredConfrm ,
                            icon: Icon(_isObsecuredConfirm?Icons.visibility:Icons.visibility_off
                              ,color: Theme.of(context).primaryColor,)),
                        border: OutlineInputBorder(


                            borderRadius: BorderRadius.circular(8.r)),
                      ),
                    ),

                    SizedBox(
                      height:18.h,
                    ),
                    Text(

                      "Your password must contain",
                      style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    _buildValidationIcon(isLengthValid, 'Between 8 and 20 Characters'),
                    _buildValidationIcon(hasUpperCase, '1 uppercase letter Character'),
                    _buildValidationIcon(hasNumber, '1 or more numbers'),
                    _buildValidationIcon(hasSpecialChar, '1 or more numbers special character'),
                    SizedBox(height: 16.0),
                    SizedBox(
                      height: 28.h,
                    ),
                    BTN(text: "Sign Up", onPrees: () {
                     if (_allValidationsPassed(context)) {
                       Navigator.pushReplacement(
                              context,
                      MaterialPageRoute(builder: (context) => QuestionOneScreen ()),
                                     );
                                           }}
                     ),
                    SizedBox(
                      height: 28.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 2,width:36,color:  Color(0xffBDBDBD),
                        ),
                        Text(" Or sign up with ",style: TextStyle(fontSize: 14,color:Color(0xffBDBDBD) )),
                        Container( height: 2,width: 36,color: Color(0xffBDBDBD),)
                      ],),
                    SizedBox(
                      height:18.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            decoration:BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(12),border: Border.all(width:1,color: Color(0xffBDBDBD),)),
                            width:96.w,
                            height: 50.h,
                            child:Image.network("https://th.bing.com/th/id/R.0fa3fe04edf6c0202970f2088edea9e7?rik=joOK76LOMJlBPw&riu=http%3a%2f%2fpluspng.com%2fimg-png%2fgoogle-logo-png-open-2000.png&ehk=0PJJlqaIxYmJ9eOIp9mYVPA4KwkGo5Zob552JPltDMw%3d&risl=&pid=ImgRaw&r=0")),
                        SizedBox(width: 15.w),
                        Container(
                            decoration:BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(12),border: Border.all(width:1,color: Color(0xffBDBDBD),)),
                            width:96.w,
                            height: 50.h,
                            child:Image.network(fit: BoxFit.fill,"https://th.bing.com/th/id/OIP.f1yTTEz6vnVeF9ymigPWNQHaHa?rs=1&pid=ImgDetMain")),
                        SizedBox(width: 15.w), Container(
                            decoration:BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(12),border: Border.all(width:1,color: Color(0xffBDBDBD),)),
                            width:96.w,
                            height: 50.h,
                            child:Image.asset("assets/images/xTw.png")),
                      ],
                    ),
                    SizedBox(height: 20.h),
                    Padding(
                      padding: const EdgeInsets.only(bottom:40),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Already have an account?',style: TextStyle(color: Color(0xffBDBDBD),fontSize:14.sp)),

                          InkWell(
                              onTap: (){
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) =>login ()));
                              },
                              child: Text(' Log in',style: TextStyle(color:Theme.of(context).primaryColor,fontSize:16.sp,fontWeight: FontWeight.bold))),
                        ],
                      ),
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
  Widget _buildValidationIcon(bool isValid, String message) {
    return Row(
      children: [
        Icon(
          isValid ? Icons.check_circle : Icons.check_circle ,
          color: isValid ?Color(0xff047857) : Colors.black12,
        ),
        SizedBox(width: 8.w),
        Text(message,style: TextStyle(fontSize:13.sp,fontWeight: FontWeight.w400,color: Color(0xff989898))),
      ],
    );
  }

  bool _allValidationsPassed(BuildContext context) {
    if (isLengthValid && hasUpperCase && hasNumber && hasSpecialChar) {

      Navigator.push(context,
          MaterialPageRoute(builder: (context) =>NavScreen ()));
      return true;
    }
    return false;
  }
}

