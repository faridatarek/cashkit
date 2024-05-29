import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QuestionProg extends StatelessWidget {
  final int widthProg;

  QuestionProg({
    Key? key,
    required this.widthProg,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15),
      width: 200.w,
      height: 6.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24.sp),
        color: Color(0xffFAFAFA),
      ),
      child: Align(
        alignment: AlignmentDirectional.centerStart,
        child: Container(
          width: widthProg.w,
          height: 6.h,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Color(0xffAFFE9C),
                Color(0xff047857).withOpacity(.6),
                Color(0xff005B3B).withOpacity(.8),
              ]),
              borderRadius: BorderRadius.circular(24.sp),
              color: Theme.of(context).primaryColor),
        ),
      ),
    );
  }
}