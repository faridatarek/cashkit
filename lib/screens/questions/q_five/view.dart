import 'package:cashkit/core/desgin/questions/question_btn.dart';
import 'package:cashkit/core/desgin/questions/questions_prog.dart';
import 'package:cashkit/screens/questions/saving/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QuestionFiveScreen extends StatefulWidget {
  const QuestionFiveScreen({Key? key}) : super(key: key);

  @override
  State<QuestionFiveScreen> createState() => _QuestionFiveScreenState();
}

class _QuestionFiveScreenState extends State<QuestionFiveScreen> {
  int? selectIndex;
  List images = [
    "assets/images/person.png",
    "assets/images/wedding-couple.png",
    "assets/images/divorce.png",
    "assets/images/funeral.png",
    "",
  ];
  List text = [
    "Single",
    "married",
    "Divorced",
    "Widowed",
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
                if (selectIndex == 1) {
                  showModalBottomSheet(
                    shape: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16)),
                    context: context,
                    builder: (context) => Container(
                      decoration: BoxDecoration(
                          color: const Color(0xffEFEFEF),
                          borderRadius: BorderRadius.circular(16)),
                      child: ListView(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        children: [
                          SizedBox(
                            height: 50.h,
                          ),
                          Text(
                            textAlign: TextAlign.center,
                            "Enter how many children do you have? ",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 45.h,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                boxShadow: [
                                  // ظل
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.2),
                                    // لون الظل
                                    offset: Offset(0.0, 5.0),
                                    // إزاحة الظل
                                    blurRadius: 10.0, // ضبابية الظل
                                  ),
                                ],
                                color: Colors.white,
                                border: Border.all(color: Colors.white)),
                            height: 60,
                            width: MediaQuery.of(context).size.width,
                            child: TextFormField(

                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 24),
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                hintText: "Number of children",
                                hintStyle: TextStyle(fontSize: 16),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 32.h,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SavingScreen(),
                                  ));
                            },
                            child: Text(
                              textAlign: TextAlign.center,
                              "I don’t have any children",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Theme.of(context).primaryColor),
                            ),
                          ),
                          SizedBox(height: 100.h,),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SavingScreen(),
                                  ));
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 12),
                              margin: EdgeInsets.only(left: 230),
                              height: 44.h,
                              width: 124.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Theme.of(context).primaryColor,
                                  border: Border.all(
                                    color: Color(0xffDCDCDC),
                                  )),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.arrow_forward,
                                    size: 14,
                                    color: Color(0xffDCDCDC),
                                  ),
                                  SizedBox(
                                    width: 4.w,
                                  ),
                                  Text(
                                    "Continue",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      color: Color(0xffDCDCDC),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                } else {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SavingScreen(),
                      ));
                }
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
                widthProg: 180,
              )
            ],
          ),
          SizedBox(
            height: 48,
          ),
          Text(
            textAlign: TextAlign.center,
            "What is your marital status ?",
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
