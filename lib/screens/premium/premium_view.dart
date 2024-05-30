import 'package:cashkit/screens/home/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../profile/view.dart';

class Premium extends StatelessWidget {
  const Premium({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: Text("Premium",style: TextStyle(fontSize: 20.sp,color: Color(0xff292929),fontWeight: FontWeight.w600))
          ,leading: InkWell(
          onTap:  (){
            Navigator.push(context,
                MaterialPageRoute(builder: (context) =>HomeScreen ()));
          },
          child: Icon(Icons.arrow_back_ios,color: Color(0xff292929),))),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Image.asset("assets/images/Frame 1000005172 (2).png",height: 200,width: 200),
            SizedBox(height: 30,),
            InkWell(
                onTap:  (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) =>ProfileScreen () )); //to credit page
                },
                child: Image.asset("assets/images/Frame Premium.png",))
          ],
        ),
      ),
    );
  }
}
