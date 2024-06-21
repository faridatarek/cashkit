import 'package:cashkit/screens/profile/credit_card/home_view.dart';
import 'package:cashkit/screens/profile/edit_profile/view.dart';
import 'package:cashkit/screens/profile/edit_questions/view.dart';
import 'package:cashkit/screens/profile/edit_savingbox/view.dart';
import 'package:cashkit/screens/profile/edite_income/view.dart';
import 'package:cashkit/screens/profile/rosca_template/rosca_home/empty_rosca.dart';
import 'package:cashkit/screens/profile/rosca_template/rosca_home/view.dart';
import 'package:cashkit/screens/questions/q_one/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Goals/all_goals/view.dart';
import '../auth/login/view.dart';
import '../expenses/view.dart';
import '../premium/premium_view.dart';
import '../rating/view.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List images = [
      "assets/images/quesicon.png",
      "assets/images/incomeicon.png",
      "assets/images/savingicon.png",
      "assets/images/expicon.png",
      "assets/images/goalcon.png",
      "assets/images/roscaicon.png",
      "assets/images/crediticon.png",
      "assets/images/premicon.png",
      "assets/images/star.png"
    ];
    List titles = [
      "Questions ",
      "Income",
      "Saving Box",
      "Expenses",
      "Goals",
      "ROSCA Template",
      "Credit Card",
      "Premium",
      "Rate App"
    ];
    List<Widget> pages = [
      //  here pages which navegetion

      EditAllQuestionScreen(),
      EditIncomeScreen(),
      EditSavingBox(),
      Expenses(),
      All_Goals(),
      EmptyRoscaScreen(),
      CreditHomeScreen(),
      Premium(),
      Rating(),
    ];
    return SafeArea(
      child: Scaffold(
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          children: [
            SizedBox(
              height: 32.h,
            ),
            Text(
              "Profile Settings",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20.sp,
                  color: Theme.of(context).primaryColor),
            ),
            SizedBox(
              height: 16.h,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EditProfileScreen(),
                    ));
              },
              child: Container(
                height: 80.h,
                width:MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                ),
                child: Padding(
                  padding:  EdgeInsets.only(right: 8.0,bottom: 8,top: 8),
                  child: ListTile(
                    leading: Image.asset("assets/images/profile_image.png"),
                    title: Padding(
                      padding:  EdgeInsets.only(bottom:5.0.h),
                      child: Text(
                        "Farida Tarek",
                          //Farida Tarek
                        style:
                        TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
                      ),
                    ),

                    subtitle: Text(
                      "faridaelamrety732@gmail.com",
                      //faridaelamrety732
                      style:
                      TextStyle(fontSize: 11.sp, fontWeight: FontWeight.w400),
                    ),
                    trailing: IconButton(
                        onPressed: () {},
                        icon: Padding(
                          padding:  EdgeInsets.only(left: 35.0.w),
                          child: Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Colors.black,size: 18,
                          ),
                        )),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            ...List.generate(
              titles.length,
                  (index) => InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => pages[index],
                      ));
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  margin: EdgeInsets.only(bottom:13.h),
                  padding: EdgeInsets.only(left: 12.w),
                  width: double.infinity,
                  height: 56.h,
                  child: Row(

                    children: [
                      Container(
                        child: Row(
                          children: [
                            Image.asset(
                              images[index],
                              width: 30.w,
                              height: 30.h,
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Text(
                              titles[index],
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14.sp,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => pages[index],
                                ));
                          },
                          icon: Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Colors.black,
                            size: 16,
                          ))
                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => login(),
                    ),
                        (route) => false);
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                ),
                margin: EdgeInsets.only(bottom: 16),
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                width: double.infinity,
                height: 56.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(

                      child: Row(
                        children: [
                          Image.asset(
                            "assets/images/logout.png",
                            width: 27.w,
                            height: 30.h,
                          ),
                          SizedBox(
                            width: 8.w,
                          ),
                          Text(
                            "Log Out",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14.sp,
                                color: Colors.red),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
