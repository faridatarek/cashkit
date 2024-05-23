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
        title: Text(
          "Your Budgets",
          style: TextStyle(
              fontSize: 24.sp,
              color: Theme.of(context).primaryColor,
              fontWeight: FontWeight.w600),
        ),
        bottom: ButtonsTabBar(
          height: 60,
          controller: _tabController,
          backgroundColor: Theme.of(context).primaryColor,
          unselectedBackgroundColor: Colors.white,
          unselectedLabelStyle: TextStyle(color: Colors.black),
          labelStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.w600,fontSize:14.sp),
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
                height: 50,
                width: 280,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Your needs", style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600, color: Color(0xff292929))),
                          Text("EGP 0 of EGP 3,000", style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w400, color: Color(0xff525252))),
                        ],
                      ),
                      SizedBox(height: 18.h),
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
            height: 65.h,
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
                height: 50,
                width: 280,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Your Wants", style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600, color: Color(0xff292929))),
                          Text("EGP 0 of EGP 2,000", style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w400, color: Color(0xff525252))),
                        ],
                      ),
                      SizedBox(height: 18.h),
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
            height: 65.h,
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
                height: 50,
                width: 280,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Your Emergency", style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600, color: Color(0xff292929))),
                          Text("EGP 0 of EGP 1,000", style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w400, color: Color(0xff525252))),
                        ],
                      ),
                      SizedBox(height: 18.h),
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
            height: 65.h,
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























