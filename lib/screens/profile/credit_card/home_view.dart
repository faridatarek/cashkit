import 'package:cashkit/screens/profile/credit_card/addcard_view.dart';
import 'package:cashkit/screens/profile/credit_card/yourcard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../view.dart';

class CreditHomeScreen extends StatelessWidget {
  const CreditHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List images = [
      "assets/images/credit1.png",
      "assets/images/credit2.png",
      "assets/images/credit3.png",
      "assets/images/credit1.png",
      "assets/images/credit2.png",
      "assets/images/credit3.png",
      "assets/images/credit1.png",
      "assets/images/credit2.png",
      "assets/images/credit3.png",
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffEFEFEF),
        elevation: 0,
        leading: InkWell(
          onTap: (){
            Navigator.pushReplacement(context,
              MaterialPageRoute(
                builder: (context) =>ProfileScreen(),
              ),
            );
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        title: Text(
          "Credit Card",
          style: TextStyle(
              fontWeight: FontWeight.w600, fontSize: 20, color: Colors.black),
        ),
        centerTitle: true,
      ),
      bottomNavigationBar: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AddCardScreen(),
              ));
        },
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          width: double.infinity.w,
          height: 56.h,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey, width: 2),
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.add_circle_outline,
                color: Colors.grey,
              ),
              SizedBox(
                width: 10.w,
              ),
              Text(
                "Add Card",
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w600,
                    fontSize: 16),
              )
            ],
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        children: [
          Text(
            "Your Cards",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          ...List.generate(
            images.length,
            (index) => Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => YourCardScreen(),
                        ));
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: Image.asset(images[index]),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
