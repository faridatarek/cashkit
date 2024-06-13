import 'package:cashkit/core/desgin/btn.dart';
import 'package:cashkit/screens/Goals/Your_goal/view.dart';
import 'package:cashkit/screens/expenses/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/desgin/loading.dart';

class Test extends StatelessWidget {
  const Test({Key? key}) : super(key: key);

  get containerData => null;

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
                  Text("No goals yet",style: TextStyle(fontSize: 16.sp,color: Color(0xff292929),fontWeight: FontWeight.w600)),
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
          Container(

            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(

                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Top expenses",style: TextStyle(fontSize:17.sp,fontWeight: FontWeight.w600,color: Color(0xff292929))),
                        InkWell(
                            onTap: (){
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) =>Expenses ()));
                            },
                            child: Text("View all",style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w400,color: Color(0xff525252)))),
                      ],),
                    SizedBox(height: 5,),
                    Container(

                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(

                                color:Color(0xffEFEFEF),
                                borderRadius: BorderRadius.all(Radius.circular(4)), //border corner radius

                              ),
                              height:45.h,width:45.w,
                              child:Image.asset("assets/images/noto_house (2).png",) ,
                            ),
                            SizedBox(width:7.w,),
                            Container
                              ( height:80.h,width:239.w,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding:  EdgeInsets.only(top: 8.0.h),
                                    child: Row(

                                      children: [
                                        Text("Housing",style: TextStyle(fontSize:13.sp,fontWeight: FontWeight.w600,color: Color(0xff292929))),
                                        SizedBox(width:35.w,),
                                        Text("EGP 800 of EGP 1,000",style: TextStyle(fontSize: 10.sp,fontWeight: FontWeight.w400,color: Color(0xff525252))),
                                      ],),
                                  ),
                                  SizedBox(height:15,),
                                  LoadingProg(totalAmount:1000,spentAmount: 800,width: 240.w),
                                ],),
                            )
                          ],),
                      ),
                      margin: EdgeInsets.symmetric(vertical: 5,horizontal: 8),
                      width:360.w,
                      height:80.h,
                      decoration: BoxDecoration(

                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(8)), //border corner radius
                        boxShadow:[
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.4), //color of shadow

                            spreadRadius:1,
                            blurRadius:10,
                          ),

                        ],
                      ),),
                    SizedBox(height: 5,),

                    Container(

                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(

                                color:Color(0xffEFEFEF),
                                borderRadius: BorderRadius.all(Radius.circular(4)), //border corner radius

                              ),
                              height:45.h,width:45.w,
                              child:Image.asset("assets/images/emojione-v1_shopping-bags.png",) ,
                            ),
                            SizedBox(width:7.w,),
                            Container
                              ( height:80.h,width:239.w,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding:  EdgeInsets.only(top: 8.0.h),
                                    child: Row(

                                      children: [
                                        Text("Shopping",style: TextStyle(fontSize:13.sp,fontWeight: FontWeight.w600,color: Color(0xff292929))),
                                        SizedBox(width:35.w,),
                                        Text("EGP 300 of EGP 800",style: TextStyle(fontSize: 10.sp,fontWeight: FontWeight.w400,color: Color(0xff525252))),
                                      ],),
                                  ),
                                  SizedBox(height:15,),
                                  LoadingProg(totalAmount:800,spentAmount: 300,width: 240.w),
                                ],),
                            )
                          ],),
                      ),
                      margin: EdgeInsets.symmetric(vertical: 5,horizontal: 8),
                      width:360.w,
                      height:80.h,
                      decoration: BoxDecoration(

                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(8)), //border corner radius
                        boxShadow:[
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.4), //color of shadow

                            spreadRadius:1,
                            blurRadius:10,
                          ),

                        ],
                      ),),

                  ]),
            ),
            margin: EdgeInsets.symmetric(vertical: 5,horizontal:5.w),
            width:359.w,
            height:240.h,
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
         /* Container(
            height: 100.w,
            width: MediaQuery.of(context).size.width ,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                // physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) =>GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Your_goal (data: containerData[index]
                          ,onDelete:  () {

                          },),
                      ),
                    );
                  },
                  child:Container(

                    child: Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(

                              color:Color(0xffEFEFEF),
                              borderRadius: BorderRadius.all(Radius.circular(4)), //border corner radius

                            ),
                            height:45.h,width:35.w,
                            child:containerData[index].goalImg,
                          ),
                          SizedBox(width:9,),
                          Container
                            (

                            height:70,width:MediaQuery.of(context).size.width.w*0.45,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(" ${containerData[index].goalName}",style: TextStyle(fontSize:12.sp,fontWeight: FontWeight.w500,color: Color(0xff292929))),
                                    Spacer(),
                                    Icon(Icons.arrow_forward_ios,color: Color(0xff989898),size: 17,)
                                  ],
                                ),
                                SizedBox(height:7,),
                                Text(" ${containerData[index].spendFromTotal}",style: TextStyle(fontSize: 8.sp,fontWeight: FontWeight.w800,color: Color(0xff989899))),
                                SizedBox(height:7,),

                                Container(

                                  width: 140.w,
                                  //275.w
                                  height: 6.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(24.sp),
                                    color: Color(0xffEFEFEF),
                                  ),
                                  child: Align(
                                    alignment: AlignmentDirectional.centerStart,
                                    child: Container(
                                      width:150* (containerData[index].spendAmount/containerData[index].totalAmount).w,
                                      height: 6.h,
                                      decoration: BoxDecoration(
                                          gradient: LinearGradient(colors: [
                                            Color(0xffAFFE9C),
                                            Color(0xff047857).withOpacity(.6),
                                            Color(0xff005B3B).withOpacity(.8),

                                          ]),
                                          borderRadius: BorderRadius.circular(24.sp),
                                          color: Theme.of(context).primaryColor),
                                    ),
                                  ),
                                )
                              ],),

                          )
                        ],),
                    ),
                    margin: EdgeInsets.symmetric(vertical: 5,horizontal: 8),
                    width:206.w,
                    height:90.h,
                    decoration: BoxDecoration(

                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(8)), //border corner radius
                      boxShadow:[
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.4), //color of shadow

                          spreadRadius:1,
                          blurRadius:10,
                        ),

                      ],
                    ),),
                ),
                itemCount: containerData.length),
          ),*/
        ],
      ),
    );
  }
}
