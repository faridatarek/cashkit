import 'package:cashkit/core/desgin/questions/question_btn.dart';
import 'package:cashkit/core/desgin/questions/questions_prog.dart';
import 'package:cashkit/screens/questions/q_two/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QuestionOneScreen extends StatefulWidget {
  QuestionOneScreen({Key? key}) : super(key: key);

  @override
  State<QuestionOneScreen> createState() => _QuestionOneScreenState();
}

class _QuestionOneScreenState extends State<QuestionOneScreen> {
  int? selectIndex;

  List images = [
    "assets/images/emojione_shopping-cart.png",
    "assets/images/emojione_mobile-phone.png",
    "assets/images/pesonal_care.png",
    "assets/images/clothing.png",
    "",
  ];
  List text = [
    "Groceries",
    "Phones",
    "Personal Care",
    "Clothing",
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
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => QuestionTwoScreen(),
                    ));
              },
              isSelected: selectIndex != null,
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
        ],
      ),
      backgroundColor: Color(0xffEFEFEF),
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
                widthProg: 40,
              )
            ],
          ),
          SizedBox(
            height: 48,
          ),
          Text(
            textAlign: TextAlign.center,
            'Which of these do you spend money on ?',
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
                        selectIndex == index ? Colors.white : Color(0xffEFEFEF),
                    border: Border.all(
                      color: selectIndex == index ? Colors.white : Colors.grey,
                    )),
                child: Row(
                  children: [
                    images[index] != null && images[index].isNotEmpty
                        ? Image.asset(
                            images[index],
                            width: 24,
                            height: 24,
                          )
                        : SizedBox.shrink(),
                    SizedBox(
                      width: 8.w,
                    ),
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
