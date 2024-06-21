import 'package:cashkit/core/desgin/btn.dart';
import 'package:cashkit/screens/auth/new_password/view.dart';
import 'package:cashkit/screens/auth/sign_up/view.dart';
import 'package:cashkit/screens/home/view.dart';
import 'package:cashkit/screens/nav_bar/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../new_password/forget_view.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  bool _isObsecuredConfirm = true;
  bool _isChecked = false;
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
            padding: const EdgeInsets.only(left: 6.0, top: 48),
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
            child: Text("Login",

                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 22.sp,
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
                        Padding(
                          padding:  EdgeInsets.only(left: 2.0.w,top: 10.h),
                          child: Text(

                            "Welcome back ",
                            style: TextStyle(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ),
                        Padding(
                          padding:  EdgeInsets.only(top: 6.0),
                          child: Image.asset(height: 22,width: 25,"assets/images/welcome.png"),
                        )

                      ],
                    ),
                    SizedBox(
                      height: 25.h,
                    ),

                    Container(
                      height: 52.h,
                      child: TextFormField(

                        decoration: InputDecoration(
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          enabledBorder:  OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.r),
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

                 label: Text("Email ",style: TextStyle(fontSize:14.sp,fontWeight: FontWeight.w400,color: Color(0xff989898))),

                          border: OutlineInputBorder(


                              borderRadius: BorderRadius.circular(8.r)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height:18.h,
                    ),
                    Container(
                      height: 52.h,
                      child: TextFormField(
                        obscureText:_isObsecuredConfirm ,

                        decoration: InputDecoration(
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          enabledBorder:  OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.r),
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

                          label: Text("Password ",style: TextStyle(fontSize:14.sp,fontWeight: FontWeight.w400,color: Color(0xff989898))),
                          suffixIcon:  IconButton(onPressed: toggleObscuredConfrm ,
                              icon: Icon(_isObsecuredConfirm?Icons.visibility_off:Icons.visibility
                                ,color: Color(0xffCDCDCD),)),
                          border: OutlineInputBorder(


                              borderRadius: BorderRadius.circular(8.r)),
                        ),
                      ),
                    ),


                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 20.w,
                              child: Checkbox(


                                activeColor:Theme.of(context).primaryColor,

                                shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)
                                ),
                                //checkColor: ,
                                focusColor: Color(0xffCDCDCD) ,
                                value: _isChecked,
                                onChanged: (value) {

                                  _isChecked=!_isChecked;
                                  setState(() {

                                  });

                                },
                              ),
                            ),

                             SizedBox(width: 6.w,),
                            Text('Remember me',style: TextStyle(color: Colors.black45,fontSize:12.sp,
                            fontWeight: FontWeight.w500)),
                          ],
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) =>ForgetPasswordScreen ()));
                          },
                          child: Text('Forgot Password?',style: TextStyle(color: Theme.of(context).primaryColor,fontSize:12.sp)),
                        ),
                      ],
                    ),


                    SizedBox(
                      height: 20.h,
                    ),
                    BTN(text: "Login", onPrees:(){
                      Navigator.pushReplacement(context,
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
                        Text(" or sign up with ",style: TextStyle(fontSize: 14,color:Color(0xffBDBDBD) )),
                        Container( height: 2,width: 36,color: Color(0xffBDBDBD),)
                      ],),
                    SizedBox(
                      height:28.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/Frame 1000004579 (1).png",height: 58.h,width: 100.w),
                        SizedBox(width: 10.w),
                        Image.asset("assets/images/Frame facebook.png",height: 58.h,width: 100.w),
                        SizedBox(width: 10.w),
                        Image.asset("assets/images/Frame X.png",height: 58.h,width: 100.w),
                      ],
                    ),
                    SizedBox(height: 28.h),
                    Padding(
                      padding: const EdgeInsets.only(bottom:40),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Don’t have an account?',style: TextStyle(color: Color(0xffBDBDBD),fontSize:13.sp)),

                          InkWell(
                              onTap: (){
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) =>signUp ()));
                              },
                              child: Text(' Sign Up',style: TextStyle(color:Theme.of(context).primaryColor,fontSize:13.sp,fontWeight: FontWeight.bold))),
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
