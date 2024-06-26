
import 'package:cashkit/screens/questions/q_five/view.dart';
import 'package:cashkit/screens/questions/q_sex/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EditIncomeScreen extends StatefulWidget {
  EditIncomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<EditIncomeScreen> createState() => _EditIncomeScreenState();
}

class _EditIncomeScreenState extends State<EditIncomeScreen> {
  final TextEditingController _controller = TextEditingController();

  bool _isTextFieldEmpty = true;

  @override
  void initState() {
    super.initState();
    _controller.addListener(_checkTextField);
  }

  void _checkTextField() {
    setState(() {
      _isTextFieldEmpty = _controller.text.isEmpty;
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  bool _isFirstContainerGreen = true;

  void _toggleColors() {
    setState(() {
      _isFirstContainerGreen = !_isFirstContainerGreen;
    });
  }

  final myController = TextEditingController();

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
          "Edit Income",
          style: TextStyle(
              fontWeight: FontWeight.w600, fontSize: 20.sp, color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.only(left: 16.h, right: 16.h, top: 32.h),
        children: [
          SizedBox(
            height: 48,
          ),
          Text(
            textAlign: TextAlign.center,
            'Edit your income over \nthe week / month?',
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 16.sp,
                color: Color(0xff292929)),
          ),
          SizedBox(
            height: 32.h,
          ),
          Container(
            height: 60.h,
            width:  MediaQuery.of(context).size.width,
            margin: EdgeInsets.symmetric(horizontal: 40),
            padding: EdgeInsets.only(left: 40.0.w, top: 10.h, right: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
            ),
            child: Center(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding:  EdgeInsets.only(bottom: 10.0.h,left:9),
                    child: Text(
                      "EGP",
                      style: TextStyle(fontSize: 18.sp),
                    ),
                  ),
                  Expanded(
                    child: TextFormField(
                      controller: _controller,
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w600,
                      ),
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "000",
                        labelStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w600,
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(8)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          SizedBox(
            height: 32,
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: _toggleColors,
                  child: Container(
                    height: 46.h,
                    width: 115.w,
                    decoration: BoxDecoration(
                        color: _isFirstContainerGreen
                            ?  Color(0xffF6F6F6)
                            : Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: Color(0xffDCDCDC),
                        )),
                    child: Center(
                      child: Text(
                        "Weakly",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Color(0xffDCDCDC),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 5.w,),
                GestureDetector(
                  onTap: _toggleColors,
                  child: Container(
                    height: 46.h,
                    width: 115.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: _isFirstContainerGreen
                            ? Theme.of(context).primaryColor
                            : Colors.white,
                        border: Border.all(
                          color: Color(0xffDCDCDC),
                        )),
                    child: Center(
                      child: Text(
                        "Monthly",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Color(0xffDCDCDC),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 100.h,
          ),
          Row(
            children: [
              Spacer(),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    fixedSize: Size(115.w, 48.h),
                  ),
                  onPressed: () {},
                  child: Text("Save",style: TextStyle(color: Colors.white),)),
              Spacer(),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      fixedSize: Size(118.w, 48.h),
                      side: BorderSide(color: Theme.of(context).primaryColor),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                     backgroundColor:Color(0xffEFEFEF)),
                  onPressed: () {
                    Navigator.pop(
                        context,
                      );
                  },
                  child: Text(
                    "Cancel",
                    style: TextStyle(color: Theme.of(context).primaryColor),
                  )),
              Spacer(),
            ],
          ),

          // Initial toggle state
        ],
      ),
    );
  }
}
