import 'package:cashkit/core/desgin/btn.dart';
import 'package:cashkit/screens/auth/new_password/view.dart';
import 'package:cashkit/screens/auth/sign_up/view.dart';
import 'package:cashkit/screens/home/view.dart';
import 'package:cashkit/screens/nav_bar/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  bool _isObsecuredConfirm = true;
  void toggleObscuredConfrm(){
    setState(() {
      _isObsecuredConfirm =! _isObsecuredConfirm ;
    });}
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
            padding: const EdgeInsets.only(left: 16.0, top: 130),
            child: Text("Login",

                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 28.sp,
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
                    Row(
                      children: [
                        Text(

                          "Welcome back ",
                          style: TextStyle(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Image.asset(height: 25,width: 30,"assets/images/welcome.png")

                      ],
                    ),
                    SizedBox(
                      height: 25.h,
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

                        labelText: "Email",

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

                        labelText: "Confirm Password",
                        suffixIcon:  IconButton(onPressed: toggleObscuredConfrm ,
                            icon: Icon(_isObsecuredConfirm?Icons.visibility:Icons.visibility_off
                              ,color: Theme.of(context).primaryColor,)),
                        border: OutlineInputBorder(


                            borderRadius: BorderRadius.circular(8.r)),
                      ),
                    ),


                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Checkbox(
                              value: false, // Add logic to handle this
                              onChanged: (value) {}, // Add logic to handle this
                            ),


                            Text('Remember me',style: TextStyle(color: Color(0xffBDBDBD),fontSize:12.sp)),
                          ],
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) =>newPass ()));
                          },
                          child: Text('Forgot Password?',style: TextStyle(color: Theme.of(context).primaryColor,fontSize:12.sp)),
                        ),
                      ],
                    ),


                    SizedBox(
                      height: 20.h,
                    ),
                    BTN(text: "Login", onPrees:(){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) =>NavScreen ()));
                    } ),
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
                        SizedBox(width: 20.w),
                        Container(
                            decoration:BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(12),border: Border.all(width:1,color: Color(0xffBDBDBD),)),
                            width:96.w,
                            height: 50.h,
                            child:Image.network(fit: BoxFit.fill,"https://th.bing.com/th/id/OIP.f1yTTEz6vnVeF9ymigPWNQHaHa?rs=1&pid=ImgDetMain")),
                        SizedBox(width: 20.w), Container(
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
                          Text('Don’t have an account?',style: TextStyle(color: Color(0xffBDBDBD),fontSize:14.sp)),

                          InkWell(
                              onTap: (){
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) =>signUp ()));
                              },
                              child: Text(' Sign Up',style: TextStyle(color:Theme.of(context).primaryColor,fontSize:16.sp,fontWeight: FontWeight.bold))),
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ),
          )],
      ),
    );
  }
}
