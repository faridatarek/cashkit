import 'package:animate_do/animate_do.dart';
import 'package:cashkit/screens/questions/q_sex/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EditSavingBox extends StatelessWidget {
  const EditSavingBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffEFEFEF),
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
              size: 30.sp,
            )),
        title: Text(
          "Saving Box",
          style: TextStyle(
              fontWeight: FontWeight.w600, fontSize: 20, color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 48.h,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Enter the amount of money \n that you want to save ",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18.sp),
            ),
          ),
          SizedBox(
            height: 24.h,
          ),
          Container(
            height: 48.h,
            width: 248.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
              border: Border.all(color: Colors.white),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "EGP",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.black),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Text(
                  "1000",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.black),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 56.h,
          ),
          Row(
            children: [
              Spacer(),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    fixedSize: Size(100.w, 48.h),
                  ),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        Future.delayed(Duration(seconds: 3), () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => QuestionSexScreen(),
                              )); // Close the dialog
                        });
                        return AlertDialog(
                          title: JelloIn(
                            duration: Duration(seconds: 2),
                            child: Image.asset(
                              "assets/images/goodsave.png",
                              width: 118.w,
                              height: 118.h,
                            ),
                          ),
                          titlePadding: EdgeInsets.symmetric(vertical: 32),
                          actions: [
                            Column(
                              children: [
                                Text(
                                  "Great choice!",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 23),
                                ),
                                SizedBox(
                                  height: 8.h,
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        bottom: 28.0, right: 22, left: 22),
                                    child: Text(
                                      textAlign: TextAlign.center,
                                      "Now you will save EGP 1000 this month in your saving box.",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        );
                      },
                    );
                  },
                  child: Text("Save")),
              Spacer(),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      fixedSize: Size(100.w, 48.h),
                      side: BorderSide(color: Theme.of(context).primaryColor),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      backgroundColor: Colors.white),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => QuestionSexScreen(),
                        ));
                  },
                  child: Text(
                    "Cancel",
                    style: TextStyle(color: Theme.of(context).primaryColor),
                  )),
              Spacer(),
            ],
          ),
        ],
      ),
    );
  }
}
