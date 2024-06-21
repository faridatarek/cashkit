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
                    child: Padding(
                      padding: EdgeInsets.only(top: 20.h),
                      child: Image.asset(
                        "assets/images/Confirm.png",
                        width: 50.w,
                        height: 50.h,
                      ),
                    ),
                  ),
                  titlePadding: EdgeInsets.symmetric(vertical:5.h),
                  actions: [
                    Column(
                      children: [
                        Padding(
                         padding:EdgeInsets.only(top: 20.h)
                        ,
                          child: Text(
                            "Data Confirmation",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 15.sp),
                          ),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Padding(
                          padding:  EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.h),
                          child: Row(
                            children: [
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor:  Color(0xffEFEFEF)),
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
                                        color: Theme.of(context).primaryColor,fontSize: 13.sp),
                                  )),
                              Spacer(),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Color(0xffEFEFEF)),
                                  onPressed: () {
                                    Navigator.pop(
                                        context,
                                  );
                                  },
                                  child: Text(
                                    "Cancel",
                                    style: TextStyle(color: Colors.black,fontSize: 13.sp),
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
        padding: EdgeInsets.symmetric(horizontal:13.w),
        child: Column(
          children: [
            SizedBox(
              height: 32.h,
            ),
            Container(
              height: 52.h,
              width: MediaQuery.of(context).size.width,
              child: TextFormField(
                controller: _controller,
                decoration: InputDecoration(


                  suffixIcon: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(borderRadius:BorderRadius.only(bottomRight: Radius.circular(8.r),topRight: Radius.circular(8.r),),),
                        fixedSize: Size(80.w, 52.h),
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

                      borderRadius: BorderRadius.circular(8.r),
                      borderSide: BorderSide(
                    color: Color(0xffBDBDBD),
                    width: 1.0,
                  )),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.r),

                    borderSide: BorderSide(



                      color: Theme.of(context).primaryColor,
                      width: 2.0,
                    ),
                  ),
                  labelText: "Member Name",
                  labelStyle:
                      TextStyle(fontSize:14.sp,fontWeight: FontWeight.w400,color: Color(0xff989898)),
                  border: OutlineInputBorder(
                    ),
                ),
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
