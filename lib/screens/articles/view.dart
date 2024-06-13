import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ArticlesScreen extends StatelessWidget {
  const ArticlesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(
        children: [
          Image.asset(
            "assets/images/articles_image.png",
            width: 265.w,
            height: 288.h,
          ),
          SingleChildScrollView(

            child: Container(
              padding: EdgeInsets.all(21),
              width: double.infinity.w,
              height: 600.h,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40))),
              child: SingleChildScrollView(

                child: Column(

                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Learn how to budget",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 24.sp,
                          color: Colors.black),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        "Learning how to budget is an essential skill that few people learn in school. Health insurance, medical payments, grocery bills — the list goes on. Creating and sticking to a budget won’t eliminate your financial stress, but it will equip you with the tools to make better decisions.Knowing your financial priorities means you can start taking the necessary steps to achieve them. And with 66% of Americans reporting money as a common stressor in a recent survey by the American Psychological Association (APA), sticking to a budget is important to ensure you make decisions in line with those priorities. With a clear budget, you make decisions based on the information you have in front of you. Whether you’re trying to chip away at credit card debt or save to buy a home, knowing how to budget is the first step to meeting your financial goals. Getting into the practice of recording your month-to-month expenditures will help you see your habits more holistically.",
                        style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16.sp),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}