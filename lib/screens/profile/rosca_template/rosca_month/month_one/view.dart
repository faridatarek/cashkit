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

  // int x = 1;
  //
  // String memberName = "sara";

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
          title: Text("ROSCA 1",
              style: TextStyle(
                  fontSize: 20.sp,
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
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 50.0, right: 16, left: 16),
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => RoscaMonthTwoScreen(),
                ));
          },
          style: ElevatedButton.styleFrom(
              minimumSize: Size(double.infinity.w, 50.h),
              backgroundColor: Theme.of(context).primaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.r),
              )),
          child: Text(
            "Next Month",
            style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.w700,
                color: Colors.white),
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Month: 01-2024",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                ),
                Spacer(),
                Text(
                  "Total Paid: $totalPaid",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                ),
              ],
            ),
            SizedBox(
              height: 24,
            ),
            Container(
              height: 68,
              padding: EdgeInsets.symmetric(horizontal: 10),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  Container(
                    width: 32.w,
                    height: 32.h,
                    margin: EdgeInsets.symmetric(horizontal: 12),
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(42)),
                        border:
                            Border.all(color: Theme.of(context).primaryColor),
                        color: Colors.white),
                    child: Center(
                      child: Text(
                        "1",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Theme.of(context).primaryColor),
                      ),
                    ),
                  ),
                  Text(
                    "Sara",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
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
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          width: 24,
                          height: 24,
                          child: Center(
                            child: hasPaidOne
                                ? Icon(
                                    Icons.check,
                                    size: 20,
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
                        hasPaidOne ? 'pay' : 'Didn’t  Pay',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Container(
              height: 68,
              padding: EdgeInsets.symmetric(horizontal: 10),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  Container(
                    width: 32.w,
                    height: 32.h,
                    margin: EdgeInsets.symmetric(horizontal: 12),
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(42)),
                        border:
                            Border.all(color: Theme.of(context).primaryColor),
                        color: Colors.white),
                    child: Center(
                      child: Text(
                        "2",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Theme.of(context).primaryColor),
                      ),
                    ),
                  ),
                  Text(
                    "Ahmed",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
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
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          width: 24,
                          height: 24,
                          child: Center(
                            child: hasPaidTwo
                                ? Icon(
                                    Icons.check,
                                    size: 20,
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
                        hasPaidTwo ? 'pay' : 'Didn’t  Pay',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Container(
              height: 68,
              padding: EdgeInsets.symmetric(horizontal: 10),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  Container(
                    width: 32.w,
                    height: 32.h,
                    margin: EdgeInsets.symmetric(horizontal: 12),
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(42)),
                        border:
                            Border.all(color: Theme.of(context).primaryColor),
                        color: Colors.white),
                    child: Center(
                      child: Text(
                        "3",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Theme.of(context).primaryColor),
                      ),
                    ),
                  ),
                  Text(
                    "Mohamed",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
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
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          width: 24,
                          height: 24,
                          child: Center(
                            child: hasPaidThree
                                ? Icon(
                                    Icons.check,
                                    size: 20,
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
                        hasPaidThree ? 'pay' : 'Didn’t  Pay',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w400),
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
