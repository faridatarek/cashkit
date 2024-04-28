import 'package:cashkit/core/desgin/btn.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class newPass extends StatefulWidget {
  const newPass({Key? key}) : super(key: key);

  @override
  State<newPass> createState() => _newPassState();
}

class _newPassState extends State<newPass> {
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
            padding: const EdgeInsets.only(left: 16.0, top: 130),
            child: Text("Set your password",
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
                    Text(

                      "In order to keep your account safe you need to create a strong password.",
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff989898),

                      ),),
                    SizedBox(
                      height:25.h,
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

                        labelText: "Password",
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

                        labelText: "Confirm Password",
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
                      height:15.h,
                    ),
                    BTN(text: "Sign up", onPrees: _allValidationsPassed ),



                  ],
                ),
              ),
            ),
          )],
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
        SizedBox(width: 8.0),
        Text(message,style: TextStyle(fontSize: 16)),
      ],
    );
  }

  bool _allValidationsPassed() {
    return isLengthValid && hasUpperCase && hasNumber && hasSpecialChar;

  }
}
