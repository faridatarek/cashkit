import 'package:cashkit/core/desgin/loading.dart';
import 'package:cashkit/screens/budget/budget_class.dart';
import 'package:cashkit/screens/budget/wants_budget/mainCateg_wants/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class YourBudget_wants extends StatefulWidget {
  final List<Budget> budgetList_wants;
  const YourBudget_wants({Key? key, required this.budgetList_wants}) : super(key: key);

  @override
  State<YourBudget_wants> createState() => _YourBudget_wantsState();
}

class _YourBudget_wantsState extends State<YourBudget_wants> {
  double totalAmount_wants= 1000;
  double spentAmount_wants = 300;
  List<bool> _isCheckedList_wants = [];
  List<Map<String, dynamic>> selectedSubcategories_wants = [];
  void initState() {
    super.initState();
    // Initialize _isCheckedList with false values for each item in the selectedSubcategories list
    _isCheckedList_wants = List.generate(widget.budgetList_wants.length, (index) => false);

    super.initState();

    // Check if the new choice already exists in selectedSubcategories
    bool mainCategoryExists = selectedSubcategories_wants.any((element) =>
    element['mainCategory'] == widget.budgetList_wants.last.selectedCategory);

    if (mainCategoryExists) {
      // If the main category already exists, find its index in the list
      int index = selectedSubcategories_wants.indexWhere((element) =>
      element['mainCategory'] == widget.budgetList_wants.last.selectedCategory);
      // Add the new subcategory to the existing main category's list of subcategories
      selectedSubcategories_wants[index]['subcategories'].add({
        'name': widget.budgetList_wants.last.selectedSubcategory,
        'image': widget.budgetList_wants.last.subCategoryimg,
        'amount': widget.budgetList_wants.last.subAmount,
      });
    } else {
      // If the main category doesn't exist, add a new entry for it
      selectedSubcategories_wants.add({
        'mainCategory': widget.budgetList_wants.last.selectedCategory,
        'subcategories': [
          {
            'name': widget.budgetList_wants.last.selectedSubcategory,
            'image': widget.budgetList_wants.last.subCategoryimg,
            'amount': widget.budgetList_wants.last.subAmount,
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
          children: widget.budgetList_wants.map((budget) {
            int index = widget.budgetList_wants.indexOf(budget); // Get the index of the current budget item
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
                          SizedBox(width: 7.w),
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
                                          "EGP ${spentAmount_wants} of EGP ${budget.mainAmount.toStringAsFixed(2)}",
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
                                    spentAmount: spentAmount_wants,width: 295.w),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 18.h),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: selectedSubcategories_wants.map((subcategory) {
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

                                  value: _isCheckedList_wants[index],
                                  onChanged: (bool? value) {
                                    setState(() {
                                      _isCheckedList_wants[index] = value ?? false;
                                      if (_isCheckedList_wants[index]) {
                                        spentAmount_wants = budget.mainAmount;
                                      } else {
                                        spentAmount_wants = 300; // Reset spentAmount to its original value
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
                                              "EGP ${_isCheckedList_wants[index] ? budget.mainAmount.toString() : spentAmount_wants.toString()} of EGP ${budget.mainAmount}",
                                              style: TextStyle(
                                                  fontSize: 8.sp,
                                                  fontWeight: FontWeight.w400,
                                                  color: Color(0xff525252))),
                                        ],
                                      ),
                                      SizedBox(height: 15.h),
                                      LoadingProg(
                                          totalAmount: budget.mainAmount,
                                          spentAmount: spentAmount_wants,width: 328.w),
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
                MaterialPageRoute(builder: (context) => MainCateg_wants()),
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