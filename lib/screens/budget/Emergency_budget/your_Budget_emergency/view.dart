import 'package:cashkit/core/desgin/loading.dart';
import 'package:cashkit/screens/budget/Emergency_budget/mainCateg_emergency/view.dart';
import 'package:cashkit/screens/budget/budget_class.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class YourBudget_emergency extends StatefulWidget {
  final List<Budget> budgetList_emergency;
  const YourBudget_emergency({Key? key, required this.budgetList_emergency}) : super(key: key);

  @override
  State<YourBudget_emergency> createState() => _YourBudget_emergencyState();
}

class _YourBudget_emergencyState extends State<YourBudget_emergency> {
  double totalAmount_emergency = 1000;
  double spentAmount_emergency = 300;
  List<bool> _isCheckedList_emergency= [];
  List<Map<String, dynamic>> selectedSubcategories_emergency= [];
  void initState() {
    super.initState();
    // Initialize _isCheckedList with false values for each item in the selectedSubcategories list
    _isCheckedList_emergency = List.generate(widget.budgetList_emergency.length, (index) => false);

    super.initState();

    // Check if the new choice already exists in selectedSubcategories
    bool mainCategoryExists = selectedSubcategories_emergency.any((element) =>
    element['mainCategory'] == widget.budgetList_emergency.last.selectedCategory);

    if (mainCategoryExists) {
      // If the main category already exists, find its index in the list
      int index = selectedSubcategories_emergency.indexWhere((element) =>
      element['mainCategory'] == widget.budgetList_emergency.last.selectedCategory);
      // Add the new subcategory to the existing main category's list of subcategories
      selectedSubcategories_emergency[index]['subcategories'].add({
        'name': widget.budgetList_emergency.last.selectedSubcategory,
        'image': widget.budgetList_emergency.last.subCategoryimg,
        'amount': widget.budgetList_emergency.last.subAmount,
      });
    } else {
      // If the main category doesn't exist, add a new entry for it
      selectedSubcategories_emergency.add({
        'mainCategory': widget.budgetList_emergency.last.selectedCategory,
        'subcategories': [
          {
            'name': widget.budgetList_emergency.last.selectedSubcategory,
            'image': widget.budgetList_emergency.last.subCategoryimg,
            'amount': widget.budgetList_emergency.last.subAmount,
          }
        ],
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: widget.budgetList_emergency.map((budget) {
            int index = widget.budgetList_emergency.indexOf(budget); // Get the index of the current budget item
            return Padding(
              padding: EdgeInsets.only(
                  top: 15.h, left: 8.w, right: 6.w, bottom: 10.h),
              child: Container(
                child: Padding(
                  padding:  EdgeInsets.only(left: 10.0,right: 10,top: 20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xffEFEFEF),
                              borderRadius: BorderRadius.all(
                                  Radius.circular(25)), //border corner radius
                            ),

                            child: CircleAvatar(
                              child: budget.selectedimgCategory,
                              backgroundColor: Color(0xffEFEFEF),
                              radius: 27.r,
                            ),
                          ),
                          SizedBox(width:7.w),
                          Container(
                            height: 48.h,
                            width: 255.w,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding:  EdgeInsets.only(top:2.h),
                                  child: Row(
                                    children: [
                                      Text(
                                          budget.selectedCategory,
                                          style: TextStyle(
                                              fontSize: 13.sp,
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xff292929))),
                                      Spacer(),
                                      Text(
                                          "EGP ${spentAmount_emergency} of EGP ${budget.mainAmount.toStringAsFixed(2)}",
                                          style: TextStyle(
                                              fontSize: 9.sp,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xff525252))),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 12.h),
                                LoadingProg(
                                    totalAmount: budget.mainAmount,
                                    spentAmount: spentAmount_emergency,width: 295.w),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 18.h),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: selectedSubcategories_emergency.map((subcategory) {
                          return Container(

                            padding: EdgeInsets.only(right:5.h),
                            child: Row(
                              children: [
                                Checkbox(
                                  activeColor:Theme.of(context).primaryColor,

                                  shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)
                                  ),
                                  //checkColor: ,
                                  focusColor: Color(0xffCDCDCD) ,

                                  value: _isCheckedList_emergency[index],
                                  onChanged: (bool? value) {
                                    setState(() {
                                      _isCheckedList_emergency[index] = value ?? false;
                                      if (_isCheckedList_emergency[index]) {
                                        spentAmount_emergency = budget.mainAmount;
                                      } else {
                                        spentAmount_emergency = 300; // Reset spentAmount to its original value
                                      }
                                    });
                                  },
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xffEFEFEF),
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(25)),
                                  ),

                                  child: CircleAvatar(
                                    child: budget.subCategoryimg,
                                    backgroundColor: Color(0xffEFEFEF),
                                    radius: 25.r,
                                  ),
                                ),
                                SizedBox(width: 5),
                                Container(
                                  height: 48.h,
                                  width: 202.w,
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Row(

                                        children: [
                                          Text(
                                              budget.selectedSubcategory,
                                              style: TextStyle(
                                                  fontSize: 12.sp,
                                                  fontWeight: FontWeight.w600,
                                                  color: Color(0xff292929))),
                                          Spacer(),
                                          Text(
                                              "EGP ${_isCheckedList_emergency[index] ? budget.mainAmount.toString() : spentAmount_emergency.toString()} of EGP ${budget.mainAmount} ",
                                              style: TextStyle(
                                                  fontSize: 9.sp,
                                                  fontWeight: FontWeight.w400,
                                                  color: Color(0xff525252))),
                                        ],
                                      ),
                                      SizedBox(height: 12.h),
                                      LoadingProg(
                                          totalAmount: budget.mainAmount,
                                          spentAmount: spentAmount_emergency,width: 295.w),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                ),
                margin: EdgeInsets.symmetric(vertical: 5, horizontal: 3.w),
                height: 150.h,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                  BorderRadius.all(Radius.circular(8)), //border corner radius
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(
                          0.4), //color of shadow
                      spreadRadius: 1, //spread radius
                      blurRadius: 10, // blur radius
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
      floatingActionButton: Padding(
        padding:  EdgeInsets.only(left:30.0.w),
        child: SizedBox(
          width: double.infinity.w,
          height: 50.h,
          child: FloatingActionButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MainCateg_emergency()),
              );
            },
            child: Text(
              "Add new Expenses",
              style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
            ),
            backgroundColor: Theme.of(context).primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.r),
            ),
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
        ),
      ),
    );
  }
}