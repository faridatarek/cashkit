import 'package:cashkit/core/desgin/btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Test extends StatelessWidget {
  const Test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Column(
        children: [
          Container(

            child: Padding(
                padding: const EdgeInsets.all(9.0),
                child:Column(children: [
                  Image.asset("assets/images/No_Expens.png",width: 98.w,height: 98.h),
                  SizedBox(height: 5.h,),
                  Text("No expenses yet",style: TextStyle(fontSize: 16.sp,color: Color(0xff292929),fontWeight: FontWeight.w600)),
                  SizedBox(height: 5.h,),
                  Text("Let's create your budget",style: TextStyle(fontSize: 14.sp,color: Color(0xff656565),fontWeight: FontWeight.w400)),
                  SizedBox(height: 7.h,),
                  ElevatedButton(

                    onPressed: (){},
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(232.w, 40.h),

                        backgroundColor: Theme.of(context).primaryColor,
                        shape: RoundedRectangleBorder(

                          borderRadius: BorderRadius.circular(10.r),
                        )),
                    child: Text(
                      "Create  budget",
                      style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w700,color: Colors.white),
                    ),
                  ),
                ],)
            ),
            margin: EdgeInsets.symmetric(vertical: 5,horizontal: 8),
            width:MediaQuery.of(context).size.width.w,
            height:225.h,
            decoration: BoxDecoration(

              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(8)), //border corner radius
              boxShadow:[
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2), //color of shadow

                  spreadRadius:1,
                  blurRadius:10,
                ),

              ],
            ),),
          Container(

            child: Padding(
                padding: const EdgeInsets.all(9.0),
                child:Column(children: [
                  Image.asset("assets/images/NO_Goals.png",width: 98.w,height: 98.h),
                  SizedBox(height: 5.h,),
                  Text("No goals yett",style: TextStyle(fontSize: 16.sp,color: Color(0xff292929),fontWeight: FontWeight.w600)),
                  SizedBox(height: 5.h,),
                  Text("Let's create a new goal",style: TextStyle(fontSize: 14.sp,color: Color(0xff656565),fontWeight: FontWeight.w400)),
                  SizedBox(height: 7.h,),
                  ElevatedButton(

                    onPressed: (){},
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(232.w, 40.h),

                        backgroundColor: Theme.of(context).primaryColor,
                        shape: RoundedRectangleBorder(

                          borderRadius: BorderRadius.circular(10.r),
                        )),
                    child: Text(
                      "Create goal",
                      style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w700,color: Colors.white),
                    ),
                  ),
                ],)
            ),
            margin: EdgeInsets.symmetric(vertical: 5,horizontal: 8),
            width:MediaQuery.of(context).size.width.w,
            height:225.h,
            decoration: BoxDecoration(

              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(8)), //border corner radius
              boxShadow:[
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2), //color of shadow

                  spreadRadius:1, //spread radius
                  blurRadius:10, // blur radius
                  //changes position of shadow
                  //first paramerter of offset is left-right
                  //second parameter is top to down
                ),
                //you can set more BoxShadow() here
              ],
            ),),
        ],
      ),
    );
  }
}
