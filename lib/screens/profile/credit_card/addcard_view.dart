import 'package:cashkit/screens/profile/credit_card/addmoney_view.dart';
import 'package:cashkit/screens/profile/credit_card/home_view.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddCardScreen extends StatefulWidget {
  const AddCardScreen({Key? key}) : super(key: key);

  @override
  State<AddCardScreen> createState() => _AddCardScreenState();
}

class _AddCardScreenState extends State<AddCardScreen> {
  final List<String> items = [
    "Master card",
    "VIP card",
  ];
  String? selectedValue;

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
           fontSize: 18.sp, color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 16),
        children: [
          Text(
            "Transfer from",
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal:3.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DropdownButtonHideUnderline(
                  child: DropdownButton2<String>(
                    isExpanded: true,
                    hint:  Row(
                      children: [
                        SizedBox(
                          width: 4,
                        ),
                        Expanded(
                          child: Text(
                            'Select Card',
                            style: TextStyle(
                              fontSize:14.sp,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                    items: items
                        .map((String item) => DropdownMenuItem<String>(
                              value: item,
                              child: Text(
                                item,
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ))
                        .toList(),
                    value: selectedValue,
                    onChanged: (value) {
                      setState(() {
                        selectedValue = value;
                      });
                    },
                    buttonStyleData: ButtonStyleData(
                      height: 50,
                      // width: double.infinity,
                      padding: const EdgeInsets.only(right: 14),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.r),
                        border: Border.all(
                          color: Colors.white,
                        ),
                        color: Colors.white,
                      ),
                      elevation: 2,
                    ),
                    iconStyleData: const IconStyleData(
                      icon: Icon(
                        Icons.arrow_drop_down_outlined,
                        size: 30,
                      ),
                      iconEnabledColor: Colors.black,
                      iconDisabledColor: Colors.grey,
                      openMenuIcon: Icon(
                        Icons.arrow_drop_up,
                        size: 30,
                      ),
                    ),
                    dropdownStyleData: DropdownStyleData(
                      maxHeight: 200,
                      // width: double.infinity,
                      // scrollPadding: EdgeInsets.symmetric(horizontal: 14),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14.r),
                        color: Colors.white,
                      ),
                      // offset: const Offset(, 0),

                      scrollbarTheme: ScrollbarThemeData(
                        radius: const Radius.circular(25),
                        thickness: MaterialStateProperty.all(6),
                        thumbVisibility: MaterialStateProperty.all(true),
                      ),
                    ),
                    menuItemStyleData: const MenuItemStyleData(
                      height: 40,
                      padding: EdgeInsets.only(left: 14, right: 14),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          Text(
            "Card Detail",
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Container(
            padding: EdgeInsets.only(left: 12, right: 12),
            width: double.infinity.w,
            height: 56.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8), color: Colors.white),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 52.h,
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                    label: Text("Card Number",style: TextStyle(fontSize:14.sp,fontWeight: FontWeight.w400,color: Color(0xff989898))),
                      border: InputBorder.none),
                    ),
                  ),
                ),
                Image.asset("assets/images/mastercard.png",width: 35.w,height: 25.h),
              ],
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.only(left: 10),
                width: 157.w,
                height: 52.h,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8.r)),
                child: Center(
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        label: Text("Expiry Date",style: TextStyle(fontSize:14.sp,fontWeight: FontWeight.w400,color: Color(0xff989898))),
                       border: InputBorder.none),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 10),
                width: 157.w,
                height: 52.h,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)),
                child: Center(
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        label: Text("VCC",style: TextStyle(fontSize:14.sp,fontWeight: FontWeight.w400,color: Color(0xff989898))),
                border: InputBorder.none),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height:15.h,
          ),
          Text(
            "Your Name(optional)",
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 12),
            padding: EdgeInsets.only(left: 12, right: 12),
            width: double.infinity.w,
            height: 52.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r), color: Colors.white),
            child: Row(
              children: [
                SizedBox(
                  width: 8.w,
                ),
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                        label: Text( "Card Holder",style: TextStyle(fontSize:14.sp,fontWeight: FontWeight.w400,color: Color(0xff989898))),
                        border: InputBorder.none),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 60,
          ),
          Padding(
            padding:  EdgeInsets.only(left:23.w),
            child: Row(

              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(8.r)),
                        fixedSize: Size(130.w, 45.h),
                        backgroundColor: Theme.of(context).primaryColor),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AddMoneyScreen(),
                          ));
                    },
                    child: Text(
                      "Save",
                      style: TextStyle(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    )),
                SizedBox(width: 18.w,),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(8.r)),
                        side: BorderSide(color: Theme.of(context).primaryColor),
                        fixedSize: Size(130.w, 45.h),
                        backgroundColor: Colors.white),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CreditHomeScreen(),
                          ));
                    },
                    child: Text(
                      "Cancel",
                      style: TextStyle(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w700,
                          color: Theme.of(context).primaryColor),
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
