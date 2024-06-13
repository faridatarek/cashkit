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
              color: Colors.black, fontWeight: FontWeight.w600, fontSize: 20.sp),
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
                    width: 104,
                    height: 111,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 85.0, left: 75),
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
              margin: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Theme.of(context)
                      .primaryColor, // You can customize the color
                  width: 1.0, // You can customize the width
                ),
                borderRadius: BorderRadius.circular(
                    16.0), // You can customize the border radius
              ),
              child: TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
                    border: InputBorder.none,
                    hintText: "User Name",
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide:
                            BorderSide(color: Theme.of(context).primaryColor))),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Theme.of(context)
                      .primaryColor, // You can customize the color
                  width: 1.0, // You can customize the width
                ),
                borderRadius: BorderRadius.circular(
                    16.0), // You can customize the border radius
              ),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
                    border: InputBorder.none,
                    hintText: "Your Gmail",
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide:
                            BorderSide(color: Theme.of(context).primaryColor))),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Theme.of(context)
                      .primaryColor, // You can customize the color
                  width: 1.0, // You can customize the width
                ),
                borderRadius: BorderRadius.circular(
                    16.0), // You can customize the border radius
              ),
              child: TextFormField(
                keyboardType: TextInputType.visiblePassword,
                obscureText: passwordVisible,
                decoration: InputDecoration(
                    suffixIcon: IconButton(
                      icon: Icon(passwordVisible
                          ? Icons.visibility
                          : Icons.visibility_off  ,color: Theme.of(context).primaryColor,),
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
                    hintText: "Your Password",
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide:
                            BorderSide(color: Theme.of(context).primaryColor))),
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
