
import 'package:cashkit/screens/Goals/create_goals/view.dart';
import 'package:cashkit/screens/charts/view.dart';
import 'package:cashkit/screens/home/view.dart';
import 'package:cashkit/screens/profile/view.dart';
import 'package:cashkit/screens/tab_bar/view.dart';
import 'package:circle_nav_bar/circle_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({Key? key}) : super(key: key);

  @override

  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  List<Widget> PagesName = [
    HomeScreen(), TabBarScreen(), Creat_goals(), Charts_screen(),ProfileScreen ()
  ];
  int currentIndex = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar:

        CircleNavBar(
          iconCurve: Curves.bounceInOut,


          activeIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          activeIcons:  [

            Icon(Icons.home_outlined,color: Colors.white,size: 25),


            Center(child: Image.asset("assets/images/Group 71.png",width: 23.w,height: 23.h)),

            Icon(Icons.add ,color: Colors.white,size:33),
            Icon(Icons.stacked_bar_chart_outlined,color: Colors.white,size: 25),
            Icon(Icons.person_outline,color: Colors.white,size: 25 ),
          ],
          inactiveIcons:  [
            Padding(
              padding:  EdgeInsets.only(left:10.w,right: 6.w,top: 15.h),
              child: Column(

                children: [

                  Icon(Icons.home_outlined,color:Color(0xff989898),size: 23),
                  SizedBox(height: 5.h,),
                  Text("Home",style: TextStyle(color:Color(0xff989898),fontSize: 9.sp,fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            Padding( padding:  EdgeInsets.only(left:10.w,right: 6.w,top: 18.h),
              child: Column(
                children: [
                  Image.asset("assets/images/Group 20506.png",width: 20.w,height: 20.h),
               /*   Icon(Icons.wallet,color:Theme.of(context).primaryColor,size: 20),*/
                  SizedBox(height: 6.h,),
                  Text("Budget",style: TextStyle(color:Color(0xff989898),fontSize: 9.sp,fontWeight: FontWeight.bold)),

                ],
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(left:10.w,right: 6.w,top: 16.h),
              child: Column(
                children: [
                  Icon(Icons.add ,color:Color(0xff989898),size: 25),
                  SizedBox(height: 3.h,),
                  Text("Add Goal",style: TextStyle(color:Color(0xff989898),fontSize: 9.sp,fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(left:10.w,right: 6.w,top: 19.h),
              child: Column(
                children: [
                  Icon(Icons.stacked_bar_chart_outlined,color:Color(0xff989898),size: 20),
                  SizedBox(height: 5.h,),
                  Text("Statistics",style: TextStyle(color:Color(0xff989898),fontSize: 9.sp,fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(left:10.w,right: 10.w,top: 17.h),
              child: Column(
                children: [
                  Icon(Icons.person_outline,color:Color(0xff989898),size: 22 ),
                  SizedBox(height: 5.h,),
                  Text("Profile",style: TextStyle(color:Color(0xff989898),fontSize: 9.sp,fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          ],

          color: Colors.red,
          circleColor: Colors.red,
          height: 75,
          circleWidth: 60,

          // tabCurve: ,
          padding:  EdgeInsets.only(left: 10.w, right: 10.w, bottom: 20),
          cornerRadius: const BorderRadius.only(
            topLeft: Radius.circular(2),
            topRight: Radius.circular(2),
            bottomRight: Radius.circular(20),
            bottomLeft: Radius.circular(20),
          ),

          circleShadowColor: Color(0xff17875E),
          shadowColor:  Colors.grey.shade400,

          elevation: 10,
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [

              Colors.white,
              Colors.white70,

            ],
          ),
          circleGradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [  Color(0xff047857),
              Color(0xff17875E),
              Color(0xffAFFE9C)],
          ),
        ),
        body: Center(child: PagesName[currentIndex])
    );
  }
}
