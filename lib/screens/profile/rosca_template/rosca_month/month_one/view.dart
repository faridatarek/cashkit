import 'package:cashkit/screens/profile/rosca_template/rosca_home/view.dart';
import 'package:cashkit/screens/profile/rosca_template/rosca_month/month_two/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RoscaMonthOneScreen extends StatefulWidget {
  RoscaMonthOneScreen({
    Key? key,
  }) : super(key: key);

  // final List data;

  @override
  State<RoscaMonthOneScreen> createState() => _RoscaMonthOneScreenState();
}

class _RoscaMonthOneScreenState extends State<RoscaMonthOneScreen> {
  int totalPaid = 000;

  bool hasPaidOne = false;
  bool hasPaidTwo = false;
  bool hasPaidThree = false;
  bool hasPaidDeliver = false;


  void togglePaymentStatusDeliver() {
    setState(() {
      hasPaidDeliver = !hasPaidDeliver;

    });
  }

  void togglePaymentStatusOne() {
    setState(() {
      hasPaidOne = !hasPaidOne;
      if (totalPaid < 0) {
        totalPaid = 000;
      } else {
        hasPaidOne
            ? totalPaid = totalPaid + 1000
            : totalPaid = totalPaid - 1000;
      }
    });
  }


  void togglePaymentStatusTwo() {
    setState(() {
      hasPaidTwo = !hasPaidTwo;
      if (totalPaid < 0) {
        totalPaid = 000;
      } else {
        hasPaidTwo
            ? totalPaid = totalPaid + 1000
            : totalPaid = totalPaid - 1000;
      }
    });
  }

  void togglePaymentStatusThree() {
    setState(() {
      hasPaidThree = !hasPaidThree;
      if (totalPaid < 0) {
        totalPaid = 000;
      } else {
        hasPaidThree
            ? totalPaid = totalPaid + 1000
            : totalPaid = totalPaid - 1000;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: Text("ROSCA 3",
              style: TextStyle(
                  fontSize: 16.sp,
                  color: Color(0xff292929),
                  fontWeight: FontWeight.w600)),
          leading: InkWell(
              onTap: () {
                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => RoscaHomeScreen(),), (route) => true);

                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) =>HomeScreen ()));
              },
              child: Icon(
                Icons.arrow_back_ios,
                color: Color(0xff292929),
              ))),
     /* bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 50.0, right: 16, left: 16),
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => RoscaHomeScreen(),
                ));
          },
          style: ElevatedButton.styleFrom(
              minimumSize: Size(double.infinity.w, 48.h),
              backgroundColor: Theme.of(context).primaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.r),
              )),
          child: Text(
            "View ROSCAs",
            style: TextStyle(
                fontSize: 15.sp,
                fontWeight: FontWeight.w700,
                color: Colors.white),
          ),
        ),
      ),*/

      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal:18.w,vertical:15.h),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Month: 06-2024",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14.sp),
                ),
                Spacer(),
                Text(
                  "Total Paid: $totalPaid",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14.sp),
                ),
              ],
            ),
            SizedBox(
              height:17.h,
            ),
            Row(

              children: <Widget>[
                GestureDetector(
                  onTap: togglePaymentStatusDeliver,
                  child: Container(
                    decoration: BoxDecoration(

                      border: Border.all(
                        color: Theme.of(context).primaryColor,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    width: 20.w,
                    height: 18.h,
                    child: Center(
                      child: hasPaidDeliver
                          ? Icon(
                        Icons.check,
                        size: 14,
                        color: hasPaidDeliver
                            ? Theme.of(context).primaryColor
                            : Colors.white,
                      )
                          : null,
                    ),
                  ),
                ),
                SizedBox(width: 3),
                Text(
                  hasPaidDeliver ? 'Total paid was delivered to Farida' : 'Tap to deliver the total paid to Farida',
                  style: TextStyle(
                      fontSize: 10.sp, fontWeight: FontWeight.w500,color: Colors.black),
                ),
              ],
            ),
            SizedBox(
              height:17.h,
            ),
            Container(
              height: 68,
              padding: EdgeInsets.symmetric(horizontal: 10),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                boxShadow:[
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1), //color of shadow

                    spreadRadius:3,
                    blurRadius:4,
                  ),

                ],
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  Container(
                    width: 30.w,
                    height: 27.h,
                    margin: EdgeInsets.symmetric(horizontal:1.w),
                    padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(

                        borderRadius: BorderRadius.all(Radius.circular(42)),
                        border:
                            Border.all(color: Theme.of(context).primaryColor),
                        color: Colors.white),
                    child: Center(
                      child: Text(
                        "1",
                        style: TextStyle(
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w600,
                            color: Theme.of(context).primaryColor),
                      ),
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(top:18.h,left: 7.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Farida",
                          style: TextStyle(
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 2.h,),
                        Text(
                          "Eligibility Month:06-2024",
                          style: TextStyle(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff989898)
                          ),
                        ),

                      ],
                    ),
                  ),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      GestureDetector(
                        onTap: togglePaymentStatusOne,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Theme.of(context).primaryColor,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          width: 20.w,
                          height: 18.h,
                          child: Center(
                            child: hasPaidOne
                                ? Icon(
                                    Icons.check,
                                    size: 14,
                                    color: hasPaidOne
                                        ? Theme.of(context).primaryColor
                                        : Colors.white,
                                  )
                                : null,
                          ),
                        ),
                      ),
                      SizedBox(width: 3),
                      Text(
                        hasPaidOne ? 'Paid' : 'Didn’t  Pay',
                        style: TextStyle(
                            fontSize: 10.sp, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height:13.h,
            ),
            Container(
              height: 68,
              padding: EdgeInsets.symmetric(horizontal: 10),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                boxShadow:[
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1), //color of shadow

                    spreadRadius:3,
                    blurRadius:4,
                  ),

                ],
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  Container(
                    width: 30.w,
                    height: 27.h,
                    margin: EdgeInsets.symmetric(horizontal: 1.w),
                    padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(42)),
                        border:
                            Border.all(color: Theme.of(context).primaryColor),
                        color: Colors.white),
                    child: Center(
                      child: Text(
                        "2",
                        style: TextStyle(
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w600,
                            color: Theme.of(context).primaryColor),
                      ),
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(top:18.h,left: 7.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Mariam",
                          style: TextStyle(
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 2.h,),
                        Text(
                          "Eligibility Month:07-2024",
                          style: TextStyle(
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff989898)
                          ),
                        ),

                      ],
                    ),
                  ),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      GestureDetector(
                        onTap: togglePaymentStatusTwo,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Theme.of(context).primaryColor,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          width: 20.w,
                          height: 18.h,
                          child: Center(
                            child: hasPaidTwo
                                ? Icon(
                                    Icons.check,
                                    size: 14,
                                    color: hasPaidTwo
                                        ? Theme.of(context).primaryColor
                                        : Colors.white,
                                  )
                                : null,
                          ),
                        ),
                      ),
                      SizedBox(width: 3),
                      Text(
                        hasPaidTwo ? 'Paid' : 'Didn’t  Pay',
                        style: TextStyle(
                            fontSize: 10.sp, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 13.h,
            ),
            Container(
              height: 68,
              padding: EdgeInsets.symmetric(horizontal: 10),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                boxShadow:[
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1), //color of shadow

                    spreadRadius:3,
                    blurRadius:4,
                  ),

                ],
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  Container(
                    width: 30.w,
                    height: 27.h,
                    margin: EdgeInsets.symmetric(horizontal:1.w),
                    padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(42)),
                        border:
                            Border.all(color: Theme.of(context).primaryColor),
                        color: Colors.white),
                    child: Center(
                      child: Text(
                        "3",
                        style: TextStyle(
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w600,
                            color: Theme.of(context).primaryColor),
                      ),
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(top:18.h,left: 7.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Merna",
                          style: TextStyle(
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 2.h,),
                        Text(
                          "Eligibility Month:08-2024",
                          style: TextStyle(
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff989898)
                          ),
                        ),

                      ],
                    ),
                  ),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      GestureDetector(
                        onTap: togglePaymentStatusThree,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Theme.of(context).primaryColor,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          width: 20.w,
                          height: 18.h,
                          child: Center(
                            child: hasPaidThree
                                ? Icon(
                                    Icons.check,
                                    size: 14,
                                    color: hasPaidThree
                                        ? Theme.of(context).primaryColor
                                        : Colors.white,
                                  )
                                : null,
                          ),
                        ),
                      ),
                      SizedBox(width: 3),
                      Text(
                        hasPaidThree ? 'Paid' : 'Didn’t  Pay',
                        style: TextStyle(
                            fontSize: 10.sp, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
