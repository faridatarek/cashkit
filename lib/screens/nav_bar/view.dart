
import 'package:cashkit/screens/Goals/create_goals/view.dart';
import 'package:cashkit/screens/charts/view.dart';
import 'package:cashkit/screens/home/view.dart';
import 'package:cashkit/screens/tab_bar/view.dart';
import 'package:circle_nav_bar/circle_nav_bar.dart';
import 'package:flutter/material.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({Key? key}) : super(key: key);

  @override

  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  List<Widget> PagesName = [
    HomeScreen(), TabBarScreen(), Creat_goals(), Charts_screen(),Charts_screen()
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
          activeIcons: const [

            Icon(Icons.home_outlined,color: Colors.white,size: 30),
            Icon(Icons.wallet,color: Colors.white,size: 30),
            Icon(Icons.add ,color: Colors.white,size: 30),
            Icon(Icons.stacked_bar_chart_outlined,color: Colors.white,size: 30),
            Icon(Icons.person_outline,color: Colors.white,size: 30 ),
          ],
          inactiveIcons: const [
            Text("Home",style: TextStyle(color:Color(0xff047857),fontSize: 15,fontWeight: FontWeight.bold)),
            Text("Budget",style: TextStyle(color:Color(0xff047857),fontSize: 15,fontWeight: FontWeight.bold)),
            Text("New",style: TextStyle(color:Color(0xff047857),fontSize: 15,fontWeight: FontWeight.bold)),
            Text("Statistics",style: TextStyle(color:Color(0xff047857),fontSize: 15,fontWeight: FontWeight.bold)),
            Text("Account",style: TextStyle(color:Color(0xff047857),fontSize: 15,fontWeight: FontWeight.bold)),
          ],
          color: Colors.red,
          circleColor: Colors.red,
          height: 75,
          circleWidth: 60,

          // tabCurve: ,
          padding: const EdgeInsets.only(left: 16, right: 16, bottom: 20),
          cornerRadius: const BorderRadius.only(
            topLeft: Radius.circular(2),
            topRight: Radius.circular(2),
            bottomRight: Radius.circular(35),
            bottomLeft: Radius.circular(35),
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
