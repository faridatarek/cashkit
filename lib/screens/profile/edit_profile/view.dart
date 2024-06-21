import 'package:cashkit/core/desgin/btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  bool passwordVisible = false;

  @override
  void initState() {
    super.initState();
    passwordVisible = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffEFEFEF),
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Edit Profile",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w600, fontSize: 18.sp),
        ),
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 24.h,
            ),
            Stack(
              children: [
                Center(
                  child: Image.asset(
                    "assets/images/profile_image.png",
                    fit: BoxFit.fill,
                    width: 115.w,
                    height: 100.h,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 78.0, left: 75),
                  child: Center(
                    child: Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.white,
                        ),
                        child: Icon(
                          Icons.edit,
                          size: 20,
                        )),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 32.h,
            ),
            Container(
              height: 52.h,
              margin: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(

                borderRadius: BorderRadius.circular(
                    9.r), // You can customize the border radius
              ),
              child: TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
                    border: InputBorder.none,
                    label: Text( "User Name",style: TextStyle(fontSize:14.sp,fontWeight: FontWeight.w400,color: Color(0xff989898))),
              focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(9.r),
    borderSide:
    BorderSide(color: Theme.of(context).primaryColor)) ,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(9.r),
                        borderSide:
                            BorderSide(color: Color(0xff989898)))
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              height: 52.h,
              margin: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(

                borderRadius: BorderRadius.circular(
                   9.r), // You can customize the border radius
              ),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
                    border: InputBorder.none,
                    label: Text( "Your Email",style: TextStyle(fontSize:14.sp,fontWeight: FontWeight.w400,color: Color(0xff989898))),


                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(9.r),
                        borderSide:
                        BorderSide(color: Theme.of(context).primaryColor)) ,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(9.r),
                        borderSide:
                        BorderSide(color: Color(0xff989898)))
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              height: 52.h,
              margin: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(

                borderRadius: BorderRadius.circular(
                   9.r), // You can customize the border radius
              ),
              child: TextFormField(
                keyboardType: TextInputType.visiblePassword,
                obscureText: passwordVisible,
                decoration: InputDecoration(
                    suffixIcon: IconButton(
                      icon: Icon(passwordVisible
                          ? Icons.visibility_off
                          : Icons.visibility     ,color: Color(0xffCDCDCD),),
                      onPressed: () {
                        setState(
                          () {
                            passwordVisible = !passwordVisible;
                          },
                        );
                      },
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
                    border: InputBorder.none,
                    label: Text( "Your Password",style: TextStyle(fontSize:14.sp,fontWeight: FontWeight.w400,color: Color(0xff989898))),


                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(9.r),
                        borderSide:
                        BorderSide(color: Theme.of(context).primaryColor)) ,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(9.r),
                        borderSide:
                        BorderSide(color: Color(0xff989898)))),
              ),
            ),
            SizedBox(
              height: 64.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: BTN(text: "Save", onPrees: () {}),
            )
          ],
        ),
      ),
    );
  }
}
