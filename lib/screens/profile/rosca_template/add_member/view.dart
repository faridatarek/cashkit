import 'package:animate_do/animate_do.dart';
import 'package:cashkit/core/desgin/add_member/view.dart';

import 'package:cashkit/screens/profile/rosca_template/rosca_month/month_one/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddMemberScreen extends StatefulWidget {
  AddMemberScreen({Key? key}) : super(key: key);

  @override
  State<AddMemberScreen> createState() => _AddMemberScreenState();
}

class _AddMemberScreenState extends State<AddMemberScreen> {
  List<String> list = [];

  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    bool isComplete = true;
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: Text("Add ROSCA",
              style: TextStyle(
                  fontSize: 20.sp,
                  color: Color(0xff292929),
                  fontWeight: FontWeight.w600)),
          leading: InkWell(
              onTap: () {
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
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: JelloIn(
                    duration: Duration(seconds: 2),
                    child: Container(
                      width: 32.w,
                      height: 32.h,
                      margin: EdgeInsets.symmetric(horizontal: 120),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(42)),
                          border:
                              Border.all(color: Theme.of(context).primaryColor),
                          color: Colors.white),
                      child: Image.asset(
                        "assets/images/correct.png",
                        width: 50.w,
                        height: 50.h,
                      ),
                    ),
                  ),
                  titlePadding: EdgeInsets.symmetric(vertical: 32),
                  actions: [
                    Column(
                      children: [
                        Text(
                          "Data Confirmation",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 16),
                        ),
                        SizedBox(
                          height: 24.h,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Row(
                            children: [
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.white70),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              RoscaMonthOneScreen(),
                                        ));
                                  },
                                  child: Text(
                                    "Confirm",
                                    style: TextStyle(
                                        color: Theme.of(context).primaryColor),
                                  )),
                              Spacer(),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.white70),
                                  onPressed: () {},
                                  child: Text(
                                    "Cancel",
                                    style: TextStyle(color: Colors.black),
                                  )),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                );
              },
            );
          },
          style: ElevatedButton.styleFrom(
              minimumSize: Size(double.infinity.w, 50.h),
              backgroundColor: Theme.of(context).primaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.r),
              )),
          child: Text(
            "Save",
            style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.w700,
                color: Colors.white),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(
              height: 32.h,
            ),
            TextFormField(
              controller: _controller,
              decoration: InputDecoration(
                suffixIcon: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(80.w, 50.h),
                      backgroundColor: Theme.of(context).primaryColor,
                    ),
                    onPressed: () {
                      list.add(_controller.text);
                      _controller.clear();
                      setState(() {});
                    },
                    child: Text("Add")),
                floatingLabelBehavior: FloatingLabelBehavior.never,
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                  color: Color(0xffBDBDBD),
                  width: 1.0,
                )),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Theme.of(context).primaryColor,
                    width: 2.0,
                  ),
                ),
                labelText: "member name",
                labelStyle:
                    TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50.r)),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Expanded(
                child: ListView.separated(
              itemCount: list.length,
              itemBuilder: (context, index) =>
                  CustomAddMemberScreen(x: index + 1, memberName: list[index]),
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(
                  height: 16.h,
                );
              },
            )),
          ],
        ),
      ),
    );
  }
}
