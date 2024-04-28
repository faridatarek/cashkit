import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoadingProg extends StatelessWidget {
  final double spentAmount;
  final double totalAmount;


  LoadingProg({
    Key? key,
    required this.spentAmount,
    required this.totalAmount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double progress = (spentAmount/totalAmount );
    return Container(

      width: MediaQuery.of(context).size.width.w,
      //275.w
      height: 6.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24.sp),
        color: Color(0xffEFEFEF),
      ),
      child: Align(
        alignment: AlignmentDirectional.centerStart,
        child: Container(
          width:300* progress.w,
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