import 'package:cashkit/core/desgin/questions/question_btn.dart';
import 'package:cashkit/core/desgin/questions/questions_prog.dart';
import 'package:cashkit/screens/questions/q_five/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QuestionFourScreen extends StatefulWidget {
  QuestionFourScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<QuestionFourScreen> createState() => _QuestionFourScreenState();
}

class _QuestionFourScreenState extends State<QuestionFourScreen> {
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
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 50),
            child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => QuestionFiveScreen(),));
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal:5.w, vertical: 12.h),
                margin: EdgeInsets.only(left:180),
                height: 45.h,
                width: 124.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: _isTextFieldEmpty ? Color(0xffEFEFEF) : Theme.of(context).primaryColor,
                    border: Border.all(
                      color: Color(0xffDCDCDC),
                    )),
                child: Row(
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(top:2),
                      child: Icon(
                        Icons.arrow_forward,
                        size: 15,
                        color: Color(0xffDCDCDC),
                      ),
                    ),
                    SizedBox(
                      width: 4.w,
                    ),
                    Text(
                      "Continue",
                      style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14,color: Color(0xffDCDCDC),),
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.only(left: 16.h, right: 16.h, top: 32.h),
        children: [
          Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                    size: 30.sp,
                  )),
              QuestionProg(
                widthProg: 160,
              )
            ],
          ),
          SizedBox(
            height: 30.h,
          ),
          Text(
            textAlign: TextAlign.center,
            'What is your income over the week / month?',
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
            width: MediaQuery.of(context).size.width,
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
                    child: Text("EGP",style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600,),),
                  ),
                  Expanded(
                    child: TextFormField(
                      controller: _controller,
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        fontSize: 22.sp,
                        fontWeight: FontWeight.w600,
                      ),
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "000",
                        labelStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 22.sp,
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
            height: 32.h,
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
                            ? Color(0xffF6F6F6)
                            : Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: Color(0xffDCDCDC),
                        )),
                    child: Center(
                      child: Text(
                        "Weakly",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
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
                            :  Color(0xffF6F6F6),
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

          // Initial toggle state
        ],
      ),
    );
  }
}
