import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:cashkit/core/desgin/btn.dart';
import 'package:cashkit/screens/budget/Emergency_budget/mainCateg_emergency/view.dart';
import 'package:cashkit/screens/budget/Emergency_budget/your_Budget_emergency/view.dart';
import 'package:cashkit/screens/budget/budget_class.dart';
import 'package:cashkit/screens/budget/needs_budget/mainCateg_needs/view.dart';
import 'package:cashkit/screens/budget/needs_budget/your_Budget_needs/view.dart';
import 'package:cashkit/screens/budget/wants_budget/mainCateg_wants/view.dart';
import 'package:cashkit/screens/budget/wants_budget/your_Budget_wants/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TabBarScreen extends StatefulWidget {
  @override
  _TabBarScreenState createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEFEFEF),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leadingWidth: 200.w,
        leading:Padding(
          padding:  EdgeInsets.only(top:20.h,right: 10.w,left: 10.w),
          child: Text(
            "Your Budgets",
            style: TextStyle(
                fontSize: 18.sp,
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.w600),
          ),
        ) ,

        bottom: ButtonsTabBar(
          decoration: BoxDecoration(
          color:Theme.of(context).primaryColor ,
            boxShadow:[
  BoxShadow(
    color: Colors.grey.withOpacity(0.4), //color of shadow

    spreadRadius:1,
    blurRadius:10,
  ),

],),
          height: 60,borderWidth: 60.w,
          controller: _tabController,
        //  backgroundColor: Theme.of(context).primaryColor,
          unselectedBackgroundColor: Colors.white,
          unselectedLabelStyle: TextStyle(color:  Color(0xffBDBDBD)),
          labelStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.w600,fontSize:12.sp),
          tabs: [
            Tab(text: 'Needs (50%)'),
            Tab(text: 'Wants (30%)'),
            Tab(text: 'Emergency (20%)'),
          ],
          contentPadding: EdgeInsets.symmetric(horizontal:10.w, vertical:10),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          NeedsScreen(),
          WantsScreen(),
          EmergencyScreen(),
        ],
      ),
    );
  }
}

class NeedsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      onGenerateRoute: (settings) {
        Widget pageNeeds;
        if (budgetList_needs.isEmpty) {
          pageNeeds = NeedsTab();
        } else {
          pageNeeds = YourBudget_needs(budgetList_needs: [],);
        }
        return MaterialPageRoute(builder: (context) => pageNeeds);
      },
    );
  }
}

class WantsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      onGenerateRoute: (settings) {
        Widget pageWants;
        if (budgetList_wants.isEmpty) {
          pageWants = WantsTab();
        } else {
          pageWants = YourBudget_wants(budgetList_wants: [],);
        }
        return MaterialPageRoute(builder: (context) => pageWants);
      },
    );
  }
}

class EmergencyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      onGenerateRoute: (settings) {
        Widget pageEmergency;
        if (budgetList_emergency.isEmpty) {
          pageEmergency = EmergencyTab();
        } else {
          pageEmergency = YourBudget_emergency(budgetList_emergency: []);
        }
        return MaterialPageRoute(builder: (context) => pageEmergency);
      },
    );
  }
}

class NeedsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 8.0, left: 8, top: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                height: 50.h,
                width: 280.w,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Your Needs", style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500, color: Color(0xff292929))),
                          Text("EGP 0 of EGP 2,000", style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w400, color: Color(0xff525252))),
                        ],
                      ),
                      SizedBox(height: 15.h),
                      LinearProgressIndicator(

                        value: 0,
                        minHeight: 6.h,
                        color: Colors.black,
                        backgroundColor: Color(0xffEFEFEF),
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            margin: EdgeInsets.symmetric(vertical: 5, horizontal: 8),
            width: MediaQuery.of(context).size.width,
            height: 70.h,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(8)), // border corner radius
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.4), // color of shadow
                  spreadRadius: 1, // spread radius
                  blurRadius: 10, // blur radius
                ),
              ],
            ),
          ),
          Spacer(),
          Center(
            child: Column(
              children: [
                Image.asset("assets/images/NoBudget.png"),
                SizedBox(height: 35),
                BTN(text: ('Create a budget'), onPrees: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MainCateg_needs()),
                  );
                }),
              ],
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}

class WantsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 8.0, left: 8, top: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                height: 50.h,
                width: 280.w,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Your Wants", style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500, color: Color(0xff292929))),
                          Text("EGP 0 of EGP 1,200", style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w400, color: Color(0xff525252))),
                        ],
                      ),
                      SizedBox(height: 15.h),
                      LinearProgressIndicator(
                        value: 0,
                        minHeight: 6.h,
                        color: Colors.black,
                        backgroundColor: Color(0xffEFEFEF),
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            margin: EdgeInsets.symmetric(vertical: 5, horizontal: 8),
            width: MediaQuery.of(context).size.width,
            height: 70.h,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(8)), // border corner radius
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.4), // color of shadow
                  spreadRadius: 1, // spread radius
                  blurRadius: 10, // blur radius
                ),
              ],
            ),
          ),
          Spacer(),
          Center(
            child: Column(
              children: [
                Image.asset("assets/images/NoBudget.png"),
                SizedBox(height: 35),
                BTN(text: ('Create a budget'), onPrees: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MainCateg_wants()),
                  );
                }),
              ],
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}

class EmergencyTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 8.0, left: 8, top: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                height: 50.h,
                width: 280.w,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Your Emergency", style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500, color: Color(0xff292929))),
                          Text("EGP 0 of EGP 800", style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w400, color: Color(0xff525252))),
                        ],
                      ),
                      SizedBox(height: 15.h),
                      LinearProgressIndicator(
                        value: 0,
                        minHeight: 6.h,
                        color: Colors.black,
                        backgroundColor: Color(0xffEFEFEF),
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            margin: EdgeInsets.symmetric(vertical: 5, horizontal: 8),
            width: MediaQuery.of(context).size.width,
            height: 70.h,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(8)), // border corner radius
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.4), // color of shadow
                  spreadRadius: 1, // spread radius
                  blurRadius: 10, // blur radius
                ),
              ],
            ),
          ),
          Spacer(),
          Center(
            child: Column(
              children: [
                Image.asset("assets/images/NoBudget.png"),
                SizedBox(height: 35),
                BTN(text: ('Create a budget'), onPrees: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MainCateg_emergency()),
                  );
                }),
              ],
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}























