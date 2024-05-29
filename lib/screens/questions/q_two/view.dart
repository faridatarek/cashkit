import 'package:cashkit/core/desgin/questions/question_btn.dart';
import 'package:cashkit/core/desgin/questions/questions_prog.dart';
import 'package:cashkit/screens/questions/q_three/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QuestionTwoScreen extends StatefulWidget {
  const QuestionTwoScreen({Key? key}) : super(key: key);

  @override
  State<QuestionTwoScreen> createState() => _QuestionTwoScreenState();
}

class _QuestionTwoScreenState extends State<QuestionTwoScreen> {
  int? selectIndex;
  List text = [
    "I rent",
    "I own",
    "Other",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 50),
            child: QuestionBTNScreen(
              onPrees: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => QuestionThreeScreen(),));
              },
              isSelected: selectIndex != null,
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
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                    size: 30.sp,
                  )),
              QuestionProg(
                widthProg: 80,
              )
            ],
          ),
          SizedBox(
            height: 48,
          ),
          Text(
            textAlign: TextAlign.center,
            'Tell us about your home',
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 16,
                color: Color(0xff292929)),
          ),
          SizedBox(
            height: 32.h,
          ),
          ...List.generate(
            text.length,
            (index) => InkWell(
              onTap: () {
                selectIndex = index;
                setState(() {});
              },
              child: Container(
                margin: EdgeInsets.only(bottom: 16),
                padding: EdgeInsets.only(left: 16, top: 16, bottom: 20),
                height: 60.h,
                width: 396.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color:
                        selectIndex == index ? Colors.white: Color(0xffEFEFEF),
                    border: Border.all(
                      color:  selectIndex == index ? Colors.white: Colors.grey,
                    )),
                child: Row(
                  children: [
                    Text(
                      text[index],
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
