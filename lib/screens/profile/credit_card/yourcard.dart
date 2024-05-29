import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class YourCardScreen extends StatelessWidget {
  const YourCardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffEFEFEF),
        elevation: 0,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        title: Text(
          "Add Card",
          style: TextStyle(
              fontWeight: FontWeight.w600, fontSize: 20, color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 16),
        children: [
          Text(
            "Transfer from",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.only(left: 12, right: 12),
            width: double.infinity.w,
            height: 56.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8), color: Colors.white),
            child: Row(
              children: [
                Image.asset("assets/images/mastercard.png"),
                SizedBox(
                  width: 8.w,
                ),
                Text(
                  "Master card",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                Spacer(),
                Icon(
                  Icons.arrow_drop_down,
                  size: 30,
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Card Detail",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.only(left: 12, right: 12),
            width: double.infinity.w,
            height: 56.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8), color: Colors.white),
            child: Row(
              children: [
                SizedBox(
                  width: 8.w,
                ),
                Text(
                  "1257 9786 9532 6009",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                Spacer(),
                Image.asset("assets/images/mastercard.png"),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 56.h,
                width: 150.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                ),
                child: Center(
                  child: Text("12/24",
                      style:
                      TextStyle(fontWeight: FontWeight.w500, fontSize: 16)),
                ),
              ),
              Container(
                height: 56.h,
                width: 150.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                ),
                child: Center(
                  child: Text("267",
                      style:
                      TextStyle(fontWeight: FontWeight.w500, fontSize: 16)),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.only(left: 12, right: 12),
            width: double.infinity.w,
            height: 56.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8), color: Colors.white),
            child: Row(
              children: [
                SizedBox(
                  width: 8.w,
                ),
                Text(
                  "Lena Adel",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Text(
            "Amount",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 16.h,
          ),
          Container(
            padding: EdgeInsets.only(left: 12, right: 12),
            width: double.infinity.w,
            height: 56.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8), color: Colors.white),
            child: Row(
              children: [
                SizedBox(
                  width: 8.w,
                ),
                Text(
                  "EGP 30000",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
