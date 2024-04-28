import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BTN extends StatelessWidget {
  final String text;
  final VoidCallback onPrees;

  const BTN({
    Key? key,
    required this.text,
    required this.onPrees,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(

        onPressed: onPrees,
        style: ElevatedButton.styleFrom(
            minimumSize: Size(double.infinity.w, 50.h),

            backgroundColor: Theme.of(context).primaryColor,
            shape: RoundedRectangleBorder(

              borderRadius: BorderRadius.circular(10.r),
            )),
        child: Text(
          text,
          style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w700,color: Colors.white),
        ),
      ),
    );
  }
}