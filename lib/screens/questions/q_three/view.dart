import 'package:cashkit/core/desgin/questions/question_btn.dart';
import 'package:cashkit/core/desgin/questions/questions_prog.dart';
import 'package:cashkit/screens/questions/q_four/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QuestionThreeScreen extends StatefulWidget {
  const QuestionThreeScreen({Key? key}) : super(key: key);

  @override
  State<QuestionThreeScreen> createState() => _QuestionThreeScreenState();
}

class _QuestionThreeScreenState extends State<QuestionThreeScreen> {
  int? selectIndex;
  List images = [
    "assets/images/credit.png",
    "assets/images/house.png",
    "assets/images/car.png",
    "",
  ];
  List text = [
    "Credit Card",
    "House Loans",
    "Personal Loans",
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
                Navigator.push(context, MaterialPageRoute(builder: (context) => QuestionFourScreen(),));
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
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                    size: 30.sp,
                  )),
              QuestionProg(
                widthProg: 120,
              )
            ],
          ),
          SizedBox(
            height: 48,
          ),
          Text(
            textAlign: TextAlign.center,
            'Do you currently have any debt?',
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
                    color: selectIndex == index
                        ? Colors.white
                        : Color(0xffEFEFEF),
                    border: Border.all(
                      color:  selectIndex == index ? Colors.white: Colors.grey,
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
          SizedBox(
            height: 32.h,
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => QuestionFourScreen(),));
            },
            child: Center(
              child: Text(
                "I don’t currently have a debt",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Theme.of(context).primaryColor),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
