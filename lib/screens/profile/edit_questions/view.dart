import 'package:cashkit/core/desgin/btn.dart';
import 'package:cashkit/screens/profile/edit_questions/edit_quesfive/view.dart';
import 'package:cashkit/screens/profile/edit_questions/edit_quesfour/view.dart';
import 'package:cashkit/screens/profile/edit_questions/edit_quesone/view.dart';
import 'package:cashkit/screens/profile/edit_questions/edit_quessix/view.dart';
import 'package:cashkit/screens/profile/edit_questions/edit_questhree/view.dart';
import 'package:cashkit/screens/profile/edit_questions/edit_questwo/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EditAllQuestionScreen extends StatelessWidget {
  const EditAllQuestionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffEFEFEF),
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Questions ",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w600, fontSize: 20.sp),
        ),
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
      ),
      body: ListView(
        children: [
          SizedBox(
              height: 120.h, width: double.infinity, child: EditQuestionOne()),
          SizedBox(
            height: 2.h,
          ),
          SizedBox(
              height: 120.h, width: double.infinity, child: EditQuestionTwo()),
          SizedBox(
            height: 2.h,
          ),
          SizedBox(
              height: 120.h, width: double.infinity, child: EditQuestionThree()),
          SizedBox(
            height: 2.h,
          ),
          SizedBox(
              height: 120.h, width: double.infinity, child: EditQuestionFour()),
          SizedBox(
            height: 2.h,
          ),
          SizedBox(
              height: 120.h, width: double.infinity, child: EditQuestionFive()),
          SizedBox(
            height: 2.h,
          ),
          SizedBox(
              height: 120.h, width: double.infinity, child: EditQuestionSix()),
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding:EdgeInsets.symmetric(horizontal: 16.0,vertical: 16.h),
            child: BTN(
              text: 'Save',
              onPrees: () {},
            ),
          )
        ],
      ),
    );
  }
}
